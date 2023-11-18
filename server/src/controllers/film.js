import { pgClient } from "../pgClient.js";
import { generateGetFilmsSql } from "../utils/queries.js";

class FilmController {
  async get(req, res, next) {
    try {
      const { user_id, subsLanguage, audioLanguage, genres, filmName } =
        req.query;
      // console.log("user", user_id);
      // return res.status(200).send();
      const sql = generateGetFilmsSql({
        user_id,
        subsLanguage,
        audioLanguage,
        genres,
        filmName,
      });
      console.log(sql);
      const films = await pgClient.query(sql);
      return res.status(200).json(films.rows);
    } catch (error) {
      next(error);
    }
  }
}

export default new FilmController();
