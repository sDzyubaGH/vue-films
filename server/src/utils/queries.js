import { pgClient } from "../pgClient.js";

export async function getFilms(params) {
  console.log(params);
  const sql = generateGetFilmsSql(params);
  return pgClient.query(sql);
}

export function generateGetFilmsSql({
  user_id,
  subs_language_id,
  audio_language_id,
  genres,
  film_name,
  watch_count_sort,
}) {
  console.log(subs_language_id, audio_language_id);
  const filters = [];
  let sql = `SELECT
    film.film_id,
    film.film_name,
    COALESCE(w.watch_count, 0) as watch_count,
    film.rate,
    film.country_of_origin,
    film.age_limit,
    film.released_data,
    STRING_AGG(genre.g_name, ', ') as genres
FROM
    film
LEFT JOIN (
    SELECT film_id, COUNT(watch_id) as watch_count
    FROM watch
    GROUP BY film_id
) w ON film.film_id = w.film_id
LEFT JOIN film_genres ON film_genres.film_id = film.film_id
LEFT JOIN genre ON genre.genre_id = film_genres.genre_id`;

  if (user_id) {
    filters.push(
      `film.film_id IN (SELECT film_id FROM watch WHERE users_id = '${user_id}')`
    );
  }

  if (subs_language_id) {
    filters.push(
      `film.film_id IN (SELECT film_id FROM dubbed WHERE languages_id = '${subs_language_id}' AND subtitles = TRUE)`
    );
  }

  if (audio_language_id) {
    filters.push(
      `film.film_id IN (SELECT film_id FROM dubbed WHERE languages_id = '${audio_language_id}' AND audio = TRUE)`
    );
  }

  if (genres) {
    const genresArr = genres.split(",");
    const genresCondition = genresArr
      .map((genre) => `genre_id = '${genre}'`)
      .join(" OR ");
    filters.push(
      `film.film_id IN (SELECT film_id FROM film_genres WHERE ${genresCondition})`
    );
  }

  if (film_name) {
    filters.push(`film.film_name ILIKE '%${film_name}%'`);
  }

  if (filters.length > 0) {
    const whereClause = filters.join(" AND ");
    sql += ` WHERE ${whereClause}`;
  }

  sql += ` GROUP BY
  film.film_id,
  film.film_name,
  film.rate,
  film.country_of_origin,
  film.age_limit,
  film.released_data,
  w.watch_count`;

  if (watch_count_sort) sql += ` ORDER BY w.watch_count ${watch_count_sort}`;
  else sql += ` ORDER BY film.film_id ASC`;

  console.log(sql);

  return sql;
}

export async function getUsers() {
  return pgClient.query("SELECT users_id, login FROM users ORDER BY login");
}

export async function getLanguages() {
  return pgClient.query("SELECT * FROM languages ORDER BY lang_name");
}

export async function getGenres() {
  return pgClient.query("SELECT * FROM genre ORDER BY g_name");
}
