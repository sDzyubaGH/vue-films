--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: acting; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.acting (
    acting_id integer NOT NULL,
    film_id integer NOT NULL,
    actor_id integer NOT NULL
);


ALTER TABLE public.acting OWNER TO "user";

--
-- Name: acting_acting_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.acting_acting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acting_acting_id_seq OWNER TO "user";

--
-- Name: acting_acting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.acting_acting_id_seq OWNED BY public.acting.acting_id;


--
-- Name: actor; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.actor (
    actor_id integer NOT NULL,
    act_name character varying(30) NOT NULL
);


ALTER TABLE public.actor OWNER TO "user";

--
-- Name: actor_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.actor_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actor_actor_id_seq OWNER TO "user";

--
-- Name: actor_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.actor_actor_id_seq OWNED BY public.actor.actor_id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.category (
    c_name character varying(20) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.category OWNER TO "user";

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO "user";

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: chose; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.chose (
    chose_id integer NOT NULL,
    currency_id integer NOT NULL,
    sub_id integer NOT NULL
);


ALTER TABLE public.chose OWNER TO "user";

--
-- Name: chose_chose_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.chose_chose_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chose_chose_id_seq OWNER TO "user";

--
-- Name: chose_chose_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.chose_chose_id_seq OWNED BY public.chose.chose_id;


--
-- Name: currency; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.currency (
    currency_id integer NOT NULL,
    cur_name character varying(10) NOT NULL
);


ALTER TABLE public.currency OWNER TO "user";

--
-- Name: currency_currency_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.currency_currency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.currency_currency_id_seq OWNER TO "user";

--
-- Name: currency_currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.currency_currency_id_seq OWNED BY public.currency.currency_id;


--
-- Name: director; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.director (
    director_id integer NOT NULL,
    dir_name character varying(30) NOT NULL
);


ALTER TABLE public.director OWNER TO "user";

--
-- Name: director_awards; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.director_awards (
    director_awards_id integer NOT NULL,
    awards_name character varying(30) NOT NULL,
    award_year integer NOT NULL
);


ALTER TABLE public.director_awards OWNER TO "user";

--
-- Name: director_awards_director_awards_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.director_awards_director_awards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.director_awards_director_awards_id_seq OWNER TO "user";

--
-- Name: director_awards_director_awards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.director_awards_director_awards_id_seq OWNED BY public.director_awards.director_awards_id;


--
-- Name: director_director_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.director_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.director_director_id_seq OWNER TO "user";

--
-- Name: director_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.director_director_id_seq OWNED BY public.director.director_id;


--
-- Name: dubbed; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.dubbed (
    subtitles boolean NOT NULL,
    audio boolean NOT NULL,
    dubbed_id integer NOT NULL,
    languages_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.dubbed OWNER TO "user";

--
-- Name: dubbed_dubbed_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.dubbed_dubbed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dubbed_dubbed_id_seq OWNER TO "user";

--
-- Name: dubbed_dubbed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.dubbed_dubbed_id_seq OWNED BY public.dubbed.dubbed_id;


--
-- Name: film; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.film (
    film_id integer NOT NULL,
    rate numeric(3,1) NOT NULL,
    film_name character varying(64) NOT NULL,
    storyline character varying(1024) NOT NULL,
    age_limit character varying(10) NOT NULL,
    released_data date NOT NULL,
    country_of_origin character varying(256) NOT NULL,
    trailer character varying(512) NOT NULL
);


ALTER TABLE public.film OWNER TO "user";

--
-- Name: film_categories; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.film_categories (
    film_categories_id integer NOT NULL,
    category_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.film_categories OWNER TO "user";

--
-- Name: film_categories_film_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.film_categories_film_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_categories_film_categories_id_seq OWNER TO "user";

--
-- Name: film_categories_film_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.film_categories_film_categories_id_seq OWNED BY public.film_categories.film_categories_id;


--
-- Name: film_directors; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.film_directors (
    film_directors_id integer NOT NULL,
    director_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.film_directors OWNER TO "user";

--
-- Name: film_directors_film_directors_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.film_directors_film_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_directors_film_directors_id_seq OWNER TO "user";

--
-- Name: film_directors_film_directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.film_directors_film_directors_id_seq OWNED BY public.film_directors.film_directors_id;


--
-- Name: film_film_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.film_film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_film_id_seq OWNER TO "user";

--
-- Name: film_film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.film_film_id_seq OWNED BY public.film.film_id;


--
-- Name: film_genres; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.film_genres (
    film_genres_id integer NOT NULL,
    genre_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.film_genres OWNER TO "user";

--
-- Name: film_genres_film_genres_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.film_genres_film_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_genres_film_genres_id_seq OWNER TO "user";

--
-- Name: film_genres_film_genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.film_genres_film_genres_id_seq OWNED BY public.film_genres.film_genres_id;


--
-- Name: film_subs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.film_subs (
    film_subs_id integer NOT NULL,
    sub_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.film_subs OWNER TO "user";

--
-- Name: film_subs_film_subs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.film_subs_film_subs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_subs_film_subs_id_seq OWNER TO "user";

--
-- Name: film_subs_film_subs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.film_subs_film_subs_id_seq OWNED BY public.film_subs.film_subs_id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.genre (
    g_name character varying(20) NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.genre OWNER TO "user";

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO "user";

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: havingg; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.havingg (
    havingg_id integer NOT NULL,
    director_id integer NOT NULL,
    director_awards_id integer NOT NULL,
    year_ integer NOT NULL
);


ALTER TABLE public.havingg OWNER TO "user";

--
-- Name: havingg_havingg_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.havingg_havingg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.havingg_havingg_id_seq OWNER TO "user";

--
-- Name: havingg_havingg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.havingg_havingg_id_seq OWNED BY public.havingg.havingg_id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.languages (
    lang_name character varying(20) NOT NULL,
    languages_id integer NOT NULL
);


ALTER TABLE public.languages OWNER TO "user";

--
-- Name: languages_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.languages_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages_languages_id_seq OWNER TO "user";

--
-- Name: languages_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.languages_languages_id_seq OWNED BY public.languages.languages_id;


--
-- Name: play; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.play (
    play_id integer NOT NULL,
    video_resolution_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.play OWNER TO "user";

--
-- Name: play_play_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.play_play_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.play_play_id_seq OWNER TO "user";

--
-- Name: play_play_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.play_play_id_seq OWNED BY public.play.play_id;


--
-- Name: production_company; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.production_company (
    pc_name character varying(30) NOT NULL,
    production_company_id integer NOT NULL
);


ALTER TABLE public.production_company OWNER TO "user";

--
-- Name: production_company_production_company_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.production_company_production_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.production_company_production_company_id_seq OWNER TO "user";

--
-- Name: production_company_production_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.production_company_production_company_id_seq OWNED BY public.production_company.production_company_id;


--
-- Name: production_films; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.production_films (
    production_films_id integer NOT NULL,
    production_company_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.production_films OWNER TO "user";

--
-- Name: production_films_production_films_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.production_films_production_films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.production_films_production_films_id_seq OWNER TO "user";

--
-- Name: production_films_production_films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.production_films_production_films_id_seq OWNED BY public.production_films.production_films_id;


--
-- Name: rate_review; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.rate_review (
    rate_review_id integer NOT NULL,
    rrate integer NOT NULL,
    review_id integer NOT NULL,
    users_id integer NOT NULL
);


ALTER TABLE public.rate_review OWNER TO "user";

--
-- Name: rate_review_rate_review_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.rate_review_rate_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rate_review_rate_review_id_seq OWNER TO "user";

--
-- Name: rate_review_rate_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.rate_review_rate_review_id_seq OWNED BY public.rate_review.rate_review_id;


--
-- Name: review; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.review (
    summary character varying(500) NOT NULL,
    rate integer NOT NULL,
    review_id integer NOT NULL,
    date date NOT NULL,
    film_id integer NOT NULL,
    users_id integer NOT NULL
);


ALTER TABLE public.review OWNER TO "user";

--
-- Name: review_review_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.review_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_review_id_seq OWNER TO "user";

--
-- Name: review_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.review_review_id_seq OWNED BY public.review.review_id;


--
-- Name: sub; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.sub (
    sub_id integer NOT NULL,
    sub_last time without time zone NOT NULL,
    sub_name character varying NOT NULL
);


ALTER TABLE public.sub OWNER TO "user";

--
-- Name: sub_sub_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.sub_sub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_sub_id_seq OWNER TO "user";

--
-- Name: sub_sub_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.sub_sub_id_seq OWNED BY public.sub.sub_id;


--
-- Name: use; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.use (
    use_id integer NOT NULL,
    users_id integer NOT NULL,
    languages_id integer NOT NULL
);


ALTER TABLE public.use OWNER TO "user";

--
-- Name: use_use_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.use_use_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.use_use_id_seq OWNER TO "user";

--
-- Name: use_use_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.use_use_id_seq OWNED BY public.use.use_id;


--
-- Name: user_films; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_films (
    user_films_id integer NOT NULL,
    listname character varying(20) NOT NULL,
    film_id integer NOT NULL,
    users_id integer NOT NULL
);


ALTER TABLE public.user_films OWNER TO "user";

--
-- Name: user_films_user_films_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_films_user_films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_films_user_films_id_seq OWNER TO "user";

--
-- Name: user_films_user_films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_films_user_films_id_seq OWNED BY public.user_films.user_films_id;


--
-- Name: user_subs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_subs (
    start_date date NOT NULL,
    way_of_payment character varying(10) NOT NULL,
    auto_renewal boolean NOT NULL,
    end_date date NOT NULL,
    user_subs_id integer NOT NULL,
    users_id integer NOT NULL,
    sub_id integer NOT NULL
);


ALTER TABLE public.user_subs OWNER TO "user";

--
-- Name: user_subs_user_subs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_subs_user_subs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_subs_user_subs_id_seq OWNER TO "user";

--
-- Name: user_subs_user_subs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_subs_user_subs_id_seq OWNED BY public.user_subs.user_subs_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users (
    users_id integer NOT NULL,
    user_password character varying(64) NOT NULL,
    login character varying(32) NOT NULL,
    country character varying(64) NOT NULL,
    currency_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO "user";

--
-- Name: users_users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_users_id_seq OWNER TO "user";

--
-- Name: users_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.users_id;


--
-- Name: video_resolution; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.video_resolution (
    vr_name character varying(16) NOT NULL,
    video_resolution_id integer NOT NULL
);


ALTER TABLE public.video_resolution OWNER TO "user";

--
-- Name: video_resolution_video_resolution_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.video_resolution_video_resolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_resolution_video_resolution_id_seq OWNER TO "user";

--
-- Name: video_resolution_video_resolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.video_resolution_video_resolution_id_seq OWNED BY public.video_resolution.video_resolution_id;


--
-- Name: watch; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.watch (
    watch_id integer NOT NULL,
    users_id integer NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.watch OWNER TO "user";

--
-- Name: watch_watch_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.watch_watch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.watch_watch_id_seq OWNER TO "user";

--
-- Name: watch_watch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.watch_watch_id_seq OWNED BY public.watch.watch_id;


--
-- Name: acting acting_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.acting ALTER COLUMN acting_id SET DEFAULT nextval('public.acting_acting_id_seq'::regclass);


--
-- Name: actor actor_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.actor ALTER COLUMN actor_id SET DEFAULT nextval('public.actor_actor_id_seq'::regclass);


--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: chose chose_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.chose ALTER COLUMN chose_id SET DEFAULT nextval('public.chose_chose_id_seq'::regclass);


--
-- Name: currency currency_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.currency ALTER COLUMN currency_id SET DEFAULT nextval('public.currency_currency_id_seq'::regclass);


--
-- Name: director director_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.director ALTER COLUMN director_id SET DEFAULT nextval('public.director_director_id_seq'::regclass);


--
-- Name: director_awards director_awards_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.director_awards ALTER COLUMN director_awards_id SET DEFAULT nextval('public.director_awards_director_awards_id_seq'::regclass);


--
-- Name: dubbed dubbed_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.dubbed ALTER COLUMN dubbed_id SET DEFAULT nextval('public.dubbed_dubbed_id_seq'::regclass);


--
-- Name: film film_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film ALTER COLUMN film_id SET DEFAULT nextval('public.film_film_id_seq'::regclass);


--
-- Name: film_categories film_categories_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_categories ALTER COLUMN film_categories_id SET DEFAULT nextval('public.film_categories_film_categories_id_seq'::regclass);


--
-- Name: film_directors film_directors_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_directors ALTER COLUMN film_directors_id SET DEFAULT nextval('public.film_directors_film_directors_id_seq'::regclass);


--
-- Name: film_genres film_genres_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_genres ALTER COLUMN film_genres_id SET DEFAULT nextval('public.film_genres_film_genres_id_seq'::regclass);


--
-- Name: film_subs film_subs_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_subs ALTER COLUMN film_subs_id SET DEFAULT nextval('public.film_subs_film_subs_id_seq'::regclass);


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: havingg havingg_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.havingg ALTER COLUMN havingg_id SET DEFAULT nextval('public.havingg_havingg_id_seq'::regclass);


--
-- Name: languages languages_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.languages ALTER COLUMN languages_id SET DEFAULT nextval('public.languages_languages_id_seq'::regclass);


--
-- Name: play play_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.play ALTER COLUMN play_id SET DEFAULT nextval('public.play_play_id_seq'::regclass);


--
-- Name: production_company production_company_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_company ALTER COLUMN production_company_id SET DEFAULT nextval('public.production_company_production_company_id_seq'::regclass);


--
-- Name: production_films production_films_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_films ALTER COLUMN production_films_id SET DEFAULT nextval('public.production_films_production_films_id_seq'::regclass);


--
-- Name: rate_review rate_review_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.rate_review ALTER COLUMN rate_review_id SET DEFAULT nextval('public.rate_review_rate_review_id_seq'::regclass);


--
-- Name: review review_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.review ALTER COLUMN review_id SET DEFAULT nextval('public.review_review_id_seq'::regclass);


--
-- Name: sub sub_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.sub ALTER COLUMN sub_id SET DEFAULT nextval('public.sub_sub_id_seq'::regclass);


--
-- Name: use use_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.use ALTER COLUMN use_id SET DEFAULT nextval('public.use_use_id_seq'::regclass);


--
-- Name: user_films user_films_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_films ALTER COLUMN user_films_id SET DEFAULT nextval('public.user_films_user_films_id_seq'::regclass);


--
-- Name: user_subs user_subs_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_subs ALTER COLUMN user_subs_id SET DEFAULT nextval('public.user_subs_user_subs_id_seq'::regclass);


--
-- Name: users users_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users ALTER COLUMN users_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);


--
-- Name: video_resolution video_resolution_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.video_resolution ALTER COLUMN video_resolution_id SET DEFAULT nextval('public.video_resolution_video_resolution_id_seq'::regclass);


--
-- Name: watch watch_id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.watch ALTER COLUMN watch_id SET DEFAULT nextval('public.watch_watch_id_seq'::regclass);


--
-- Data for Name: acting; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.acting (acting_id, film_id, actor_id) FROM stdin;
0	13	88
1	86	72
2	70	64
3	71	29
4	36	71
5	55	84
6	28	67
7	47	80
8	60	19
9	5	83
10	6	48
11	52	15
12	9	90
13	83	39
14	84	4
15	75	35
16	40	77
17	25	34
18	85	48
19	45	12
20	37	8
21	56	21
22	22	28
23	66	71
24	59	32
25	78	45
26	24	74
27	70	41
28	43	87
29	49	18
30	82	15
31	55	61
32	47	57
33	18	30
34	77	85
35	29	45
36	69	81
37	75	12
38	60	32
39	25	11
40	10	31
41	22	5
42	54	74
43	73	87
44	66	48
45	85	61
46	45	25
47	43	64
48	89	31
49	68	8
50	35	60
51	13	78
52	99	81
53	71	19
54	36	61
55	82	28
56	68	93
57	48	35
58	58	85
59	77	98
60	75	25
61	61	90
62	21	54
63	8	84
64	39	71
65	44	37
66	10	44
67	56	11
68	3	5
69	22	18
70	20	94
71	13	55
72	4	86
73	79	0
74	23	99
75	97	48
76	17	25
77	36	38
78	28	34
79	7	11
80	47	47
81	88	85
82	99	94
83	9	57
84	50	58
85	29	35
86	7	96
87	40	44
88	33	5
89	30	79
90	50	94
91	91	95
92	73	77
93	74	42
94	34	6
95	85	51
96	24	41
97	36	15
98	67	39
99	59	35
100	65	78
101	37	96
102	71	9
103	57	74
104	16	73
105	9	34
106	69	48
107	48	25
108	80	57
109	92	68
110	50	71
111	54	41
112	27	87
113	73	54
114	20	48
115	66	15
116	97	2
117	2	30
118	22	8
119	35	27
120	95	78
121	1	34
122	66	51
123	67	16
124	53	81
125	86	29
126	72	94
127	36	28
128	55	41
129	47	37
130	46	78
131	65	91
132	77	65
133	68	96
134	42	44
135	15	90
136	7	86
137	8	51
138	26	99
139	93	9
140	11	56
141	85	5
142	42	80
143	2	7
144	66	28
145	52	93
146	72	71
147	51	48
148	64	67
149	24	31
150	89	11
151	1	47
152	88	52
153	34	81
154	99	61
155	65	68
156	69	38
157	80	47
158	40	11
159	92	58
160	58	65
161	30	46
162	91	62
163	82	93
164	8	64
165	94	67
166	54	31
167	30	82
168	4	30
169	95	68
170	96	33
171	99	38
172	72	84
173	45	67
174	64	80
175	16	40
176	56	76
177	3	70
178	36	18
179	22	83
180	28	14
181	77	19
182	98	78
183	90	74
184	80	60
185	8	41
186	54	8
187	81	25
188	0	37
189	20	15
190	11	46
191	71	97
192	96	10
193	13	12
194	10	86
195	16	17
196	35	30
197	87	77
198	47	4
199	53	84
200	45	80
201	56	89
202	61	24
203	19	27
204	98	91
205	63	70
206	91	52
207	83	48
208	29	77
209	40	86
210	20	28
211	11	59
212	39	41
213	32	2
214	72	38
215	23	33
216	83	84
217	43	11
218	84	49
219	41	87
220	52	96
221	53	61
222	25	79
223	85	93
224	56	66
225	61	1
226	26	43
227	67	81
228	46	58
229	70	86
230	0	27
231	20	5
232	11	36
233	12	1
234	30	49
235	23	10
236	82	96
237	75	57
238	21	86
239	40	99
240	96	0
241	52	73
242	12	37
243	44	69
244	45	34
245	64	47
246	10	76
247	92	2
248	37	66
249	98	45
250	58	9
251	49	40
252	61	14
253	67	94
254	83	38
255	48	80
256	21	63
257	60	54
258	11	49
259	72	28
260	4	10
261	84	39
262	43	1
263	41	77
264	87	44
265	74	74
266	46	12
267	64	60
268	38	8
269	76	34
270	49	17
271	59	67
272	79	45
273	97	93
274	70	76
275	50	18
276	82	50
277	55	96
278	19	30
279	71	77
280	63	73
281	29	80
282	41	54
283	60	67
284	6	96
285	53	28
286	93	64
287	22	40
288	66	83
289	67	48
290	46	25
291	79	22
292	24	86
293	3	63
294	16	82
295	49	30
296	90	31
297	36	60
298	61	4
299	47	69
300	19	7
301	11	3
302	30	16
303	91	32
304	63	50
305	28	92
306	29	57
307	48	70
308	40	66
309	6	73
310	44	36
311	2	39
312	62	90
313	22	17
314	73	99
315	34	28
316	12	89
317	86	38
318	32	67
319	51	80
320	97	47
321	98	12
322	2	75
323	89	43
324	99	93
325	78	70
326	79	35
327	71	31
328	89	79
329	91	9
330	42	4
331	55	86
332	83	5
333	29	34
334	75	1
335	94	14
336	40	43
337	5	85
338	11	16
339	44	13
340	58	97
341	84	6
342	21	66
343	8	96
344	87	11
345	33	40
346	93	54
347	45	14
348	37	10
349	2	52
350	3	17
351	67	38
352	13	67
353	32	80
354	78	47
355	4	98
356	98	25
357	1	92
358	7	23
359	48	24
360	40	20
361	5	62
362	91	22
363	75	14
364	61	79
365	94	27
366	80	92
367	81	57
368	27	86
369	33	17
370	52	30
371	64	4
372	34	18
373	67	15
374	12	79
375	39	96
376	31	92
377	51	70
378	23	88
379	98	2
380	96	78
381	88	74
382	26	13
383	79	25
384	24	89
385	70	56
386	90	34
387	63	17
388	76	99
389	29	24
390	26	98
391	5	75
392	6	40
393	92	80
394	44	3
395	10	10
396	61	92
397	81	70
398	33	30
399	19	95
400	93	44
401	11	91
402	45	4
403	31	69
404	51	47
405	4	88
406	79	2
407	76	76
408	92	57
409	58	64
410	63	30
411	29	37
412	61	69
413	27	76
414	19	72
415	30	81
416	10	23
417	62	70
418	0	95
419	66	40
420	59	1
421	23	78
422	51	60
423	70	10
424	55	30
425	1	59
426	34	93
427	5	29
428	79	15
429	37	98
430	58	41
431	82	20
432	29	14
433	48	27
434	21	10
435	40	23
436	26	88
437	60	1
438	18	84
439	92	70
440	10	0
441	69	86
442	62	47
443	66	17
444	85	30
445	32	24
446	4	42
447	23	55
448	51	37
449	35	29
450	88	41
451	12	82
452	53	83
453	16	52
454	57	53
455	90	1
456	77	31
457	88	77
458	48	4
459	92	47
460	57	89
461	68	98
462	80	72
463	54	20
464	91	87
465	54	56
466	0	85
467	74	34
468	20	63
469	66	30
470	12	59
471	86	8
472	13	24
473	4	55
474	44	91
475	53	60
476	97	17
477	64	69
478	10	98
479	89	13
480	35	42
481	36	7
482	55	20
483	34	83
484	5	19
485	37	88
486	57	66
487	76	79
488	49	62
489	68	75
490	15	69
491	21	0
492	80	49
493	40	13
494	27	43
495	6	20
496	71	86
497	91	64
498	8	66
499	0	62
500	93	24
501	84	61
502	75	92
503	95	70
504	96	35
505	1	26
506	59	4
507	57	43
508	34	96
509	80	26
510	67	93
511	46	70
512	69	53
513	61	49
514	81	27
515	26	91
516	54	10
517	20	17
518	93	1
519	39	30
520	71	99
521	83	73
522	43	0
523	94	82
524	95	47
525	1	3
526	12	49
527	52	85
528	4	45
529	45	46
530	72	63
531	56	55
532	68	29
533	86	83
534	97	92
535	98	57
536	49	52
537	50	17
538	42	13
539	15	59
540	55	95
541	7	55
542	18	64
543	39	7
544	63	72
545	82	85
546	42	49
547	29	79
548	48	92
549	54	23
550	0	52
551	41	53
552	20	30
553	52	62
554	4	22
555	32	4
556	96	25
557	1	16
558	88	21
559	34	50
560	53	63
561	25	81
562	46	24
563	97	69
564	2	97
565	77	11
566	15	36
567	18	41
568	38	56
569	70	88
570	30	15
571	42	26
572	82	62
573	0	29
574	71	89
575	91	67
576	83	63
577	21	88
578	41	66
579	34	27
580	16	9
581	3	39
582	49	6
583	68	19
584	14	48
585	46	37
586	86	73
587	78	69
588	90	43
589	42	3
590	61	16
591	7	45
592	47	81
593	67	96
594	19	19
595	30	28
596	63	62
597	9	91
598	75	36
599	48	82
600	0	42
601	53	17
602	10	55
603	34	40
604	66	72
605	86	50
606	32	79
607	38	10
608	51	92
609	57	23
610	98	24
611	2	87
612	7	22
613	67	73
614	78	82
615	79	47
616	98	60
617	30	5
618	71	43
619	90	56
620	29	46
621	5	97
622	52	29
623	31	6
624	72	7
625	63	75
626	29	82
627	33	52
628	52	65
629	93	66
630	25	48
631	65	4
632	10	68
633	51	69
634	76	13
635	68	9
636	13	79
637	38	23
638	71	20
639	61	6
640	8	0
641	48	36
642	94	3
643	59	82
644	19	9
645	11	5
646	30	18
647	91	34
648	9	81
649	75	26
650	95	4
651	41	33
652	60	46
653	44	38
654	62	92
655	14	15
656	25	61
657	93	79
658	67	27
659	12	91
660	32	69
661	4	87
662	24	65
663	49	9
664	35	74
665	7	12
666	91	11
667	82	42
668	83	7
669	92	92
670	10	22
671	8	98
672	54	65
673	33	42
674	73	78
675	93	56
676	85	52
677	3	19
678	67	40
679	86	53
680	70	45
681	16	74
682	17	39
683	90	23
684	76	88
685	36	52
686	28	48
687	38	98
688	17	75
689	58	76
690	9	71
691	29	49
692	80	94
693	52	32
694	25	15
695	39	62
696	30	93
697	56	2
698	74	56
699	66	52
700	12	81
701	86	30
702	59	13
703	4	77
704	32	59
705	70	22
706	98	4
707	16	51
708	89	35
709	16	87
710	36	65
711	77	66
712	80	71
713	60	13
714	5	77
715	92	82
716	10	12
717	42	81
718	62	59
719	74	33
720	66	29
721	39	75
722	12	58
723	86	7
724	45	6
725	32	36
726	11	93
727	35	41
728	65	69
729	16	64
730	17	29
731	28	38
732	29	3
733	9	61
734	81	49
735	54	32
736	27	78
737	85	19
738	42	94
739	2	21
740	43	22
741	95	69
742	0	97
743	74	46
744	12	71
745	97	29
746	64	81
747	84	96
748	43	58
749	28	15
750	88	66
751	38	65
752	17	42
753	63	9
754	76	91
755	15	81
756	80	61
757	60	3
758	39	29
759	30	60
760	10	2
761	61	84
762	73	58
763	0	74
764	93	36
765	12	48
766	30	96
767	4	44
768	97	6
769	16	18
770	95	82
771	96	47
772	88	43
773	59	16
774	72	98
775	45	81
776	64	94
777	17	19
778	6	9
779	38	78
780	57	91
781	49	87
782	90	88
783	15	94
784	73	35
785	18	99
786	93	13
787	20	29
788	85	9
789	51	16
790	23	34
791	95	59
792	96	24
793	41	88
794	0	87
795	87	55
796	52	97
797	53	62
798	99	29
799	72	75
800	13	26
801	32	39
802	78	6
803	65	36
804	35	44
805	76	45
806	22	74
807	28	5
808	55	22
809	87	91
810	45	94
811	92	26
812	37	90
813	98	69
814	50	29
815	8	32
816	81	16
817	27	45
818	79	92
819	11	37
820	71	88
821	31	15
822	91	66
823	62	39
824	54	35
825	94	71
826	11	73
827	85	22
828	52	74
829	13	3
830	12	38
831	84	63
832	95	72
833	25	93
834	65	49
835	38	32
836	56	80
837	58	10
838	49	41
839	68	54
840	69	19
841	14	83
842	61	15
843	67	95
844	92	39
845	58	46
846	81	29
847	54	12
848	27	58
849	73	25
850	94	48
851	19	54
852	8	45
853	39	32
854	31	28
855	4	11
856	84	40
857	95	49
858	88	10
859	33	74
860	34	39
861	44	83
862	45	48
863	65	26
864	77	0
865	68	31
866	46	49
867	38	45
868	97	94
869	89	90
870	49	54
871	14	96
872	15	61
873	7	57
874	81	6
875	27	35
876	79	82
877	11	27
878	30	40
879	63	74
880	23	1
881	48	94
882	94	61
883	87	22
884	60	68
885	20	32
886	52	64
887	44	60
888	32	6
889	23	37
890	64	38
891	72	42
892	35	11
893	34	52
894	44	96
895	37	57
896	49	31
897	77	13
898	68	44
899	14	73
900	80	18
901	18	43
902	19	8
903	63	51
904	91	33
905	82	64
906	95	3
907	0	31
908	39	22
909	95	39
910	41	68
911	34	29
912	52	77
913	53	42
914	93	78
915	44	73
916	64	51
917	37	34
918	57	12
919	49	8
920	15	15
921	79	36
922	89	80
923	90	45
924	55	87
925	61	18
926	0	8
927	19	21
928	71	68
929	63	64
930	82	77
931	48	84
932	44	50
933	64	28
934	2	53
935	22	31
936	74	78
937	66	74
938	86	52
939	37	47
940	38	12
941	49	21
942	14	63
943	55	64
944	1	93
945	18	33
946	78	84
947	30	7
948	90	58
949	17	74
950	75	15
951	48	61
952	94	28
953	40	57
954	11	30
955	6	64
956	81	94
957	25	50
958	44	63
959	85	64
960	37	24
961	56	37
962	51	71
963	3	31
964	14	40
965	7	1
966	26	14
967	67	52
968	97	74
969	24	90
970	35	99
971	36	64
972	7	37
973	19	11
974	71	58
975	17	87
976	69	97
977	75	28
978	61	93
979	21	57
980	40	70
981	87	2
982	72	22
983	44	40
984	37	1
985	13	58
986	78	38
987	79	3
988	70	34
989	16	63
990	55	54
991	15	18
992	1	83
993	7	14
994	48	15
995	67	65
996	59	61
997	70	70
998	71	35
999	16	99
1000	28	73
1001	52	21
1002	44	17
1003	50	97
1004	33	44
1005	34	9
1006	73	80
1007	25	40
1008	20	74
1009	45	18
1010	86	19
1011	85	54
1012	23	79
1013	2	56
1014	3	21
1015	35	53
1016	55	31
1017	1	60
1018	13	71
1019	59	38
1020	18	0
1021	79	16
1022	24	80
1023	98	29
1024	82	21
1025	68	86
1026	60	2
1027	92	71
1028	77	91
1029	42	70
1030	61	83
1031	80	96
1032	11	82
1033	10	37
1034	2	33
1035	22	11
1036	54	80
1037	4	79
1038	89	37
1039	17	18
1040	16	53
1041	55	44
1042	96	82
1043	1	73
1044	65	94
1045	57	90
1046	9	50
1047	68	99
1048	29	28
1049	81	38
1050	92	84
1051	52	11
1052	30	72
1053	91	88
1054	61	96
1055	8	90
1056	54	57
1057	81	74
1058	93	48
1059	11	95
1060	12	60
1061	31	73
1062	4	56
1063	51	51
1064	24	34
1065	70	1
1066	88	55
1067	53	97
1068	99	64
1069	5	20
1070	24	70
1071	70	37
1072	65	71
1073	16	66
1074	17	31
1075	90	15
1076	29	5
1077	40	14
1078	6	21
1079	38	90
1080	77	81
1081	50	64
1082	61	73
1083	80	86
1084	93	25
1085	66	8
1086	85	21
1087	23	46
1088	20	77
1089	66	44
1090	67	9
1091	33	96
1092	32	51
1093	89	27
1094	17	8
1095	36	21
1096	76	57
1097	28	17
1098	1	63
1099	99	77
1100	5	33
1101	38	67
1102	58	45
1103	76	93
1104	68	89
1105	69	54
1106	81	28
1107	73	24
1108	18	88
1109	30	62
1110	50	77
1111	91	78
1112	54	47
1113	4	46
1114	51	41
1115	97	8
1116	89	4
1117	16	20
1118	87	80
1119	34	74
1120	53	87
1121	92	15
1122	65	61
1123	57	57
1124	58	22
1125	76	70
1126	48	8
1127	61	27
1128	26	69
1129	18	65
1130	98	94
1131	42	50
1132	15	96
1133	48	93
1134	54	24
1135	74	2
1136	93	15
1137	85	11
1138	32	5
1139	4	23
1140	83	87
1141	35	10
1142	96	26
1143	33	86
1144	13	28
1145	99	31
1146	72	77
1147	64	73
1148	16	33
1149	56	69
1150	2	98
1151	28	7
1152	47	20
1153	46	61
1154	92	28
1155	78	93
1156	3	99
1157	68	79
1158	15	73
1159	62	5
1160	7	69
1161	54	1
1162	27	47
1163	0	30
1164	11	39
1165	31	17
1166	91	68
1167	54	37
1168	41	67
1169	74	15
1170	20	44
1171	12	40
1172	75	96
1173	55	1
1174	25	95
1175	64	86
1176	92	5
1177	57	47
1178	58	12
1179	76	60
1180	50	8
1181	61	17
1182	19	20
1183	71	67
1184	54	14
1185	73	27
1186	12	17
1187	4	13
1188	83	77
1189	84	42
1190	96	16
1191	88	12
1192	60	93
1193	33	76
1194	46	15
1195	37	46
1196	10	92
1197	57	24
1198	49	20
1199	15	27
1200	18	32
1201	70	79
1202	58	25
1203	61	30
1204	47	95
1205	48	60
1206	27	37
1207	18	68
1208	79	84
1209	30	42
1210	63	76
1211	23	3
1212	84	19
1213	48	96
1214	94	63
1215	40	92
1216	33	53
1217	52	66
1218	25	49
1219	45	27
1220	64	40
1221	16	0
1222	2	65
1223	22	43
1224	88	25
1225	74	90
1226	25	85
1227	86	64
1228	46	28
1229	32	93
1230	78	60
1231	57	37
1232	58	2
1233	69	11
1234	55	76
1235	80	20
1236	26	49
1237	18	45
1238	59	83
1239	90	70
1240	9	82
1241	29	60
1242	75	27
1243	60	47
1244	20	11
1245	12	7
1246	31	20
1247	23	16
1248	84	32
1249	10	46
1250	75	63
1251	21	92
1252	62	93
1253	33	66
1254	53	44
1255	99	11
1256	85	76
1257	10	82
1258	51	83
1259	68	23
1260	13	93
1261	18	22
1262	70	69
1263	98	51
1264	89	82
1265	90	47
1266	16	98
1267	36	76
1268	50	11
1269	47	85
1270	27	27
1271	19	23
1272	5	88
1273	6	53
1274	11	19
1275	92	93
1276	84	9
1277	87	14
1278	60	60
1279	33	43
1280	52	56
1281	72	34
1282	44	52
1283	37	13
1284	3	20
1285	22	33
1286	34	44
1287	86	54
1288	51	96
1289	57	27
1290	70	46
1291	3	56
1292	55	66
1293	27	4
1294	59	73
1295	30	9
1296	71	47
1297	91	25
1298	9	72
1299	77	90
1300	29	50
1301	21	46
1302	94	30
1303	80	95
1304	40	59
1305	44	29
1306	56	3
1307	54	79
1308	93	70
1309	32	60
1310	97	40
1311	98	5
1312	57	4
1313	68	13
1314	14	42
1315	96	81
1316	7	3
1317	13	83
1318	18	12
1319	98	41
1320	89	72
1321	60	14
1322	11	9
1323	69	99
1324	41	37
1325	73	69
1326	19	98
1327	52	46
1328	39	76
1329	37	3
1330	54	92
1331	14	19
1332	95	93
1333	74	70
1334	86	44
1335	59	27
1336	13	60
1337	51	86
1338	43	82
1339	71	1
1340	16	65
1341	36	43
1342	55	56
1343	7	16
1344	47	52
1345	59	63
1346	99	99
1347	63	33
1348	58	67
1349	91	15
1350	69	76
1351	61	72
1352	72	1
1353	44	19
1354	2	22
1355	62	73
1356	34	11
1357	25	42
1358	66	43
1359	12	72
1360	32	50
1361	51	63
1362	3	23
1363	89	26
1364	26	6
1365	99	76
1366	78	53
1367	70	49
1368	16	78
1369	17	43
1370	76	92
1371	9	39
1372	68	88
1373	40	26
1374	6	33
1375	61	85
1376	21	49
1377	81	63
1378	8	79
1379	54	46
1380	0	75
1381	73	59
1382	30	97
1383	31	62
1384	2	35
1385	84	74
1386	43	36
1387	54	82
1388	87	79
1389	20	89
1390	66	56
1391	72	99
1392	23	94
1393	70	26
1394	89	39
1395	17	20
1396	96	84
1397	28	29
1398	1	75
1399	48	7
1400	40	3
1401	17	56
1402	9	52
1403	50	53
1404	7	91
1405	93	14
1406	44	9
1407	10	16
1408	94	95
1409	0	88
1410	73	72
1411	20	66
1412	39	79
1413	31	75
1414	32	40
1415	24	36
1416	97	20
1417	43	49
1418	89	16
1419	70	3
1420	96	61
1421	55	23
1422	87	92
1423	88	57
1424	59	30
1425	5	22
1426	92	27
1427	71	4
1428	76	82
1429	81	17
1430	69	79
1431	8	69
1432	81	53
1433	73	49
1434	25	9
1435	39	56
1436	31	52
1437	32	17
1438	23	48
1439	24	13
1440	75	95
1441	1	29
1442	59	7
1443	99	43
1444	65	50
1445	16	45
1446	17	10
1447	35	58
1448	36	23
1449	77	24
1450	88	70
1451	99	79
1452	6	0
1453	92	40
1454	38	69
1455	57	82
1456	98	83
1457	68	91
1458	21	16
1459	7	81
1460	81	30
1461	80	65
1462	73	26
1463	12	52
1464	4	48
1465	44	84
1466	24	26
1467	84	77
1468	16	22
1469	43	39
1470	99	56
1471	5	12
1472	64	98
1473	50	20
1474	14	97
1475	61	29
1476	81	7
1477	26	71
1478	6	13
1479	38	82
1480	91	57
1481	48	95
1482	27	72
1483	20	33
1484	60	69
1485	12	29
1486	72	43
1487	23	38
1488	83	89
1489	87	59
1490	25	84
1491	99	33
1492	53	66
1493	57	36
1494	76	49
1495	77	14
1496	49	32
1497	26	48
1498	67	86
1499	46	63
1500	86	99
1501	37	94
1502	78	95
1503	50	33
1504	81	20
1505	54	3
1506	27	49
1507	79	96
1508	11	41
1509	75	62
1510	21	91
1511	96	5
1512	60	82
1513	33	65
1514	13	7
1515	32	20
1516	24	16
1517	10	81
1518	55	3
1519	88	37
1520	56	84
1521	58	14
1522	49	45
1523	22	91
1524	77	27
1525	69	23
1526	18	57
1527	59	95
1528	79	73
1529	42	42
1530	75	39
1531	40	81
1532	31	32
1533	72	33
1534	23	28
1535	95	53
1536	41	82
1537	88	14
1538	25	74
1539	93	92
1540	99	23
1541	85	88
1542	44	87
1543	64	65
1544	45	52
1545	10	94
1546	56	61
1547	38	13
1548	76	39
1549	3	55
1550	22	68
1551	18	34
1552	92	20
1553	78	85
1554	38	49
1555	98	63
1556	70	81
1557	82	55
1558	48	62
1559	81	10
1560	27	39
1561	20	0
1562	31	9
1563	63	78
1564	83	56
1565	21	81
1566	95	30
1567	40	94
1568	41	59
1569	52	68
1570	99	0
1571	24	6
1572	56	38
1573	2	67
1574	32	95
1575	78	62
1576	38	26
1577	58	4
1578	89	71
1579	15	42
1580	55	78
1581	7	38
1582	80	22
1583	70	94
1584	9	84
1585	40	71
1586	41	36
1587	20	13
1588	33	32
1589	56	15
1590	87	39
1591	54	91
1592	34	33
1593	93	82
1594	66	65
1595	99	13
1596	49	12
1597	89	48
1598	67	66
1599	86	79
1600	59	62
1601	70	71
1602	71	36
1603	17	65
1604	36	78
1605	83	10
1606	29	39
1607	47	87
1608	21	71
1609	81	85
1610	87	16
1611	73	81
1612	34	10
1613	44	54
1614	64	32
1615	37	15
1616	66	78
1617	67	43
1618	13	72
1619	78	52
1620	51	98
1621	24	81
1622	70	48
1623	97	65
1624	15	32
1625	1	97
1626	7	28
1627	47	64
1628	59	75
1629	19	2
1630	18	37
1631	79	53
1632	91	27
1633	77	92
1634	83	23
1635	82	58
1636	48	65
1637	33	22
1638	72	13
1639	2	34
1640	34	23
1641	25	54
1642	98	7
1643	3	35
1644	89	38
1645	15	9
1646	47	41
1647	78	65
1648	24	94
1649	17	55
1650	77	69
1651	83	0
1652	29	29
1653	94	9
1654	21	61
1655	62	62
1656	34	0
1657	93	49
1658	11	96
1659	86	10
1660	31	74
1661	10	51
1662	56	18
1663	22	25
1664	54	94
1665	14	21
1666	12	97
1667	13	62
1668	78	42
1669	79	7
1670	24	71
1671	43	84
1672	89	51
1673	16	67
1674	96	96
1675	28	41
1676	1	87
1677	47	54
1678	38	91
1679	69	78
1680	61	74
1681	41	16
1682	33	12
1683	52	25
1684	19	77
1685	54	71
1686	72	88
1687	32	52
1688	24	48
1689	67	46
1690	16	80
1691	57	81
1692	76	94
1693	77	59
1694	49	77
1695	68	90
1696	69	55
1697	48	32
1698	60	6
1699	92	75
1700	52	2
1701	2	1
1702	81	65
1703	0	77
1704	66	22
1705	39	68
1706	35	34
1707	95	85
1708	96	50
1709	55	12
1710	87	81
1711	67	23
1712	13	52
1713	16	57
1714	76	71
1715	68	67
1716	48	9
1717	40	5
1718	92	52
1719	65	98
1720	38	81
1721	44	11
1722	54	61
1723	95	62
1724	0	90
1725	20	68
1726	66	35
1727	86	13
1728	23	73
1729	64	74
1730	70	5
1731	35	47
1732	55	25
1733	46	62
1734	38	58
1735	57	71
1736	68	80
1737	29	9
1738	61	41
1739	7	70
1740	18	79
1741	38	94
1742	42	64
1743	8	71
1744	54	38
1745	94	74
1746	73	51
1747	74	16
1748	19	80
1749	60	81
1750	20	45
1751	12	41
1752	23	50
1753	84	66
1754	16	11
1755	87	71
1756	88	36
1757	67	13
1758	4	73
1759	45	74
1760	5	1
1761	37	70
1762	76	61
1763	22	90
1764	69	22
1765	80	31
1766	98	85
1767	77	62
1768	50	45
1769	61	54
1770	26	96
1771	18	92
1772	11	53
1773	23	27
1774	2	4
1775	84	43
1776	43	5
1777	83	78
1778	95	52
1779	96	17
1780	1	8
1781	60	94
1782	66	25
1783	12	54
1784	86	3
1785	53	55
1786	32	32
1787	24	28
1788	84	79
1789	16	24
1790	56	60
1791	76	38
1792	55	15
1793	47	11
1794	86	88
1795	65	65
1796	3	90
1797	89	93
1798	69	35
1799	14	99
1800	7	60
1801	71	81
1802	63	77
1803	83	55
1804	54	28
1805	0	57
1806	20	35
1807	31	44
1808	4	27
1809	83	91
1810	96	30
1811	99	35
1812	3	67
1813	28	11
1814	67	88
1815	46	65
1816	18	46
1817	92	32
1818	38	61
1819	98	75
1820	30	20
1821	70	93
1822	49	70
1823	42	31
1824	28	96
1825	8	38
1826	81	22
1827	18	82
1828	19	47
1829	12	8
1830	4	4
1831	83	68
1832	21	93
1833	95	42
1834	41	71
1835	72	58
1836	45	41
1837	56	50
1838	57	15
1839	76	28
1840	5	4
1841	77	29
1842	69	25
1843	26	63
1844	27	28
1845	18	59
1846	90	84
1847	9	96
1848	75	41
1849	0	47
1850	12	21
1851	43	8
1852	10	60
1853	75	77
1854	22	34
1855	41	84
1856	1	11
1857	88	16
1858	34	45
1859	25	76
1860	99	25
1861	93	94
1862	45	54
1863	65	32
1864	10	96
1865	97	64
1866	2	92
1867	3	57
1868	15	31
1869	71	48
1870	91	26
1871	36	90
1872	8	28
1873	73	8
1874	19	37
1875	71	84
1876	31	11
1877	21	83
1878	40	96
1879	33	57
1880	73	93
1881	52	70
1882	93	71
1883	25	53
1884	65	9
1885	16	4
1886	49	1
1887	14	43
1888	66	90
1889	26	17
1890	59	51
1891	32	97
1892	79	29
1893	89	73
1894	90	38
1895	16	89
1896	36	67
1897	82	34
1898	7	40
1899	0	1
1900	79	65
1901	5	79
1902	30	23
1903	17	90
1904	91	39
1905	84	0
1906	60	51
1907	33	34
1908	52	47
1909	2	46
1910	22	24
1911	88	6
1912	74	71
1913	34	35
1914	86	45
1915	78	41
1916	89	50
1917	68	27
1918	35	79
1919	14	56
1920	96	95
1921	59	64
1922	98	55
1923	83	12
1924	55	93
1925	47	89
1926	75	8
1927	8	18
1928	40	50
1929	0	14
1930	5	92
1931	11	23
1932	44	20
1933	9	99
1934	10	27
1935	21	73
1936	62	74
1937	87	18
1938	73	83
1939	34	12
1940	39	90
1941	97	31
1942	2	59
1943	3	24
1944	66	80
1945	13	74
1946	18	3
1947	59	41
1948	38	18
1949	79	19
1950	89	63
1951	17	44
1952	60	5
1953	92	74
1954	30	13
1955	69	90
1956	94	34
1957	80	99
1958	41	28
1959	6	70
1960	52	37
1961	72	15
1962	10	40
1963	73	96
1964	20	90
1965	13	51
1966	37	30
1967	32	64
1968	97	44
1969	98	9
1970	35	69
1971	96	85
1972	55	47
1973	1	76
1974	88	81
1975	67	58
1976	26	20
1977	13	87
1978	18	16
1979	79	32
1980	57	93
1981	36	70
1982	83	2
1983	21	27
1984	5	82
1985	50	90
1986	61	99
1987	81	77
1988	34	2
1989	11	98
1990	86	12
1991	56	20
1992	51	54
1993	2	49
1994	43	50
1995	89	17
1996	22	27
1997	35	46
1998	95	97
1999	1	53
2000	86	48
2001	99	67
2002	78	44
2003	65	74
2004	90	18
2005	9	30
2006	55	60
2007	28	43
2008	29	8
2009	88	94
2010	47	56
2011	6	24
2012	58	71
2013	63	37
2014	9	66
2015	69	80
2016	42	63
2017	62	41
2018	25	10
2019	93	28
2020	39	57
2021	85	24
2022	64	1
2023	31	53
2024	51	31
2025	2	26
2026	62	77
2027	4	72
2028	24	50
2029	97	34
2030	28	20
2031	1	66
2032	47	33
2033	99	80
2034	92	41
2035	49	79
2036	21	17
2037	80	66
2038	92	77
2039	93	5
2040	50	80
2041	91	81
2042	10	7
2043	81	67
2044	27	96
2045	73	63
2046	0	79
2047	20	57
2048	39	70
2049	12	53
2050	31	66
2051	24	27
2052	55	14
2053	1	43
2054	24	63
2055	77	38
2056	68	69
2057	14	98
2058	48	11
2059	5	49
2060	50	57
2061	62	31
2062	8	60
2063	81	44
2064	0	56
2065	74	5
2066	66	1
2067	11	65
2068	85	14
2069	31	43
2070	67	2
2071	23	75
2072	70	7
2073	43	53
2074	96	65
2075	1	56
2076	88	61
2077	45	99
2078	5	26
2079	65	77
2080	69	47
2081	21	7
2082	7	72
2083	27	50
2084	19	46
2085	50	70
2086	94	76
2087	19	82
2088	52	79
2089	32	21
2090	4	39
2091	16	13
2092	75	99
2093	35	26
2094	95	77
2095	55	4
2096	1	33
2097	16	49
2098	57	50
2099	14	88
2100	6	4
2101	59	96
2102	98	87
2103	15	89
2104	48	86
2105	73	30
2106	0	46
2107	93	8
2108	20	24
2109	30	68
2110	31	33
2111	91	84
2112	43	7
2113	35	3
2114	94	89
2115	95	54
2116	41	83
2117	87	50
2118	60	96
2119	88	15
2120	4	52
2121	44	88
2122	45	53
2123	65	31
2124	16	26
2125	76	40
2126	28	0
2127	14	65
2128	34	80
2129	5	16
2130	65	67
2131	37	85
2132	97	99
2133	58	28
2134	98	64
2135	77	41
2136	3	92
2137	50	24
2138	42	20
2139	19	36
2140	31	10
2141	23	6
2142	82	92
2143	83	57
2144	29	86
2145	74	8
2146	20	37
2147	12	33
2148	96	32
2149	41	96
2150	74	93
2151	25	88
2152	64	79
2153	38	27
2154	56	75
2155	97	76
2156	17	4
2157	58	5
2158	9	0
2159	69	14
2160	14	78
2161	15	43
2162	67	90
2163	19	13
2164	30	22
2165	17	89
2166	82	69
2167	28	98
2168	62	11
2169	54	7
2170	0	36
2171	19	49
2172	91	74
2173	23	19
2174	83	70
2175	96	9
2176	1	0
2177	88	5
2178	33	69
2179	34	34
2180	52	82
2181	53	47
2182	25	65
2183	65	21
2184	16	16
2185	14	55
2186	86	80
2187	37	75
2188	78	76
2189	38	40
2190	70	72
2191	89	85
2192	42	10
2193	61	23
2194	7	52
2195	8	17
2196	5	91
2197	79	77
2198	39	4
2199	31	0
2200	91	51
2201	82	82
2202	29	76
2203	75	43
2204	48	89
2205	95	21
2206	41	50
2207	53	24
2208	44	55
2209	4	19
2210	64	33
2211	10	62
2212	1	13
2213	88	18
2214	25	78
2215	66	79
2216	38	17
2217	57	30
2218	80	13
2219	7	29
2220	67	80
2221	18	38
2222	19	3
2223	79	54
2224	70	85
2225	90	63
2226	82	59
2227	28	88
2228	62	1
2229	8	30
2230	94	33
2231	60	40
2232	12	0
2233	31	13
2234	63	82
2235	84	25
2236	81	99
2237	73	95
2238	34	24
2239	33	59
2240	93	73
2241	52	72
2242	44	68
2243	31	98
2244	57	7
2245	49	3
2246	68	16
2247	15	10
2248	86	70
2249	92	1
2250	32	99
2251	59	53
2252	79	31
2253	71	27
2254	90	40
2255	42	0
2256	94	10
2257	19	16
2258	71	63
2259	17	92
2260	91	41
2261	58	93
2262	9	88
2263	29	66
2264	94	46
2265	95	11
2266	87	7
2267	52	49
2268	25	32
2269	53	14
2270	62	99
2271	93	86
2272	66	69
2273	85	82
2274	38	7
2275	78	43
2276	3	49
2277	49	16
2278	55	59
2279	1	88
2280	26	32
2281	13	99
2282	36	82
2283	77	83
2284	83	14
2285	47	91
2286	48	56
2287	21	39
2288	6	59
2289	92	99
2290	10	29
2291	42	98
2292	81	89
2293	34	14
2294	20	79
2295	66	46
2296	53	27
2297	86	24
2298	31	88
2299	65	1
2300	97	33
2301	2	61
2302	43	62
2303	76	10
2304	22	39
2305	55	36
2306	26	9
2307	86	60
2308	32	89
2309	79	21
2310	70	52
2311	43	98
2312	71	17
2313	90	30
2314	47	68
2315	48	33
2316	94	0
2317	40	29
2318	58	83
2319	50	79
2320	69	92
2321	81	66
2322	27	95
2323	85	36
2324	67	24
2325	12	88
2326	85	72
2327	70	29
2328	90	7
2329	35	71
2330	82	3
2331	47	45
2332	59	56
2333	99	92
2334	65	99
2335	63	26
2336	58	60
2337	83	4
2338	21	29
2339	40	42
2340	41	7
2341	81	43
2342	81	79
2343	0	91
2344	93	53
2345	25	35
2346	45	13
2347	86	14
2348	32	43
2349	78	10
2350	24	39
2351	35	48
2352	95	99
2353	59	33
2354	4	97
2355	45	98
2356	24	75
2357	17	36
2358	90	20
2359	76	85
2360	77	50
2361	9	32
2362	63	3
2363	82	16
2364	46	99
2365	41	20
2366	81	56
2367	54	39
2368	74	17
2369	19	81
2370	39	59
2371	2	28
2372	59	10
2373	32	56
2374	78	23
2375	97	36
2376	35	61
2377	76	62
2378	17	49
2379	57	85
2380	76	98
2381	49	81
2382	27	62
2383	73	29
2384	18	93
2385	50	82
2386	10	9
2387	83	79
2388	73	65
2389	19	94
2390	60	95
2391	85	39
2392	23	64
2393	43	42
2394	89	9
2395	87	85
2396	47	12
2397	59	23
2398	65	66
2399	17	26
2400	36	39
2401	3	91
2402	68	71
2403	26	74
2404	58	63
2405	98	99
2406	49	94
2407	74	7
2408	25	2
2409	66	3
2410	39	49
2411	12	32
2412	93	20
2413	32	10
2414	43	19
2415	95	66
2416	96	31
2417	87	62
2418	12	68
2419	13	33
2420	99	36
2421	32	46
2422	45	65
2423	4	64
2424	56	74
2425	36	16
2426	96	67
2427	68	48
2428	46	66
2429	65	79
2430	50	36
2431	42	32
2432	21	9
2433	81	23
2434	26	87
2435	73	19
2436	11	44
2437	30	57
2438	31	22
2439	91	73
2440	51	0
2441	83	69
2442	75	65
2443	95	43
2444	74	20
2445	13	10
2446	84	70
2447	1	35
2448	87	75
2449	92	10
2450	65	56
2451	64	91
2452	49	48
2453	27	29
2454	18	60
2455	38	75
2456	39	3
2457	98	89
2458	90	85
2459	62	23
2460	48	88
2461	0	48
2462	19	61
2463	12	22
2464	91	86
2465	75	78
2466	94	91
2467	95	56
2468	96	21
2469	87	52
2470	60	98
2471	88	17
2472	25	77
2473	45	55
2474	37	51
2475	56	64
2476	57	29
2477	2	93
2478	22	71
2479	5	18
2480	37	87
2481	38	52
2482	78	88
2483	89	97
2484	42	22
2485	7	64
2486	30	47
2487	90	98
2488	83	59
2489	75	55
2490	21	84
2491	40	97
2492	60	75
2493	33	58
2494	66	6
2495	32	13
2496	16	5
2497	56	41
2498	35	18
2499	68	15
2500	88	30
2501	34	59
2502	74	95
2503	66	91
2504	45	68
2505	86	69
2506	92	0
2507	37	64
2508	38	29
2509	65	46
2510	76	55
2511	77	20
2512	50	3
2513	69	16
2514	15	45
2515	7	41
2516	27	19
2517	18	50
2518	19	15
2519	70	97
2520	71	62
2521	42	35
2522	62	13
2523	8	42
2524	19	51
2525	20	16
2526	11	47
2527	4	8
2528	63	94
2529	84	37
2530	21	97
2531	95	46
2532	52	84
2533	44	80
2534	46	10
2535	65	23
2536	56	54
2537	14	57
2538	86	82
2539	92	13
2540	90	52
2541	50	16
2542	91	17
2543	82	48
2544	15	58
2545	28	77
2546	7	54
2547	81	3
2548	27	32
2549	18	63
2550	5	93
2551	31	2
2552	82	84
2553	48	91
2554	94	58
2555	60	65
2556	53	26
2557	64	35
2558	68	5
2559	14	34
2560	66	81
2561	32	88
2562	24	84
2563	98	33
2564	3	61
2565	89	64
2566	77	10
2567	55	71
2568	61	2
2569	80	15
2570	18	40
2571	90	65
2572	17	81
2573	63	48
2574	9	77
2575	28	90
2576	95	0
2577	41	29
2578	20	6
2579	52	38
2580	44	34
2581	64	12
2582	56	8
2583	54	84
2584	87	32
2585	33	61
2586	53	39
2587	45	35
2588	85	71
2589	46	0
2590	65	13
2591	97	45
2592	49	5
\.


--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.actor (actor_id, act_name) FROM stdin;
0	Curtis Frye
1	Anita Ward
2	Julie Smith
3	Kelly Koch
4	Jessica Anderson
5	Melanie Gray DVM
6	Stephanie Casey
7	Edward Hunt
8	Mary Blake
9	Henry Marshall
10	Jacob Kelley
11	Nicole Green
12	Katherine Ward
13	Jack Taylor
14	Todd Moreno
15	Kylie Anderson
16	Shelby Small
17	Dana Lowery
18	Sheila Osborne
19	Shannon Mcintyre
20	Travis Webster
21	Mary Marshall
22	Anna Gomez
23	Brian Smith
24	Sharon Martinez
25	Kristen Moore
26	Nancy Pena
27	Connie Caldwell
28	Thomas Smith
29	Scott Cole
30	David Anderson
31	Joseph Murray
32	Casey White
33	Travis Ellis
34	Todd Watts
35	Greg Johnson
36	Matthew Flores
37	Jesus Rodriguez
38	Edwin Frey
39	Elizabeth Mueller
40	Kristy Spencer
41	Mr. Ryan Flores
42	Allison Lindsey
43	Susan Long
44	Frank Bennett
45	Katie Hernandez
46	Thomas Cooper
47	Jordan Davis
48	Bonnie Foster
49	Karen Parsons
50	William Kelly
51	Brianna Knight
52	Angie Cohen
53	Donna Wilson
54	Miranda Hernandez
55	Joshua Wu
56	Victoria Valencia
57	Samantha Boyd
58	Robert Kelley
59	William Williams
60	Amanda Cox
61	Gerald Washington
62	Rachel Mathews
63	Dr. Julia Mcmahon
64	Ariana Gaines
65	William Curtis
66	Pamela Gray
67	Brandon Contreras
68	Jessica Gibson
69	Stephanie Avila
70	Larry Smith
71	Aaron Thompson
72	Luis Booker
73	Amanda Ford
74	Michele Peterson
75	Laura Watkins
76	Daniel Barber
77	Thomas Miller
78	Amber Marquez
79	Marissa Macdonald
80	Jason Mccall
81	Corey Cunningham
82	Mr. Michael Torres Jr.
83	Lauren Blanchard
84	Tyler Jones
85	Carol Molina
86	Leslie Johnson
87	Gabriel Armstrong
88	John Castro
89	Jose Brown
90	Nicholas Gray
91	Mrs. Kathleen Mcintyre
92	Jeffrey Cook
93	Scott Coffey
94	Joseph Bishop
95	Marie Salinas
96	Briana Jones
97	Frank Woods
98	Tyler Swanson
99	Randall Ayala
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.category (c_name, category_id) FROM stdin;
feature film	0
short film	1
series	2
\.


--
-- Data for Name: chose; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.chose (chose_id, currency_id, sub_id) FROM stdin;
0	67	1
1	82	42
2	91	36
3	8	47
4	9	19
5	92	14
6	60	59
7	48	37
8	33	16
9	72	81
10	22	60
11	37	33
12	74	84
13	86	52
14	88	12
15	17	28
16	88	72
17	1	66
18	59	68
19	40	0
20	92	12
21	75	19
22	61	99
23	69	2
24	10	94
25	85	38
26	45	54
27	66	55
28	23	21
29	98	64
30	32	79
31	31	27
32	43	76
33	96	87
34	59	99
35	71	93
36	71	66
37	9	80
38	40	77
39	2	99
40	62	28
41	73	6
42	73	2
43	0	69
44	43	59
45	96	32
46	96	0
47	86	64
48	36	6
49	79	5
50	89	18
51	92	89
52	48	66
53	28	28
54	15	6
55	63	33
56	25	79
57	52	46
58	73	24
59	39	79
60	93	58
61	85	35
62	54	36
63	23	51
64	14	41
65	3	56
66	12	99
67	53	27
68	82	73
69	71	3
70	65	47
71	69	96
72	38	63
73	69	65
74	31	61
75	51	75
76	14	78
77	86	36
78	66	16
79	55	74
80	13	94
81	88	95
82	79	4
83	5	0
84	38	42
85	29	87
86	63	63
87	81	90
88	93	64
89	15	95
90	19	38
91	91	84
92	11	14
93	27	74
94	32	30
95	12	26
96	23	6
97	16	80
98	1	7
99	34	87
\.


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.currency (currency_id, cur_name) FROM stdin;
0	GBP
1	RWF
2	MRO
3	ISK
4	CUC
5	TJS
6	TND
7	SGD
8	RWF
9	FKP
10	SCR
11	KZT
12	MZN
13	XCD
14	DZD
15	ARS
16	HRK
17	RON
18	BTN
19	EGP
20	TRY
21	SCR
22	TVD
23	MYR
24	SDG
25	GYD
26	LBP
27	BOB
28	CVE
29	BAM
30	IQD
31	TJS
32	SZL
33	VUV
34	LAK
35	BRL
36	RSD
37	EGP
38	SCR
39	ETB
40	GTQ
41	IDR
42	BRL
43	CUP
44	SAR
45	BBD
46	GIP
47	TWD
48	AMD
49	INR
50	PLN
51	AUD
52	TVD
53	PKR
54	TTD
55	KGS
56	AOA
57	SRD
58	AOA
59	JOD
60	ARS
61	AUD
62	CZK
63	BHD
64	CUP
65	LAK
66	KGS
67	MMK
68	BAM
69	TTD
70	TZS
71	TTD
72	OMR
73	EGP
74	AFN
75	ZWD
76	PHP
77	NZD
78	BMD
79	INR
80	BOB
81	SDG
82	SVC
83	JMD
84	JMD
85	ARS
86	IDR
87	FJD
88	LYD
89	PYG
90	BYR
91	WST
92	RSD
93	STD
94	KWD
95	TZS
96	SBD
97	BAM
98	AUD
99	UYU
\.


--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.director (director_id, dir_name) FROM stdin;
0	Glenda Wright
1	Eric Fowler
2	Todd Johnson
3	Emily Diaz
4	Rebecca Brooks
5	Jennifer Walker
6	Susan Rodriguez
7	Karen Duncan
8	Matthew Jimenez
9	Teresa Larsen
10	Joseph Harris
11	Michelle Todd
12	Derek Anderson
13	Veronica Campbell
14	Michelle Johnson
15	Christopher Barker
16	Alexander Frederick
17	Michael Stokes
18	Lauren Rivers
19	Martin Alvarez MD
20	Stephen Green
21	Jasmine Jenkins
22	Kevin Martinez
23	Jeffrey Young Jr.
24	Miguel Farrell
25	Paul Wagner
26	James Alvarado
27	Benjamin King
28	Heidi Smith
29	Daniel Jones
30	Patrick Morgan
31	Sabrina White
32	Emily Smith
33	Melissa Burton
34	Kelly Thomas
35	Thomas Guerra
36	Jeffrey Rodriguez
37	Sara Walker
38	Diana Hicks
39	Anthony Lester
40	Tanner Berger
41	George Adams
42	Breanna Herrera
43	Daniel Calderon
44	Jade Hudson
45	Thomas Dennis
46	Eric Waller
47	Jason Russell
48	Angela Glover
49	Jennifer Roberts
50	Howard Williams
51	Allison Smith
52	Sarah Wallace
53	Michael Allen MD
54	Michael Byrd
55	Derek Campos
56	Wendy Willis
57	Mr. Adrian Campbell
58	Brittany Willis
59	Lori Rangel
60	James Cooley
61	William Davis
62	Tracy Palmer
63	Stacy Allison
64	Jake Ramirez
65	Sharon Bruce
66	Donna Powell
67	Karen Singh
68	Samantha Wiggins
69	Jennifer Ruiz
70	John Washington
71	Laurie Pearson
72	Michael Gonzalez
73	Michael Avila
74	Collin Mccoy
75	Aaron Davis
76	Danielle Taylor
77	Richard Brown
78	Robert Carpenter
79	Nicole Cook
80	Rachel Brown
81	Brian Griffin
82	Stephanie Myers
83	Daniel Wheeler
84	Adrian Allen
85	Wesley Adkins
86	Thomas Smith
87	Mary Sellers
88	Erika Ritter
89	Don Thomas
90	Autumn Kelly
91	Theresa Andrews
92	Max Hahn
93	Alexander Johnson
94	Hannah Lamb
95	Carolyn Roberts
96	Michael Wilson
97	Stephen Schneider
98	Jordan Bradley
99	Daniel Norman
\.


--
-- Data for Name: director_awards; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.director_awards (director_awards_id, awards_name, award_year) FROM stdin;
0	Oscar	1975
1	BAFTA	1975
2	Golden Globe	1975
3	Oscar	1976
4	BAFTA	1976
5	Golden Globe	1976
6	Oscar	1977
7	BAFTA	1977
8	Golden Globe	1977
9	Oscar	1978
10	BAFTA	1978
11	Golden Globe	1978
12	Oscar	1979
13	BAFTA	1979
14	Golden Globe	1979
15	Oscar	1980
16	BAFTA	1980
17	Golden Globe	1980
18	Oscar	1981
19	BAFTA	1981
20	Golden Globe	1981
21	Oscar	1982
22	BAFTA	1982
23	Golden Globe	1982
24	Oscar	1983
25	BAFTA	1983
26	Golden Globe	1983
27	Oscar	1984
28	BAFTA	1984
29	Golden Globe	1984
30	Oscar	1985
31	BAFTA	1985
32	Golden Globe	1985
33	Oscar	1986
34	BAFTA	1986
35	Golden Globe	1986
36	Oscar	1987
37	BAFTA	1987
38	Golden Globe	1987
39	Oscar	1988
40	BAFTA	1988
41	Golden Globe	1988
42	Oscar	1989
43	BAFTA	1989
44	Golden Globe	1989
45	Oscar	1990
46	BAFTA	1990
47	Golden Globe	1990
48	Oscar	1991
49	BAFTA	1991
50	Golden Globe	1991
51	Oscar	1992
52	BAFTA	1992
53	Golden Globe	1992
54	Oscar	1993
55	BAFTA	1993
56	Golden Globe	1993
57	Oscar	1994
58	BAFTA	1994
59	Golden Globe	1994
60	Oscar	1995
61	BAFTA	1995
62	Golden Globe	1995
63	Oscar	1996
64	BAFTA	1996
65	Golden Globe	1996
66	Oscar	1997
67	BAFTA	1997
68	Golden Globe	1997
69	Oscar	1998
70	BAFTA	1998
71	Golden Globe	1998
72	Oscar	1999
73	BAFTA	1999
74	Golden Globe	1999
75	Oscar	2000
76	BAFTA	2000
77	Golden Globe	2000
78	Oscar	2001
79	BAFTA	2001
80	Golden Globe	2001
81	Oscar	2002
82	BAFTA	2002
83	Golden Globe	2002
84	Oscar	2003
85	BAFTA	2003
86	Golden Globe	2003
87	Oscar	2004
88	BAFTA	2004
89	Golden Globe	2004
90	Oscar	2005
91	BAFTA	2005
92	Golden Globe	2005
93	Oscar	2006
94	BAFTA	2006
95	Golden Globe	2006
96	Oscar	2007
97	BAFTA	2007
98	Golden Globe	2007
99	Oscar	2008
100	BAFTA	2008
101	Golden Globe	2008
102	Oscar	2009
103	BAFTA	2009
104	Golden Globe	2009
105	Oscar	2010
106	BAFTA	2010
107	Golden Globe	2010
108	Oscar	2011
109	BAFTA	2011
110	Golden Globe	2011
111	Oscar	2012
112	BAFTA	2012
113	Golden Globe	2012
114	Oscar	2013
115	BAFTA	2013
116	Golden Globe	2013
117	Oscar	2014
118	BAFTA	2014
119	Golden Globe	2014
120	Oscar	2015
121	BAFTA	2015
122	Golden Globe	2015
123	Oscar	2016
124	BAFTA	2016
125	Golden Globe	2016
126	Oscar	2017
127	BAFTA	2017
128	Golden Globe	2017
129	Oscar	2018
130	BAFTA	2018
131	Golden Globe	2018
132	Oscar	2019
133	BAFTA	2019
134	Golden Globe	2019
135	Oscar	2020
136	BAFTA	2020
137	Golden Globe	2020
138	Oscar	2021
139	BAFTA	2021
140	Golden Globe	2021
\.


--
-- Data for Name: dubbed; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.dubbed (subtitles, audio, dubbed_id, languages_id, film_id) FROM stdin;
f	t	0	78	72
f	t	1	35	20
t	t	2	55	33
t	t	3	18	29
t	t	4	82	42
t	f	5	63	67
f	t	6	19	11
t	t	7	5	18
t	t	8	60	50
f	t	9	6	37
f	t	10	6	74
t	f	11	87	25
f	t	12	93	30
f	t	13	22	27
t	f	14	46	0
t	f	15	98	42
f	t	16	51	74
f	t	17	90	50
f	t	18	71	25
t	f	19	28	36
t	f	20	83	12
t	t	21	75	28
f	t	22	87	27
t	t	23	44	78
f	t	24	81	72
t	f	25	3	87
t	f	26	74	50
t	f	27	20	47
t	t	28	64	52
f	t	29	54	19
t	f	30	37	28
f	t	31	55	30
t	f	32	24	60
t	t	33	86	69
f	t	34	71	43
t	f	35	89	85
t	t	36	17	28
t	t	37	90	24
t	t	38	82	27
t	t	39	80	49
f	t	40	80	80
f	t	41	61	45
t	f	42	61	88
t	t	43	21	86
f	t	44	93	28
f	t	45	33	2
t	t	46	81	51
t	t	47	66	31
t	t	48	45	11
t	t	49	39	44
f	t	50	39	46
f	t	51	20	23
t	f	52	87	68
f	t	53	70	77
f	t	54	67	82
f	t	55	16	46
f	t	56	57	24
f	t	57	60	33
t	t	58	80	80
t	f	59	42	89
t	t	60	25	85
t	f	61	69	1
t	f	62	11	35
t	f	63	67	32
t	f	64	32	10
t	t	65	14	45
t	t	66	31	92
t	t	67	55	21
t	f	68	35	34
t	t	69	88	75
t	f	70	55	68
t	t	71	65	68
f	t	72	16	13
t	t	73	28	80
t	f	74	9	74
f	t	75	17	47
\.


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.film (film_id, rate, film_name, storyline, age_limit, released_data, country_of_origin, trailer) FROM stdin;
0	6.8	sit	Case mouth record growth enough participant. Play current hospital yes vote message Democrat.	PG-13	2002-12-05	Uruguay	http://norton-marshall.net/
1	8.4	training	While model sing area these minute while again. Live impact me different policy generation.\nThem support rather. Behavior build American.\nProbably speech night kind camera. Name drive yourself short.	R	2008-01-13	Madagascar	https://www.huber.org/
2	9.5	rule	War chair early price. To modern TV.\nCondition catch sell record. Toward answer degree space risk.	G	2010-11-28	Ghana	http://www.wilson.com/
3	6.4	chair	Including enter technology section. Give available TV tree occur. Traditional another popular.	PG	1993-08-26	Costa Rica	https://green.org/
4	8.6	animal	Five team other gas. Pay seem continue interest. Red thousand well while rate attention.	R	2009-07-06	Faroe Islands	https://www.baker.com/
5	7.7	seven	Even wait seven first glass author three. System officer television city often oil a. Nice question whole its.	G	1979-11-24	Italy	https://lee.com/
6	7.1	trade	Everybody student yes throw. Wife me figure enter animal range. Miss many social.\nEmployee share address edge office.\nAccount training move out arm fine. People take attack kind.	PG	1989-06-03	Bolivia	https://www.graham.com/
7	1.3	must	Against single she ago away many life. Last according wait several.\nMan official school whom project. Way reveal deal natural table become who. Claim support blood bring guess.	G	1989-10-03	Djibouti	https://www.hill.com/
8	3.0	conference	Water watch your laugh.\nPressure at cultural east today. Western wonder ball like road huge become still.	PG	1992-08-22	Malaysia	http://watson.com/
9	3.5	program	Give look word. Right less budget item. Single matter kind break most next.\nDinner hope four improve. Wife establish father big. Join ahead current too best.	PG	1979-02-18	Venezuela	https://www.hoffman.com/
10	5.5	describe	Sit particularly Mrs rather floor. Production offer player threat offer car or save. Ever the matter safe wide top. We information information loss east us room direction.	R	2001-04-16	French Guiana	http://smith-williams.com/
11	9.1	include	These already should put. Top if seven material quickly program. Just decade ask agree explain indeed nature office. Summer kitchen thus series yeah soldier song.	PG-13	1978-01-05	Cyprus	http://cox.info/
12	6.2	resource	Full game west interesting professor off investment. Marriage western market glass word budget type. Begin raise level table full organization present. Likely cultural everyone debate.	R	1974-06-07	Bhutan	https://www.velazquez-ramirez.com/
13	8.9	current	Big perform practice situation yourself page. Common public simply statement so. Itself there special art condition long.	R	1992-06-16	Kyrgyz Republic	https://www.norman-vasquez.com/
14	4.0	travel	Push market fish movie. Direction wall how international personal hear bill. Modern third father sell.\nSingle role care structure similar.	R	2018-04-06	Angola	http://cross.com/
15	8.4	relate	Country enter street support once she.\nArt impact cost. Attack difficult behind throughout.\nThought environmental ok early include no miss. Century week customer style reason dog late any.	R	2010-05-15	Bouvet Island (Bouvetoya)	https://www.davis.net/
16	2.0	purpose	Area social keep run spring second. Bar smile many animal student.\nProcess deep college have up. In rule can yeah none city. Prevent window administration yes degree view.	PG	1985-05-25	Morocco	http://olson.com/
17	8.3	change	Past unit relationship quality card cup truth. Finish sport speech economy.\nCan others perform religious. Carry visit mouth opportunity. Red system personal site.	R	2005-04-25	Lesotho	https://alvarez-white.com/
18	4.5	sit	Thing last responsibility item. Would describe pull positive personal few president.\nAmerican experience study box subject wall catch.	G	1980-11-29	Sao Tome and Principe	https://www.white.com/
19	7.5	reality	Choice economy southern. Method about national build mission majority sea hot. Program beat travel authority sort capital street age.	PG	1988-02-21	Tunisia	http://www.gray.com/
20	5.6	safe	Everyone morning according less reach. Doctor mention writer grow.\nAgree ahead college pattern heart race why get.	R	1986-07-13	Saint Vincent and the Grenadines	http://norris.biz/
21	9.8	culture	Sometimes rather suddenly attention structure big. Movie effect several operation clearly fill. Financial despite sit tonight sing site air.	PG-13	2001-01-20	Haiti	https://www.benjamin.com/
22	8.5	actually	Guess here might whom. Food participant chance then always else set coach.\nToday feeling need agree. Term travel interest close before. Pattern soldier sister little let. Fear company blue.	R	1974-09-30	Argentina	https://austin-patel.org/
23	5.7	concern	Under case she investment. Ball time particular after.\nContinue successful as where. Rate enough term resource.	R	2001-12-29	Northern Mariana Islands	http://www.delacruz.com/
24	8.4	help	Determine still weight. Not unit event director also. Let total site source record.\nLeg easy stay this summer.\nExpert offer anything wear score. Four ready despite list order.	G	2002-01-11	Mongolia	https://www.davis-nixon.info/
25	1.2	fire	Mention want customer wrong understand. After try staff rich crime. Claim move yard back.\nDiscussion win body view reason it actually.	R	1975-01-11	Venezuela	https://www.zimmerman.com/
26	3.8	food	Resource message free budget situation. From technology reality address arrive. Stuff professor form film ok laugh from.\nFather structure fear pass. International last weight drive life should.	PG-13	1972-09-12	Slovakia (Slovak Republic)	http://www.fisher.com/
27	3.0	computer	Approach realize clear reduce late. Recently charge get public. Itself this sell point today.	R	1973-09-24	Malawi	https://ryan-hayden.com/
28	1.3	environment	Girl speak book. Information heavy throughout long.\nUnit next source parent watch he run. Now wish explain.	R	1984-12-10	Isle of Man	http://howard.com/
29	8.5	beyond	Woman side form animal general. Beyond crime three stand understand two build. Party authority indicate man. Heavy stuff against guess require style anyone.	G	1970-06-13	Cook Islands	https://keith-steele.info/
30	7.7	book	Purpose respond across. As scientist mouth role night write account. Hotel today usually minute suffer real important.	PG-13	1987-06-16	Uganda	https://cox-osborn.info/
31	4.0	cultural	Week either suggest economic. However factor development whose case common start stop.	R	1988-06-06	Cote d'Ivoire	https://www.pham-white.com/
32	3.2	administration	Near brother exactly grow. Result center decide others. Continue respond have marriage.	G	2019-01-21	Qatar	https://www.jackson.com/
33	1.2	section	Particular attorney cold significant bad already. However size set deal bag conference close. Federal yeah final leave market official.	PG	1984-01-31	Myanmar	http://curtis.com/
34	7.3	activity	Suddenly suffer Congress spring as. History much expert wife our lose open.\nNumber worker measure across.\nCard reality term cup involve pull.	PG-13	1980-09-03	Lesotho	http://www.berg.com/
35	4.3	modern	Near study cause participant magazine. Bring blue cut industry whole agent effort. Seem game building land young reveal college.	PG	1981-12-27	Cameroon	https://www.hopkins-cobb.com/
36	4.9	on	Generation ready option loss rock former. Religious per trial program never car night month. Skin level religious child degree fish deal.	PG	1990-01-20	Bulgaria	http://hart-bates.com/
37	4.7	sure	Choice live sell catch computer score professor. Issue according bar last to. Picture listen dark wish attorney father.	PG	2017-09-10	Pakistan	https://davis.org/
38	2.9	serve	Lose player range very play admit. Maybe mission civil serious now.\nPresident safe recent leave put. Face network wide continue. Magazine rather important I.	PG-13	2020-01-23	Holy See (Vatican City State)	http://harper-rodriguez.com/
39	8.6	compare	Reduce wonder nice. War attorney hear.\nInternational Mrs industry social. Similar add do.	G	1975-03-13	Thailand	https://www.burton-clark.biz/
40	3.7	box	Vote issue dream reveal. Test develop executive energy structure check.\nProvide every success speech too provide. Drive leave matter what common national increase.	R	2012-02-29	Japan	https://www.gonzalez-hicks.net/
41	5.2	nation	Wife cup adult although guy. Talk risk as charge without successful second house. Only indeed do.	PG-13	1988-04-19	Aruba	http://barnett.com/
42	3.5	card	Room record usually somebody listen real. Purpose almost move but state music. Recognize industry machine war.	G	2013-12-29	United States Minor Outlying Islands	https://www.smith.com/
43	4.8	sound	Best live dream ever activity each put. Morning customer paper standard man. Once water trial pay area exist.\nIncluding commercial himself although ago radio. Day within argue politics.	G	1970-01-30	India	http://david-anderson.com/
44	2.0	beat	Offer administration first fear improve from fill. Guess condition some single between possible man.\nAge student number commercial today. Defense happy shake base. Hospital recently now maintain.	G	1987-11-09	Luxembourg	https://contreras.info/
45	2.4	necessary	Sit region put floor view door. Though close fire commercial expect. Standard herself evening wall when capital.	G	1977-04-11	Norway	https://www.hoffman-scott.com/
46	1.9	involve	Drive blue commercial drive focus data go. Trade region owner stay general job lay.\nSee others environmental yard represent home program. Sense attorney least personal far southern rock.	R	2011-03-08	Guam	https://terry.com/
47	1.4	unit	Treatment free happy type owner. Difference talk arm building music hospital shoulder glass. Economy fight both government.\nRole side fish. Manager son case sport thought spring.	PG-13	1982-12-02	Senegal	http://gaines-davis.org/
48	5.2	continue	Type address stock attorney movement drop. Music with so tonight animal.\nDecide cost century writer difference tend style.	G	2015-04-12	Seychelles	http://www.fisher.com/
49	9.8	save	Figure future floor particular admit into. Section everyone difficult ask skill particular about realize. Remain help put boy.	R	2013-05-12	Ecuador	http://smith.com/
50	4.1	name	Only true much design level happy. Well democratic nearly station several.\nEach bring represent where person allow bad. Century most yard another prepare oil. Whole bag when too.	PG	2004-03-02	Italy	http://lee-dean.com/
51	2.1	member	Thing rule smile throughout painting message make. Education simply discover go.	PG	1997-07-23	Armenia	http://wright.info/
52	9.6	high	Late center help. Participant student public car. Allow return off.\nSenior quite adult cold hair however. Seven top computer top subject. Personal dark thank movement others sometimes admit.	PG	1973-12-09	Philippines	https://www.stokes.com/
53	5.7	nor	Especially artist herself agreement visit total prepare. Behind city loss officer. Player daughter worry public two himself federal.	PG	2017-04-26	Kenya	http://perez-bailey.com/
54	7.5	within	Travel woman great half risk author example score. Get among government clearly. If character station up onto kitchen citizen.	PG-13	2022-07-24	India	http://www.fields.org/
55	2.1	strategy	Various close its sit control. Down letter brother.\nBut game science like second draw hard. Model reflect expect serve character break. Somebody fill such relationship region. Keep item cover type.	PG-13	2014-12-08	British Virgin Islands	http://turner.org/
56	1.1	tell	Surface child eye teach. Beat question upon make charge notice. Center window economy financial finish.\nCity Democrat meet. Wear they forward. Thought gas woman trip.	R	2009-10-12	Jamaica	https://www.henry.info/
57	9.0	become	Somebody even analysis apply ask. Small power show social.\nCard kitchen house day.	R	1988-01-30	Germany	http://robertson.net/
58	3.9	dog	Ability response join skin kid.\nUse citizen like role growth. Identify Republican high. Source chance under such project population guy.	PG	1975-11-03	Albania	https://martin.com/
59	9.9	small	Purpose majority pattern thus similar after. Support bring poor medical some old.\nRise suddenly hope. Physical suffer town yard process state.	G	1981-02-08	Italy	https://fleming.net/
60	8.9	process	Make recognize figure act early hospital. Full team pass action realize growth. Serve recent message type character important source.	G	1979-05-26	Liberia	http://www.nicholson.com/
61	6.6	member	Us next impact fire affect. Tonight future protect cover writer home.\nFamily teacher movement still play security writer rate. Management local ever heart beat.	R	2004-05-16	Botswana	http://www.davis-ray.com/
62	9.8	various	Watch recently painting group environmental affect. Child end nice soldier your couple.\nSuggest involve common whether special before.	R	1973-04-14	Syrian Arab Republic	http://palmer-conley.com/
63	3.7	election	Dark push particularly public red that of specific.\nSuddenly something question pick receive size.	PG-13	1975-12-02	Netherlands Antilles	http://www.gross.net/
64	5.8	pressure	Toward true real technology despite. Sound trade information through call. Serious capital century various.	PG-13	2009-02-22	Indonesia	https://www.monroe-serrano.com/
65	1.1	executive	Bag nation cold mention dream. Staff only chair into low learn.\nSave act action then fine among sing share. Serious sell upon attention campaign fight.	PG-13	2017-12-26	Cyprus	https://www.hodges-simpson.com/
66	3.6	Democrat	Bed poor conference both night. Interesting provide of blue include.\nManager occur trip reality yet series. College so especially TV ask against west believe.	G	2023-02-24	Djibouti	https://www.andrade.info/
67	8.5	quite	Then home special boy she spring. Approach idea high first.\nLeg hot increase reflect American no. Day skin culture news appear.	R	1976-04-09	Mauritius	http://www.reid.com/
68	9.5	dog	Health huge dinner job. Difficult effort avoid grow between toward. Sense evening enough issue option go natural. Man simply environment only really realize international.	R	1986-10-16	Australia	https://www.jackson.org/
69	6.6	maintain	Your now bar voice question with. Benefit argue picture return clear door feeling. Fast boy now goal happen lawyer series open. Matter most cold recently management.	PG	1984-08-27	Kazakhstan	http://reed-edwards.com/
70	5.1	situation	Medical start should rock watch PM present month.\nSouthern himself wonder exactly. Research foreign morning figure campaign.	G	1979-07-17	Georgia	http://www.elliott.com/
71	3.0	language	Professional strong training car sign white visit doctor. Many political stock pull measure center. Call employee because sea focus huge.	G	1970-02-23	Hong Kong	http://rodriguez-stark.com/
72	4.5	fast	Alone trial enjoy sometimes. Suggest charge only garden. Could important key eight mention. Democratic lot knowledge ready.	PG	1982-02-05	Spain	http://reid.com/
73	3.3	difference	Control life lose not within adult billion now. The share vote sign.\nEnter marriage people moment city find. Matter individual wish control such probably.	PG-13	2016-02-26	Algeria	https://glover.biz/
74	4.3	outside	Character power much create cut lawyer whose. Edge evidence accept before player key discussion.\nTrade increase wind current various. Note term three note among fear.	PG-13	1990-02-23	Cambodia	https://www.taylor.org/
75	4.9	attention	Ground sing report with. Account into say industry. Quickly to even care quality.	PG	1998-05-04	French Southern Territories	http://www.rogers.com/
76	7.1	thus	Into great minute whatever.\nForm word whom between. Hope party animal. Edge south physical.\nHigh director heavy color down model the.	PG	1999-07-26	Malaysia	http://mercer.com/
77	3.5	nice	Discussion fall risk eye military thought. Change event often little some over often religious. Decade reveal focus town enjoy.	PG	2001-11-21	United Kingdom	http://www.allen.com/
78	1.0	raise	Finally call music. Home law they.\nEveryone collection finally loss specific during teach. Yet article stop itself change. Check pull political almost.	R	2006-02-05	Bermuda	http://www.farmer.com/
79	9.3	role	Minute pay authority quickly pass. Team many know meet.\nCultural memory experience buy. Hundred partner consumer nation. Dark almost expert read wall still.	PG-13	2003-04-13	France	https://www.hernandez.net/
80	7.2	conference	Set president way too. Huge choose rest.\nWrong fund century interesting money form. Every choose star development simple.	PG	1971-02-15	Sao Tome and Principe	http://www.steele-rodriguez.com/
81	2.5	might	Door turn relate politics administration anyone. Find respond system guess strategy work. Affect with establish model act begin.\nAge address those bar.	R	2017-09-01	Iraq	https://www.browning.net/
82	8.5	water	Bit huge any fear ahead message. Do fire someone decide grow play gas.\nMovement major which someone indeed. Music its change fall pretty. Wear point again year suffer wide nearly without.	G	1983-01-28	Venezuela	https://evans-king.net/
83	7.2	writer	Form pretty with white. These common sing since necessary. Once great my outside better rich.	PG-13	1985-08-15	Montenegro	https://www.reynolds.org/
84	4.9	mission	Citizen actually probably suggest investment. Simple huge factor. Speak student fine son start spend.	R	1981-02-24	Rwanda	https://www.foster.info/
85	5.4	into	Speech general like seat arrive. Might before away others natural surface result law.\nTable talk civil fish. College site thus weight pretty market until.	R	1970-01-10	Cote d'Ivoire	http://www.french-thompson.biz/
86	7.7	blood	Strong community center focus. Billion run space start man black simply. Task work fight his. Woman successful mention difficult.	R	2020-10-19	Montenegro	http://www.miller-brooks.net/
87	5.0	decade	Difficult energy mention know. Half everything nearly drop.\nStore enjoy development find if must none. Over how rest.	G	1996-05-18	Somalia	https://blankenship.net/
88	9.6	be	Majority environment it particularly that. Drive south share she reflect me. Us position in place bed. Else morning effort ball.\nAttention young research cover. That out near what.	PG-13	1983-03-19	Turkey	http://www.curry.com/
89	1.2	simply	Know cover not message hour black. Choose window several explain road.\nHotel find before two. Idea find close environment rest off performance support. Pressure less involve week grow contain.	PG-13	1979-09-13	France	http://cook.com/
90	7.6	organization	Culture score their hold both adult. Former new water computer she yet.\nHundred toward probably although. Debate watch write book long attack cup.	PG-13	1997-12-31	Suriname	https://lowery.com/
91	6.4	media	Message easy rather market own. Join provide study require view finally prevent.	PG-13	1992-08-29	Hong Kong	https://parker.com/
92	5.8	performance	Today case sea suddenly cover school. Artist popular fall. Imagine modern decade offer course over window.	G	2002-03-16	Tuvalu	http://www.doyle.com/
93	2.8	consumer	Better real mouth say measure stock person. Development guess thus collection lawyer require board. Than where present behavior style pressure.	PG	1987-09-14	Sierra Leone	https://klein-fuller.com/
94	7.5	short	Wall forget back. Trade figure film factor place garden wrong.\nAlthough human candidate father middle cell money. Happen sound center seven nothing.	G	1980-08-29	Heard Island and McDonald Islands	http://murphy-brown.com/
95	1.4	prevent	Receive lot worry long long. Glass high professor crime you. Your program large page paper.\nMilitary far fast company technology recently. Red focus doctor. Newspaper thousand brother ball there.	PG	1976-03-31	United States Virgin Islands	http://www.nielsen.com/
96	8.2	be	Relationship cultural class away. Foot life early pressure light hope goal.\nWall spend end sound believe. Reality factor focus. Summer large want method collection part must foreign.	PG	1989-01-15	Montserrat	https://www.barker-greene.com/
97	9.6	probably	Seven food his finally. After civil house strategy. Purpose yes attention break style final.	PG-13	1977-05-31	Argentina	https://www.benson.com/
98	7.7	enough	Table international specific about study. Admit Mrs call. Trade authority assume.\nStand direction magazine institution.	G	1978-05-30	San Marino	https://www.martinez-gilbert.com/
99	6.5	card	Environmental guy world include cut really when. Current popular him dinner me. Material peace language computer truth difference. Some shoulder that benefit break responsibility.	PG-13	1985-10-23	Western Sahara	http://www.grimes-williams.com/
\.


--
-- Data for Name: film_categories; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.film_categories (film_categories_id, category_id, film_id) FROM stdin;
0	1	31
1	1	40
2	2	49
3	0	48
4	1	60
5	2	5
6	2	69
7	2	14
8	2	78
9	2	23
10	0	15
11	1	24
12	1	33
13	0	32
14	1	96
15	1	44
16	1	53
17	0	59
18	0	4
19	0	68
20	0	80
21	1	72
22	1	81
23	1	25
24	1	35
25	0	89
26	1	34
27	2	44
28	0	43
29	0	52
30	0	64
31	2	9
32	0	10
33	1	83
34	1	30
35	2	92
36	0	37
37	0	36
38	2	46
39	0	45
40	0	54
41	0	66
42	1	67
43	1	76
44	1	20
45	1	30
46	0	84
47	1	96
48	2	39
49	2	41
50	0	47
51	0	56
52	0	60
53	1	69
54	1	13
55	1	77
56	0	22
57	1	89
58	2	34
59	1	31
60	0	32
61	0	96
62	2	95
63	2	52
64	2	61
65	1	62
66	1	6
67	1	70
68	1	15
69	1	82
70	2	25
71	2	89
72	0	27
73	0	33
74	2	97
75	0	42
76	0	55
77	1	64
78	2	9
79	2	73
80	0	72
81	1	17
82	0	82
83	2	84
84	2	91
85	0	90
86	0	35
87	0	99
88	0	48
89	1	2
90	0	1
91	1	65
92	0	11
93	1	77
94	2	22
95	1	84
96	2	83
97	0	86
98	2	95
99	2	40
\.


--
-- Data for Name: film_directors; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.film_directors (film_directors_id, director_id, film_id) FROM stdin;
0	67	59
1	59	55
2	71	29
3	82	38
4	28	67
5	29	32
6	47	80
7	0	5
8	19	18
9	63	61
10	9	90
11	50	91
12	84	4
13	21	64
14	95	13
15	6	84
16	72	29
17	85	48
18	45	12
19	64	25
20	10	54
21	54	97
22	86	49
23	46	13
24	79	10
25	98	23
26	43	87
27	36	48
28	96	99
29	15	25
30	1	90
31	88	95
32	70	77
33	91	20
34	9	67
35	28	80
36	29	45
37	48	58
38	80	90
39	41	19
40	60	32
41	25	11
42	72	6
43	64	2
44	12	77
45	86	26
46	78	22
47	51	68
48	23	86
49	89	31
50	68	8
51	35	60
52	15	2
53	47	34
54	66	84
55	99	81
56	70	54
57	17	48
58	90	32
59	76	97
60	63	15
61	48	35
62	21	18
63	9	80
64	10	8
65	75	25
66	41	32
67	93	42
68	44	37
69	45	2
70	64	15
71	97	12
72	43	41
73	22	18
74	95	88
75	74	65
76	66	61
77	67	26
78	12	90
79	23	99
80	96	89
81	28	34
82	47	47
83	40	8
84	5	50
85	71	32
86	17	61
87	57	97
88	83	6
89	41	9
90	27	74
91	10	21
92	91	95
93	54	64
94	86	16
95	32	45
96	24	41
97	3	18
98	35	50
99	96	66
100	67	39
101	13	68
102	37	96
103	16	73
104	9	34
105	48	25
106	21	8
107	42	67
108	62	45
109	54	41
110	66	15
111	39	61
112	12	44
113	30	92
114	31	57
115	2	30
116	35	27
117	14	4
118	55	5
119	12	80
120	59	12
121	32	58
122	23	89
123	17	15
124	55	41
125	96	79
126	28	24
127	88	75
128	48	2
129	6	5
130	9	47
131	49	83
132	50	48
133	69	61
134	15	90
135	61	57
136	8	51
137	26	99
138	18	95
139	2	7
140	62	58
141	94	90
142	20	61
143	60	97
144	11	92
145	85	41
146	12	57
147	72	71
148	78	2
149	23	66
150	84	82
151	16	27
152	95	91
153	34	81
154	53	94
155	5	17
156	38	51
157	56	99
158	9	24
159	77	42
160	28	37
161	15	67
162	61	34
163	27	41
164	38	87
165	79	88
166	8	64
167	54	31
168	73	44
169	0	60
170	19	73
171	39	51
172	30	82
173	4	30
174	91	98
175	51	25
176	84	59
177	87	64
178	13	35
179	99	38
180	17	5
181	77	19
182	14	79
183	26	53
184	92	35
185	98	78
186	50	38
187	69	51
188	81	25
189	18	85
190	23	20
191	51	2
192	75	67
193	21	96
194	95	45
195	0	73
196	96	10
197	60	87
198	33	70
199	12	47
200	32	25
201	64	57
202	84	72
203	89	1
204	22	60
205	88	42
206	47	4
207	53	84
208	5	7
209	46	45
210	3	83
211	77	32
212	89	86
213	49	50
214	69	28
215	15	57
216	80	37
217	19	27
218	79	78
219	31	1
220	29	77
221	8	54
222	48	90
223	19	63
224	20	28
225	60	64
226	11	59
227	52	60
228	51	15
229	84	49
230	35	7
231	41	87
232	1	14
233	33	83
234	53	61
235	72	74
236	64	70
237	57	31
238	28	4
239	61	1
240	67	81
241	46	58
242	79	55
243	70	86
244	36	93
245	42	24
246	7	66
247	27	44
248	18	75
249	19	40
250	39	18
251	71	87
252	63	83
253	23	10
254	82	96
255	21	86
256	40	99
257	41	64
258	52	73
259	13	2
260	65	12
261	10	76
262	56	43
263	76	21
264	22	50
265	14	46
266	37	66
267	38	31
268	97	80
269	49	40
270	42	1
271	15	47
272	80	27
273	8	8
274	26	56
275	19	17
276	98	81
277	17	93
278	82	73
279	75	34
280	48	80
281	54	11
282	95	12
283	41	41
284	11	49
285	23	23
286	64	24
287	21	99
288	87	44
289	54	96
290	93	87
291	99	18
292	64	60
293	37	43
294	38	8
295	51	90
296	57	21
297	14	59
298	67	71
299	59	67
300	98	58
301	71	41
302	17	70
303	7	56
304	48	57
305	94	24
306	73	1
307	11	26
308	31	4
309	84	16
310	81	90
311	60	67
312	6	96
313	53	28
314	72	41
315	64	37
316	56	33
317	2	62
318	76	11
319	66	83
320	38	21
321	70	53
322	43	99
323	3	63
324	98	35
325	15	37
326	61	4
327	30	16
328	90	67
329	63	50
330	83	28
331	28	92
332	48	70
333	53	5
334	25	23
335	2	39
336	22	17
337	54	86
338	14	13
339	33	63
340	74	64
341	34	28
342	93	77
343	45	37
344	86	38
345	68	20
346	35	72
347	18	19
348	89	79
349	63	27
350	42	4
351	28	69
352	60	21
353	5	85
354	11	16
355	92	90
356	44	13
357	84	6
358	10	20
359	75	37
360	62	67
361	81	80
362	41	44
363	33	40
364	93	54
365	31	79
366	56	23
367	76	1
368	54	99
369	66	73
370	67	38
371	70	43
372	98	25
373	89	56
374	82	17
375	28	46
376	48	24
377	40	20
378	30	6
379	83	18
380	75	14
381	33	17
382	30	91
383	12	79
384	32	57
385	97	37
386	43	66
387	35	62
388	36	27
389	96	78
390	1	69
391	18	9
392	16	85
393	36	63
394	76	99
395	94	4
396	21	20
397	26	98
398	60	11
399	92	80
400	44	3
401	50	83
402	2	6
403	54	53
404	87	1
405	93	44
406	25	26
407	39	73
408	66	27
409	11	91
410	56	13
411	35	39
412	66	63
413	13	57
414	32	70
415	24	66
416	70	33
417	56	98
418	90	11
419	36	40
420	9	23
421	28	36
422	29	1
423	88	87
424	48	14
425	99	96
426	46	90
427	6	17
428	92	57
429	63	30
430	77	77
431	62	34
432	41	11
433	81	47
434	27	76
435	85	17
436	20	73
437	67	5
438	31	82
439	97	27
440	70	10
441	35	52
442	36	17
443	96	68
444	34	93
445	5	29
446	92	34
447	71	11
448	16	75
449	76	89
450	9	36
451	77	54
452	40	23
453	81	24
454	80	59
455	60	1
456	92	70
457	54	43
458	73	56
459	31	59
460	23	55
461	24	20
462	84	71
463	89	0
464	16	52
465	57	53
466	17	17
467	22	95
468	47	39
469	14	91
470	88	77
471	5	42
472	92	47
473	6	7
474	58	54
475	98	90
476	77	67
477	50	50
478	7	88
479	54	20
480	30	71
481	31	36
482	91	87
483	2	9
484	43	10
485	74	34
486	13	24
487	86	8
488	4	55
489	44	91
490	97	17
491	70	0
492	84	84
493	76	43
494	96	58
495	1	49
496	88	54
497	47	16
498	34	83
499	45	92
500	5	19
501	17	30
502	58	31
503	69	40
504	7	65
505	80	49
506	27	43
507	6	20
508	19	39
509	90	99
510	50	63
511	94	69
512	40	98
513	74	11
514	13	1
515	4	32
516	23	45
517	95	70
518	96	35
519	87	66
520	33	95
521	34	60
522	72	86
523	45	69
524	37	65
525	36	20
526	9	3
527	28	16
528	80	26
529	26	55
530	79	67
531	70	98
532	49	75
533	26	91
534	27	56
535	91	77
536	23	22
537	94	82
538	96	12
539	12	49
540	99	17
541	4	45
542	45	46
543	65	24
544	2	84
545	22	62
546	1	39
547	34	73
548	78	79
549	98	57
550	9	16
551	49	52
552	22	98
553	89	88
554	8	20
555	27	33
556	79	80
557	31	3
558	63	72
559	83	50
560	20	30
561	11	61
562	72	40
563	24	0
564	43	13
565	75	82
566	95	60
567	93	99
568	53	63
569	64	72
570	49	29
571	68	42
572	69	7
573	14	71
574	26	45
575	59	79
576	78	92
577	79	57
578	70	88
579	42	26
580	28	91
581	8	33
582	27	46
583	0	29
584	20	7
585	12	3
586	71	89
587	63	85
588	94	72
589	21	88
590	93	76
591	44	71
592	46	1
593	64	49
594	2	74
595	22	52
596	66	95
597	37	68
598	24	98
599	57	46
600	3	75
601	97	82
602	49	42
603	7	45
604	8	10
605	26	58
606	67	96
607	18	54
608	19	19
609	71	66
610	82	75
611	84	5
612	75	36
613	94	49
614	40	78
615	0	42
616	87	10
617	12	16
618	52	52
619	22	29
620	87	46
621	54	98
622	86	50
623	32	79
624	37	45
625	3	52
626	22	65
627	14	61
628	7	22
629	26	35
630	59	69
631	79	47
632	98	60
633	30	5
634	91	21
635	36	85
636	63	39
637	75	13
638	47	94
639	60	33
640	5	97
641	6	62
642	23	2
643	83	53
644	84	18
645	29	82
646	81	92
647	33	52
648	52	65
649	37	22
650	65	4
651	56	35
652	51	69
653	3	29
654	76	13
655	14	38
656	74	89
657	66	85
658	67	50
659	13	79
660	86	63
661	38	23
662	70	55
663	71	20
664	89	68
665	90	33
666	35	97
667	36	62
668	55	75
669	7	35
670	94	3
671	5	74
672	11	5
673	29	59
674	69	95
675	48	72
676	95	4
677	52	42
678	10	45
679	88	1
680	25	61
681	66	62
682	67	27
683	4	87
684	24	65
685	97	49
686	35	74
687	14	51
688	55	52
689	7	12
690	26	25
691	78	72
692	90	46
693	9	58
694	83	7
695	75	3
696	94	16
697	0	9
698	60	23
699	92	92
700	84	8
701	10	22
702	42	91
703	34	7
704	93	56
705	31	81
706	10	58
707	56	25
708	89	22
709	14	28
710	87	98
711	13	69
712	59	36
713	79	14
714	70	45
715	43	91
716	89	58
717	90	23
718	35	87
719	63	6
720	82	19
721	29	13
722	6	29
723	38	98
724	63	42
725	77	89
726	83	20
727	9	71
728	21	45
729	25	15
730	64	6
731	2	31
732	54	78
733	93	69
734	86	30
735	59	13
736	32	59
737	31	94
738	23	90
739	24	55
740	78	26
741	28	25
742	88	76
743	46	79
744	79	27
745	71	23
746	57	88
747	91	1
748	41	0
749	81	36
750	18	96
751	52	9
752	58	89
753	54	55
754	93	46
755	66	29
756	86	7
757	51	49
758	96	57
759	55	19
760	47	15
761	53	95
762	13	59
763	98	17
764	16	64
765	17	29
766	76	78
767	96	93
768	99	98
769	5	54
770	38	88
771	9	61
772	69	75
773	41	13
774	54	32
775	39	52
776	30	83
777	31	48
778	43	22
779	0	97
780	12	71
781	86	20
782	32	49
783	4	67
784	72	85
785	97	29
786	24	45
787	43	58
788	89	25
789	47	28
790	88	66
791	5	31
792	92	36
793	65	82
794	71	13
795	63	9
796	49	74
797	7	77
798	6	32
799	93	0
800	71	98
801	10	2
802	42	71
803	73	58
804	93	36
805	13	13
806	4	44
807	24	22
808	84	73
809	89	2
810	35	31
811	95	82
812	1	38
813	88	43
814	45	81
815	57	55
816	22	97
817	68	64
818	14	93
819	48	6
820	80	38
821	5	44
822	38	78
823	98	92
824	50	52
825	69	65
826	42	48
827	7	90
828	81	39
829	8	55
830	74	0
831	19	64
832	93	13
833	39	42
834	30	73
835	91	89
836	23	34
837	83	85
838	43	12
839	95	59
840	56	67
841	96	60
842	28	5
843	34	85
844	53	98
845	86	95
846	5	21
847	46	59
848	77	46
849	15	71
850	18	76
851	71	88
852	31	15
853	63	84
854	62	39
855	54	35
856	11	73
857	85	22
858	31	51
859	51	29
860	23	47
861	45	71
862	46	36
863	64	84
864	57	45
865	3	74
866	49	41
867	68	54
868	69	19
869	14	83
870	7	44
871	30	27
872	50	42
873	81	29
874	73	25
875	18	89
876	0	41
877	39	32
878	4	11
879	43	2
880	94	84
881	60	91
882	44	83
883	65	26
884	10	90
885	57	22
886	3	51
887	86	85
888	5	11
889	46	49
890	97	94
891	58	23
892	77	36
893	55	97
894	80	41
895	81	6
896	8	22
897	0	18
898	18	66
899	73	2
900	79	82
901	11	27
902	23	1
903	54	25
904	41	55
905	6	97
906	53	29
907	72	42
908	23	37
909	84	53
910	22	41
911	1	18
912	33	87
913	34	52
914	53	65
915	99	32
916	86	62
917	46	26
918	57	35
919	2	99
920	69	9
921	61	5
922	80	18
923	79	59
924	98	72
925	50	32
926	90	68
927	17	84
928	82	64
929	83	29
930	20	9
931	6	74
932	52	41
933	23	14
934	83	65
935	87	35
936	33	64
937	93	78
938	25	60
939	44	73
940	45	38
941	57	12
942	67	62
943	13	91
944	18	20
945	46	39
946	78	71
947	97	84
948	50	9
949	91	10
950	82	41
951	28	70
952	18	56
953	79	72
954	71	68
955	17	97
956	82	77
957	83	42
958	9	93
959	48	84
960	40	80
961	41	45
962	25	37
963	64	28
964	56	24
965	2	53
966	14	27
967	88	13
968	25	73
969	46	16
970	57	25
971	97	61
972	98	26
973	14	63
974	15	28
975	67	75
976	79	49
977	71	45
978	17	74
979	28	83
980	48	61
981	52	31
982	64	5
983	84	20
984	56	1
985	21	80
986	87	25
987	33	54
988	74	55
989	73	90
990	53	32
991	44	63
992	85	64
993	31	93
994	37	24
995	65	6
996	51	71
997	56	37
998	10	70
999	22	44
1000	26	14
1001	59	48
1002	79	26
1003	71	22
1004	82	31
1005	48	38
1006	8	2
1007	92	81
1008	17	87
1009	58	88
1010	83	32
1011	95	6
1012	87	2
1013	60	48
1014	6	77
1015	52	44
1016	93	45
1017	37	1
1018	10	47
1019	14	17
1020	74	68
1021	20	97
1022	13	58
1023	4	89
1024	24	67
1025	70	34
1026	97	51
1027	35	76
1028	36	41
1029	55	54
1030	7	14
1031	13	94
1032	99	97
1033	59	61
1034	46	91
1035	16	99
1036	17	64
1037	63	31
1038	94	18
1039	21	34
1040	60	25
1041	50	97
1042	42	93
1043	81	84
1044	0	96
1045	39	87
1046	31	83
1047	32	48
1048	78	15
1049	51	61
1050	37	14
1051	18	0
1052	59	38
1053	70	47
1054	71	12
1055	89	60
1056	90	25
1057	35	89
1058	9	37
1059	1	96
1060	47	63
1061	48	28
1062	40	24
1063	6	31
1064	9	73
1065	42	70
1066	21	47
1067	62	48
1068	61	83
1069	41	25
1070	74	22
1071	93	35
1072	85	31
1073	31	60
1074	51	38
1075	14	7
1076	95	81
1077	66	54
1078	67	19
1079	31	96
1080	4	79
1081	72	97
1082	78	28
1083	97	41
1084	98	6
1085	96	82
1086	47	40
1087	46	81
1088	5	43
1089	65	94
1090	17	54
1091	63	21
1092	58	55
1093	68	99
1094	94	8
1095	41	2
1096	73	34
1097	52	11
1098	44	7
1099	58	91
1100	10	14
1101	42	83
1102	81	74
1103	54	57
1104	74	35
1105	19	99
1106	66	31
1107	37	4
1108	4	56
1109	43	47
1110	35	43
1111	95	94
1112	87	90
1113	88	55
1114	34	84
1115	13	61
1116	99	64
1117	4	92
1118	45	93
1119	5	20
1120	37	89
1121	70	37
1122	82	11
1123	68	76
1124	46	94
1125	5	56
1126	42	60
1127	33	11
1128	31	50
1129	23	46
1130	83	97
1131	75	93
1132	33	96
1133	86	22
1134	32	51
1135	16	43
1136	76	57
1137	96	72
1138	1	63
1139	34	97
1140	5	33
1141	57	80
1142	50	41
1143	42	37
1144	21	14
1145	80	63
1146	81	28
1147	50	77
1148	10	4
1149	42	73
1150	8	80
1151	54	47
1152	95	48
1153	94	83
1154	19	89
1155	60	90
1156	39	67
1157	31	63
1158	97	8
1159	87	80
1160	76	70
1161	3	86
1162	22	99
1163	28	30
1164	14	95
1165	48	8
1166	92	51
1167	38	80
1168	91	55
1169	7	92
1170	48	93
1171	73	37
1172	85	11
1173	4	23
1174	51	18
1175	24	1
1176	94	96
1177	41	90
1178	99	31
1179	4	59
1180	78	8
1181	65	38
1182	70	4
1183	56	69
1184	76	47
1185	77	12
1186	88	58
1187	80	17
1188	57	70
1189	3	99
1190	42	27
1191	27	47
1192	0	30
1193	73	14
1194	79	94
1195	11	39
1196	91	68
1197	21	89
1198	0	66
1199	41	67
1200	74	15
1201	60	80
1202	87	34
1203	53	41
1204	24	14
1205	56	46
1206	76	24
1207	96	39
1208	53	77
1209	92	5
1210	65	51
1211	56	82
1212	17	11
1213	69	21
1214	80	30
1215	26	59
1216	79	71
1217	90	80
1218	91	45
1219	82	76
1220	73	27
1221	0	43
1222	19	56
1223	40	79
1224	6	86
1225	12	17
1226	31	30
1227	72	31
1228	63	99
1229	4	13
1230	83	77
1231	75	73
1232	33	76
1233	44	85
1234	37	46
1235	57	24
1236	26	36
1237	67	74
1238	5	13
1239	86	87
1240	49	56
1241	89	92
1242	42	17
1243	61	30
1244	48	60
1245	18	68
1246	19	33
1247	79	84
1248	39	11
1249	5	98
1250	30	42
1251	71	80
1252	91	58
1253	23	3
1254	83	54
1255	29	83
1256	21	79
1257	41	57
1258	87	24
1259	6	99
1260	12	30
1261	53	31
1262	72	44
1263	96	29
1264	68	10
1265	88	25
1266	14	39
1267	25	85
1268	37	59
1269	58	2
1270	77	15
1271	68	46
1272	15	40
1273	61	7
1274	67	87
1275	27	14
1276	18	45
1277	79	61
1278	90	70
1279	95	5
1280	52	43
1281	95	41
1282	62	93
1283	33	66
1284	34	31
1285	93	80
1286	53	44
1287	45	40
1288	10	82
1289	56	49
1290	51	83
1291	14	52
1292	66	99
1293	18	22
1294	38	37
1295	50	11
1296	91	12
1297	55	89
1298	7	49
1299	60	24
1300	92	93
1301	11	19
1302	30	32
1303	63	66
1304	91	48
1305	9	95
1306	29	73
1307	95	18
1308	41	47
1309	73	79
1310	6	89
1311	34	8
1312	44	52
1313	45	17
1314	74	80
1315	34	44
1316	66	76
1317	37	49
1318	97	63
1319	43	92
1320	89	59
1321	90	24
1322	69	1
1323	27	4
1324	79	51
1325	70	82
1326	9	72
1327	94	30
1328	60	37
1329	33	20
1330	72	11
1331	22	10
1332	81	96
1333	34	21
1334	93	70
1335	66	53
1336	37	26
1337	65	8
1338	56	39
1339	51	73
1340	98	5
1341	43	69
1342	49	0
1343	22	46
1344	14	42
1345	1	72
1346	7	3
1347	67	54
1348	32	96
1349	78	63
1350	79	28
1351	16	88
1352	91	2
1353	9	49
1354	47	75
1355	48	40
1356	60	14
1357	69	99
1358	29	63
1359	21	59
1360	73	69
1361	33	33
1362	93	47
1363	31	72
1364	37	3
1365	62	96
1366	95	93
1367	32	73
1368	79	5
1369	24	69
1370	90	14
1371	82	10
1372	88	90
1373	63	33
1374	82	46
1375	28	75
1376	69	76
1377	48	53
1378	61	72
1379	21	36
1380	80	85
1381	92	96
1382	44	19
1383	42	95
1384	81	86
1385	54	69
1386	39	89
1387	85	56
1388	32	50
1389	78	17
1390	51	63
1391	14	32
1392	1	62
1393	67	44
1394	79	18
1395	24	82
1396	16	78
1397	90	27
1398	63	10
1399	17	43
1400	76	92
1401	48	30
1402	60	4
1403	61	85
1404	21	49
1405	74	24
1406	93	37
1407	25	19
1408	39	66
1409	11	84
1410	53	1
1411	43	36
1412	22	13
1413	54	82
1414	55	10
1415	53	86
1416	64	95
1417	56	91
1418	16	55
1419	89	39
1420	36	33
1421	76	69
1422	96	84
1423	28	29
1424	99	89
1425	5	45
1426	17	56
1427	83	1
1428	7	91
1429	81	40
1430	27	69
1431	73	36
1432	6	46
1433	19	65
1434	93	14
1435	51	17
1436	2	12
1437	54	59
1438	94	95
1439	20	66
1440	11	97
1441	86	11
1442	51	53
1443	84	87
1444	36	10
1445	95	96
1446	96	61
1447	34	86
1448	59	30
1449	46	60
1450	49	65
1451	82	13
1452	29	7
1453	26	81
1454	6	23
1455	92	63
1456	38	92
1457	8	69
1458	54	36
1459	81	53
1460	27	82
1461	19	78
1462	66	10
1463	12	39
1464	51	30
1465	84	64
1466	95	73
1467	96	38
1468	59	7
1469	45	72
1470	56	81
1471	35	58
1472	77	24
1473	22	88
1474	96	74
1475	1	65
1476	47	32
1477	99	79
1478	46	73
1479	57	82
1480	98	83
1481	42	39
1482	61	52
1483	81	30
1484	54	13
1485	26	94
1486	8	46
1487	30	64
1488	10	6
1489	23	25
1490	84	41
1491	94	85
1492	74	27
1493	41	79
1494	66	23
1495	12	52
1496	32	30
1497	44	84
1498	23	61
1499	43	39
1500	89	6
1501	36	0
1502	1	42
1503	88	47
1504	45	85
1505	5	12
1506	92	17
1507	64	98
1508	37	81
1509	56	94
1510	3	88
1511	77	37
1512	50	20
1513	80	42
1514	40	6
1515	26	71
1516	27	36
1517	81	7
1518	18	67
1519	91	57
1520	20	33
1521	60	69
1522	30	77
1523	31	42
1524	4	25
1525	32	7
1526	51	20
1527	84	54
1528	43	16
1529	94	98
1530	87	59
1531	13	30
1532	99	33
1533	45	62
1534	64	75
1535	65	40
1536	70	6
1537	56	71
1538	36	13
1539	49	32
1540	76	49
1541	68	45
1542	14	74
1543	34	89
1544	80	19
1545	5	25
1546	78	95
1547	57	72
1548	58	37
1549	42	29
1550	7	71
1551	81	20
1552	27	49
1553	11	41
1554	83	66
1555	29	95
1556	95	40
1557	96	5
1558	87	36
1559	60	82
1560	52	78
1561	13	7
1562	53	43
1563	45	39
1564	76	26
1565	68	22
1566	34	66
1567	53	79
1568	86	76
1569	92	7
1570	65	53
1571	38	36
1572	77	27
1573	22	91
1574	9	9
1575	14	87
1576	55	88
1577	61	19
1578	27	26
1579	59	95
1580	11	18
1581	71	69
1582	90	82
1583	91	47
1584	62	20
1585	54	16
1586	52	55
1587	51	10
1588	84	44
1589	75	75
1590	35	2
1591	87	49
1592	52	91
1593	53	56
1594	45	52
1595	56	61
1596	97	62
1597	57	26
1598	3	55
1599	49	22
1600	76	39
1601	77	4
1602	22	68
1603	80	9
1604	92	20
1605	58	27
1606	90	59
1607	61	32
1608	94	29
1609	27	39
1610	20	0
1611	71	82
1612	91	60
1613	95	30
1614	40	94
1615	34	20
1616	72	46
1617	45	29
1618	44	64
1619	37	25
1620	34	56
1621	57	39
1622	70	58
1623	3	68
1624	89	71
1625	90	36
1626	47	74
1627	80	22
1628	67	89
1629	26	51
1630	78	98
1631	71	59
1632	63	55
1633	83	33
1634	28	97
1635	75	29
1636	95	7
1637	22	22
1638	74	69
1639	53	46
1640	93	82
1641	45	42
1642	85	78
1643	37	38
1644	10	84
1645	97	52
1646	15	19
1647	26	28
1648	86	79
1649	18	24
1650	17	65
1651	42	9
1652	83	10
1653	28	74
1654	94	19
1655	19	25
1656	5	90
1657	11	21
1658	92	95
1659	83	46
1660	84	11
1661	95	20
1662	6	91
1663	93	59
1664	64	32
1665	86	56
1666	59	39
1667	78	52
1668	38	16
1669	49	25
1670	7	28
1671	59	75
1672	5	67
1673	48	65
1674	21	48
1675	72	13
1676	2	34
1677	62	85
1678	93	72
1679	20	88
1680	25	54
1681	45	32
1682	31	97
1683	78	29
1684	97	42
1685	43	71
1686	90	3
1687	14	44
1688	96	83
1689	88	79
1690	78	65
1691	79	30
1692	24	94
1693	70	61
1694	71	26
1695	16	90
1696	90	39
1697	63	22
1698	28	64
1699	48	42
1700	80	74
1701	44	8
1702	42	84
1703	75	32
1704	25	31
1705	86	10
1706	31	74
1707	51	52
1708	23	70
1709	56	18
1710	84	86
1711	2	47
1712	66	68
1713	12	97
1714	97	55
1715	71	3
1716	89	51
1717	90	16
1718	35	80
1719	17	32
1720	82	12
1721	55	58
1722	48	19
1723	46	95
1724	5	57
1725	58	69
1726	77	82
1727	21	38
1728	25	8
1729	72	3
1730	39	55
1731	13	39
1732	51	65
1733	3	25
1734	1	64
1735	47	31
1736	46	72
1737	65	85
1738	9	41
1739	77	59
1740	48	32
1741	15	84
1742	80	64
1743	60	6
1744	58	82
1745	81	65
1746	8	81
1747	73	61
1748	0	77
1749	19	90
1750	20	55
1751	31	64
1752	23	60
1753	97	9
1754	51	42
1755	43	38
1756	35	34
1757	95	85
1758	96	50
1759	87	81
1760	47	8
1761	67	23
1762	78	32
1763	17	22
1764	55	48
1765	1	77
1766	47	44
1767	5	47
1768	92	52
1769	65	98
1770	38	81
1771	49	90
1772	69	68
1773	15	97
1774	81	42
1775	8	58
1776	44	11
1777	31	41
1778	91	92
1779	10	18
1780	67	0
1781	12	64
1782	31	77
1783	4	60
1784	51	55
1785	35	47
1786	95	98
1787	1	54
1788	34	88
1789	5	24
1790	92	29
1791	71	6
1792	63	2
1793	76	84
1794	69	45
1795	40	18
1796	81	19
1797	26	83
1798	38	94
1799	42	64
1800	0	67
1801	73	51
1802	93	29
1803	11	76
1804	12	41
1805	13	6
1806	84	66
1807	16	11
1808	75	97
1809	88	36
1810	13	42
1811	53	78
1812	25	96
1813	45	74
1814	99	45
1815	16	47
1816	22	90
1817	28	21
1818	68	57
1819	5	37
1820	38	71
1821	57	84
1822	49	80
1823	61	54
1824	18	92
1825	19	57
1826	93	6
1827	85	2
1828	91	82
1829	2	4
1830	0	80
1831	41	81
1832	87	48
1833	20	58
1834	66	25
1835	33	77
1836	99	22
1837	44	86
1838	32	32
1839	84	79
1840	22	67
1841	55	15
1842	92	19
1843	65	65
1844	38	48
1845	14	99
1846	15	64
1847	81	9
1848	27	38
1849	30	43
1850	83	55
1851	95	29
1852	40	93
1853	19	70
1854	12	31
1855	32	9
1856	4	27
1857	51	22
1858	88	26
1859	33	90
1860	17	2
1861	77	16
1862	78	97
1863	38	61
1864	70	93
1865	90	71
1866	82	67
1867	15	77
1868	48	74
1869	8	38
1870	11	43
1871	91	72
1872	23	17
1873	63	90
1874	21	93
1875	96	7
1876	87	38
1877	33	67
1878	13	9
1879	4	40
1880	24	18
1881	16	14
1882	2	79
1883	14	53
1884	47	1
1885	34	68
1886	3	80
1887	49	47
1888	90	48
1889	69	25
1890	15	54
1891	61	21
1892	27	28
1893	79	75
1894	91	49
1895	9	96
1896	82	80
1897	29	74
1898	75	41
1899	48	87
1900	95	19
1901	12	21
1902	64	31
1903	43	8
1904	75	77
1905	35	4
1906	76	5
1907	22	34
1908	41	84
1909	44	89
1910	45	54
1911	86	55
1912	46	19
1913	65	32
1914	97	64
1915	43	93
1916	49	24
1917	69	2
1918	14	66
1919	86	91
1920	17	77
1921	90	61
1922	82	57
1923	83	22
1924	28	86
1925	47	99
1926	94	31
1927	19	37
1928	71	84
1929	72	12
1930	83	58
1931	84	23
1932	29	87
1933	95	32
1934	73	93
1935	93	71
1936	99	2
1937	45	31
1938	56	40
1939	2	69
1940	3	34
1941	14	43
1942	67	55
1943	46	32
1944	18	13
1945	38	28
1946	89	73
1947	36	67
1948	55	80
1949	11	10
1950	91	39
1951	9	86
1952	83	35
1953	48	77
1954	41	38
1955	33	34
1956	52	47
1957	53	12
1958	25	30
1959	4	7
1960	22	24
1961	1	1
1962	14	20
1963	74	71
1964	45	44
1965	46	9
1966	32	74
1967	98	19
1968	43	83
1969	89	50
1970	68	27
1971	35	79
1972	55	57
1973	7	17
1974	67	68
1975	30	0
1976	36	80
1977	83	12
1978	29	41
1979	48	54
1980	21	37
1981	0	14
1982	60	28
1983	6	57
1984	52	24
1985	84	13
1986	95	22
1987	33	47
1988	73	83
1989	45	21
1990	51	64
1991	97	31
1992	2	59
1993	3	24
1994	67	45
1995	26	7
1996	86	58
1997	59	41
1998	79	19
1999	71	15
2000	89	63
2001	17	44
2002	28	53
2003	47	66
2004	19	4
2005	5	69
2006	92	74
2007	77	94
2008	61	86
2009	27	93
2010	33	24
2011	73	60
2012	72	15
2013	30	98
2014	74	61
2015	93	74
2016	67	22
2017	85	70
2018	4	82
2019	23	95
2020	49	4
2021	90	5
2022	35	69
2023	1	76
2024	47	43
2025	88	81
2026	7	7
2027	67	58
2028	79	32
2029	71	28
2030	90	41
2031	91	6
2032	63	24
2033	36	70
2034	28	66
2035	29	31
2036	48	44
2037	21	27
2038	80	76
2039	5	82
2040	33	1
2041	2	13
2042	81	77
2043	54	60
2044	73	73
2045	34	2
2046	25	33
2047	97	21
2048	3	14
2049	84	88
2050	55	24
2051	32	77
2052	98	22
2053	71	5
2054	17	34
2055	96	98
2056	28	43
2057	29	8
2058	47	56
2059	38	93
2060	50	67
2061	69	80
2062	61	76
2063	80	89
2064	25	10
2065	10	30
2066	2	26
2067	62	77
2068	22	4
2069	66	47
2070	67	12
2071	32	54
2072	59	44
2073	80	66
2074	60	8
2075	18	91
2076	10	7
2077	91	81
2078	2	3
2079	81	67
2080	54	50
2081	8	83
2082	19	92
2083	93	41
2084	12	53
2085	31	66
2086	51	44
2087	35	36
2088	88	48
2089	34	77
2090	67	25
2091	4	85
2092	65	64
2093	70	30
2094	56	95
2095	36	37
2096	68	69
2097	88	84
2098	98	97
2099	58	61
2100	77	74
2101	49	92
2102	50	57
2103	69	70
2104	15	99
2105	80	79
2106	27	73
2107	73	40
2108	74	5
2109	19	69
2110	93	18
2111	84	55
2112	94	99
2113	86	15
2114	32	44
2115	44	98
2116	64	76
2117	70	7
2118	76	50
2119	28	10
2120	47	23
2121	92	31
2122	57	73
2123	63	4
2124	9	33
2125	69	47
2126	29	11
2127	15	76
2128	61	43
2129	62	44
2130	8	73
2131	94	76
2132	31	56
2133	51	34
2134	95	77
2135	47	0
2136	25	98
2137	59	11
2138	99	47
2139	45	76
2140	46	41
2141	5	3
2142	65	54
2143	56	85
2144	76	63
2145	28	23
2146	48	1
2147	69	60
2148	20	24
2149	51	11
2150	83	80
2151	35	3
2152	94	89
2153	96	19
2154	12	56
2155	44	88
2156	4	52
2157	16	26
2158	56	62
2159	76	40
2160	77	5
2161	36	4
2162	1	46
2163	80	10
2164	45	89
2165	46	54
2166	65	67
2167	37	85
2168	49	59
2169	50	24
2170	68	72
2171	69	37
2172	15	66
2173	26	75
2174	73	7
2175	79	87
2176	30	45
2177	82	92
2178	8	63
2179	94	66
2180	21	82
2181	41	60
2182	20	37
2183	66	4
2184	72	47
2185	16	3
2186	41	96
2187	25	88
2188	37	62
2189	38	27
2190	56	75
2191	9	0
2192	50	1
2193	98	77
2194	30	22
2195	82	69
2196	28	98
2197	0	36
2198	73	20
2199	39	27
2200	6	79
2201	83	70
2202	84	35
2203	75	66
2204	60	86
2205	33	69
2206	99	14
2207	45	43
2208	37	39
2209	65	21
2210	16	16
2211	14	55
2212	18	25
2213	38	40
2214	49	49
2215	81	1
2216	18	61
2217	5	91
2218	79	77
2219	90	86
2220	91	51
2221	75	43
2222	48	89
2223	21	72
2224	94	56
2225	87	17
2226	60	63
2227	6	92
2228	32	1
2229	45	20
2230	64	33
2231	10	62
2232	33	82
2233	34	47
2234	66	79
2235	85	92
2236	65	34
2237	32	86
2238	37	52
2239	2	94
2240	3	59
2241	49	26
2242	77	8
2243	55	69
2244	1	98
2245	27	7
2246	98	67
2247	70	85
2248	17	79
2249	91	28
2250	90	63
2251	29	53
2252	75	20
2253	48	66
2254	0	26
2255	11	35
2256	63	82
2257	23	9
2258	75	56
2259	33	59
2260	73	95
2261	99	4
2262	31	98
2263	57	7
2264	2	71
2265	3	36
2266	49	3
2267	68	16
2268	15	10
2269	38	30
2270	24	95
2271	98	44
2272	89	75
2273	28	65
2274	7	42
2275	8	7
2276	94	10
2277	48	43
2278	40	39
2279	27	20
2280	29	66
2281	61	98
2282	40	75
2283	41	40
2284	93	50
2285	37	6
2286	34	37
2287	67	34
2288	4	94
2289	24	72
2290	57	20
2291	18	28
2292	17	69
2293	91	18
2294	9	65
2295	60	30
2296	44	22
2297	73	85
2298	33	49
2299	85	59
2300	31	88
2301	32	53
2302	43	62
2303	55	36
2304	26	9
2305	13	76
2306	18	5
2307	59	43
2308	78	56
2309	98	34
2310	17	46
2311	63	13
2312	55	72
2313	19	6
2314	92	76
2315	9	78
2316	83	27
2317	50	79
2318	29	56
2319	69	92
2320	62	53
2321	56	9
2322	66	59
2323	67	24
2324	24	62
2325	82	3
2326	96	87
2327	47	45
2328	13	89
2329	99	92
2330	18	18
2331	92	53
2332	71	30
2333	58	60
2334	77	73
2335	82	39
2336	15	98
2337	40	42
2338	58	96
2339	2	15
2340	62	66
2341	0	91
2342	74	40
2343	25	35
2344	95	99
2345	45	98
2346	16	71
2347	76	85
2348	9	32
2349	82	16
2350	68	81
2351	29	10
2352	88	96
2353	48	23
2354	1	91
2355	28	45
2356	5	61
2357	46	99
2358	8	72
2359	85	26
2360	14	2
2361	20	82
2362	72	92
2363	4	74
2364	24	52
2365	97	36
2366	70	19
2367	16	48
2368	36	26
2369	28	22
2370	1	68
2371	47	35
2372	17	49
2373	63	16
2374	69	59
2375	29	23
2376	15	88
2377	73	29
2378	6	39
2379	19	58
2380	93	7
2381	39	36
2382	85	3
2383	44	2
2384	91	83
2385	8	85
2386	54	52
2387	73	65
2388	66	26
2389	11	90
2390	39	72
2391	86	4
2392	31	68
2393	12	55
2394	51	46
2395	43	42
2396	89	9
2397	84	80
2398	36	3
2399	34	79
2400	59	23
2401	16	61
2402	3	91
2403	9	22
2404	82	6
2405	69	36
2406	15	65
2407	48	13
2408	40	9
2409	92	56
2410	18	70
2411	79	86
2412	90	95
2413	27	75
2414	73	42
2415	74	7
2416	93	20
2417	66	3
2418	20	36
2419	91	96
2420	51	23
2421	83	92
2422	43	19
2423	41	95
2424	12	68
2425	59	0
2426	99	36
2427	32	46
2428	35	51
2429	36	16
2430	76	52
2431	88	63
2432	34	92
2433	5	28
2434	92	33
2435	65	79
2436	98	76
2437	50	36
2438	15	78
2439	81	23
2440	26	87
2441	19	48
2442	39	26
2443	91	73
2444	29	98
2445	94	78
2446	66	16
2447	13	10
2448	32	23
2449	64	55
2450	84	70
2451	87	75
2452	34	69
2453	5	5
2454	92	10
2455	37	74
2456	38	39
2457	50	13
2458	61	22
2459	7	51
2460	81	0
2461	26	64
2462	27	29
2463	59	98
2464	18	60
2465	6	6
2466	91	50
2467	82	81
2468	8	52
2469	94	55
2470	54	19
2471	73	32
2472	40	84
2473	0	48
2474	19	61
2475	31	35
2476	4	18
2477	51	13
2478	96	21
2479	87	52
2480	60	98
2481	52	94
2482	53	59
2483	93	95
2484	64	68
2485	37	51
2486	26	41
2487	92	23
2488	57	65
2489	58	30
2490	7	64
2491	73	9
2492	11	34
2493	91	63
2494	21	84
2495	95	33
2496	0	61
2497	12	35
2498	32	13
2499	64	45
2500	10	74
2501	2	70
2502	35	18
2503	76	19
2504	33	94
2505	74	95
2506	99	39
2507	86	69
2508	37	64
2509	57	42
2510	58	7
2511	22	84
2512	68	51
2513	55	81
2514	61	12
2515	80	25
2516	67	92
2517	19	15
2518	79	66
2519	71	62
2520	42	35
2521	9	87
2522	62	13
2523	8	42
2524	94	45
2525	19	51
2526	60	52
2527	20	16
2528	31	25
2529	51	3
2530	23	21
2531	75	68
2532	41	75
2533	88	7
2534	33	71
2535	25	67
2536	72	62
2537	44	80
2538	85	81
2539	64	58
2540	65	23
2541	2	83
2542	3	48
2543	18	27
2544	59	65
2545	50	16
2546	90	52
2547	42	12
2548	28	77
2549	61	25
2550	7	54
2551	48	55
2552	95	23
2553	40	87
2554	41	52
2555	53	26
2556	72	39
2557	45	22
2558	4	21
2559	2	60
2560	68	5
2561	88	20
2562	45	58
2563	32	88
2564	78	55
2565	3	61
2566	90	29
2567	7	31
2568	67	82
2569	59	78
2570	11	1
2571	70	87
2572	17	81
2573	91	30
2574	94	35
2575	40	64
2576	6	71
2577	72	16
2578	84	27
2579	96	1
2580	54	84
2581	33	61
2582	34	26
2583	45	35
2584	10	77
2585	97	45
2586	76	22
2587	49	5
2588	43	74
2589	68	18
2590	74	98
2591	66	94
\.


--
-- Data for Name: film_genres; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.film_genres (film_genres_id, genre_id, film_id) FROM stdin;
0	1	17
1	1	26
2	7	9
3	5	18
4	5	57
5	6	75
6	6	32
7	2	6
8	2	15
9	3	68
10	3	96
11	7	81
12	7	21
13	1	4
14	6	78
15	5	52
16	5	70
17	8	1
18	2	10
19	2	19
20	3	82
21	3	76
22	7	85
23	7	46
24	1	64
25	6	73
26	6	47
27	6	84
28	2	93
29	2	31
30	2	5
31	2	68
32	4	53
33	4	62
34	1	11
35	1	50
36	5	33
37	5	96
38	6	79
39	2	88
40	2	97
41	2	0
42	4	9
43	3	72
44	1	81
45	1	66
46	4	84
47	5	19
48	5	28
49	6	46
50	8	3
51	8	12
52	2	30
53	4	58
54	3	34
55	4	43
56	4	85
57	1	22
58	5	49
59	5	77
60	6	51
61	7	60
62	8	78
63	8	16
64	4	53
65	1	62
66	1	71
67	1	80
68	1	65
69	5	93
70	6	44
71	7	9
72	6	72
73	7	46
74	8	99
75	8	2
76	2	39
77	4	24
78	4	66
79	2	42
80	1	70
81	5	79
82	5	97
83	5	58
84	6	13
85	7	76
86	8	85
87	8	94
88	8	68
89	6	25
90	4	10
91	1	61
92	2	37
93	5	83
94	7	71
95	7	45
96	8	11
97	6	20
98	4	5
99	4	14
\.


--
-- Data for Name: film_subs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.film_subs (film_subs_id, sub_id, film_id) FROM stdin;
0	67	21
1	1	37
2	47	88
3	79	97
4	50	35
5	36	82
6	19	47
7	92	85
8	58	15
9	63	94
10	80	57
11	6	13
12	87	74
13	33	81
14	2	79
15	64	8
16	56	88
17	78	13
18	14	78
19	78	83
20	15	70
21	9	33
22	30	42
23	6	84
24	47	16
25	30	47
26	41	12
27	6	15
28	75	69
29	2	65
30	33	16
31	85	65
32	2	16
33	56	96
34	31	55
35	14	55
36	3	31
37	13	27
38	32	85
39	32	74
40	90	52
41	98	83
42	82	17
43	76	44
44	90	98
45	17	76
46	52	85
47	50	81
48	72	32
49	2	15
50	19	71
51	2	47
52	22	76
53	73	87
54	89	13
55	32	62
56	51	90
57	4	71
58	78	77
59	4	22
60	65	14
61	5	94
62	71	92
63	48	62
64	92	71
65	94	80
66	42	76
67	10	79
68	73	17
69	53	46
70	85	6
71	74	51
72	78	12
73	97	46
74	47	91
75	28	68
76	65	75
77	28	42
78	70	3
79	9	53
80	5	66
81	27	77
82	2	41
83	62	70
84	33	12
85	0	92
86	51	69
87	12	4
88	96	7
89	24	36
90	72	52
91	87	29
92	35	94
93	53	10
94	53	85
95	89	66
96	17	60
97	88	37
98	90	33
99	3	47
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.genre (g_name, genre_id) FROM stdin;
Action	0
Comedy	1
Drama	2
Fantasy	3
Horror	4
Mystery	5
Romance	6
Thriller	7
Western	8
\.


--
-- Data for Name: havingg; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.havingg (havingg_id, director_id, director_awards_id, year_) FROM stdin;
0	49	3	1975
1	17	80	1989
2	8	5	1980
3	5	52	1997
4	75	15	1990
5	11	94	2006
6	40	37	1991
7	33	66	1984
8	84	99	1984
9	95	13	1991
10	53	51	1991
11	93	51	2016
12	53	12	1998
13	45	31	2009
14	37	36	1983
15	38	78	1988
16	49	10	1978
17	43	89	2016
18	13	86	2004
19	7	95	1981
20	91	30	1997
21	5	7	1998
22	75	16	1991
23	29	76	2021
24	77	52	2015
25	69	19	1994
26	50	28	1976
27	81	93	2018
28	72	41	2016
29	53	76	2014
30	81	20	2017
31	3	52	1997
32	74	77	2014
33	20	19	2014
34	67	70	2021
35	31	77	1994
36	35	27	1986
37	98	38	1997
38	51	53	1991
39	89	87	1988
40	76	90	1996
41	28	22	1993
42	91	0	1991
43	17	2	2010
44	60	27	1984
45	75	90	1998
46	19	29	1982
47	10	38	2008
48	44	44	1993
49	45	47	2002
50	86	41	2015
51	97	80	2015
52	62	87	2006
53	84	54	1981
54	85	23	2007
55	89	62	1997
56	98	44	1994
57	89	53	1995
58	96	98	1988
59	55	10	1988
60	48	52	2012
61	5	28	1982
62	29	93	1999
63	81	89	2005
64	39	59	2011
65	85	88	2005
66	81	66	1993
67	39	58	1989
68	56	71	1996
69	32	12	1998
70	51	41	1994
71	59	79	1995
72	59	72	2018
73	4	72	2017
74	17	29	1993
75	35	52	1986
76	9	12	1977
77	6	54	2011
78	17	53	2005
79	58	79	2005
80	50	84	1986
81	61	90	2010
82	11	18	2017
83	93	86	2006
84	74	31	2013
85	52	4	2014
86	67	34	1989
87	95	14	2006
88	67	12	2011
89	34	21	2007
90	65	79	2013
91	68	46	2013
92	29	91	1978
93	15	17	2018
94	26	83	2021
95	68	23	1977
96	57	92	1989
97	79	66	2018
98	61	75	1983
99	19	27	1990
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.languages (lang_name, languages_id) FROM stdin;
Samoan	0
Javanese	1
Romansh	2
Galician	3
Turkmen	4
Norwegian	5
Czech	6
Yiddish	7
Pushto	8
Pali	9
Sundanese	10
Cree	11
Italian	12
Interlingua	13
Latvian	14
Sindhi	15
Esperanto	16
French	17
Occitan	18
South Ndebele	19
Turkish	20
Burmese	21
Limburgan	22
Irish	23
Swedish	24
Urdu	25
Chechen	26
Gaelic	27
Tsonga	28
Bambara	29
Danish	30
Armenian	31
Slovak	32
Oriya	33
Manx	34
Zulu	35
Korean	36
Russian	37
Kanuri	38
Northern Sami	39
Japanese	40
Polish	41
Tigrinya	42
Nauru	43
Norwegian Nynorsk	44
Ojibwa	45
Maori	46
Ewe	47
German	48
Western Frisian	49
Inuktitut	50
Avestan	51
Chinese	52
Oromo	53
English	54
Telugu	55
Akan	56
Bashkir	57
Estonian	58
Zhuang	59
Tonga	60
Ido	61
Persian	62
Croatian	63
Luba-Katanga	64
Lao	65
Central Khmer	66
Tagalog	67
Breton	68
Twi	69
Kazakh	70
Chuvash	71
Bislama	72
Wolof	73
Chamorro	74
Mongolian	75
Bengali	76
Abkhazian	77
Tswana	78
Greek	79
Bihari languages	80
Herero	81
Hindi	82
Hebrew	83
Cornish	84
Tahitian	85
Ganda	86
Panjabi	87
Church Slavic	88
Georgian	89
Gujarati	90
Kalaallisut	91
Inupiaq	92
Xhosa	93
Kikuyu	94
Ukrainian	95
Spanish	96
Sardinian	97
Amharic	98
Marshallese	99
Sanskrit	100
Nepali	101
Tamil	102
Quechua	103
Bosnian	104
Hausa	105
Indonesian	106
Hiri Motu	107
Romanian	108
Walloon	109
Uzbek	110
Fulah	111
Afar	112
Kurdish	113
Swahili	114
Tajik	115
Guarani	116
Vietnamese	117
Shona	118
Uighur	119
Kongo	120
Interlingue	121
Bulgarian	122
Sotho, Southern	123
Macedonian	124
Arabic	125
Basque	126
Ndonga	127
Chichewa	128
Rundi	129
Swati	130
North Ndebele	131
Sichuan Yi	132
Sinhala	133
Dzongkha	134
Welsh	135
Hungarian	136
Venda	137
Kuanyama	138
Kirghiz	139
Sango	140
Serbian	141
Lingala	142
Finnish	143
Assamese	144
Aragonese	145
Somali	146
Catalan	147
Tibetan	148
Latin	149
Corsican	150
Yoruba	151
Aymara	152
Marathi	153
Faroese	154
Albanian	155
Avaric	156
Igbo	157
Malay	158
Haitian	159
Thai	160
Azerbaijani	161
Luxembourgish	162
Divehi	163
Afrikaans	164
Malayalam	165
Kashmiri	166
Malagasy	167
Dutch	168
Lithuanian	169
Belarusian	170
Navajo	171
Maltese	172
Slovenian	173
Kinyarwanda	174
Tatar	175
Komi	176
Icelandic	177
Kannada	178
Portuguese	179
Fijian	180
Ossetian	181
\.


--
-- Data for Name: play; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.play (play_id, video_resolution_id, film_id) FROM stdin;
0	0	95
1	3	88
2	2	53
3	2	17
4	0	30
5	0	33
6	1	73
7	1	0
8	2	0
9	3	56
10	2	72
11	3	85
12	3	33
13	2	13
14	0	75
15	2	29
16	2	20
17	0	47
18	0	56
19	1	26
20	0	4
21	3	33
22	3	36
23	2	84
24	1	14
25	3	89
26	0	52
27	1	83
28	0	86
29	0	96
30	3	50
31	1	92
32	2	57
33	0	57
34	0	99
35	3	77
36	3	42
37	1	7
38	0	84
39	1	86
40	1	15
41	2	99
42	0	28
43	3	15
44	2	63
45	1	60
46	2	59
47	3	11
48	1	65
49	3	20
50	0	72
51	1	87
52	0	52
53	3	74
54	2	59
55	1	32
56	3	66
57	0	28
58	1	30
59	0	40
60	0	49
61	3	91
62	0	23
63	1	52
64	3	88
65	2	96
66	2	61
67	0	26
68	0	28
69	2	35
70	0	31
71	1	78
72	3	5
73	3	89
74	3	20
75	1	49
76	0	94
77	0	94
78	1	6
79	3	25
80	0	65
81	0	32
82	3	15
83	0	28
84	2	93
85	0	89
86	3	34
87	2	63
88	1	76
89	0	41
90	0	91
91	0	85
92	0	16
93	1	17
94	2	14
95	1	13
96	3	94
97	1	93
98	0	39
99	2	70
\.


--
-- Data for Name: production_company; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.production_company (pc_name, production_company_id) FROM stdin;
game few	0
on value	1
alone before	2
many none	3
decide look	4
decision others	5
present despite	6
walk candidate	7
popular maybe	8
exist trial	9
development discover	10
use past	11
speech mean	12
back artist	13
guess believe	14
boy single	15
time something	16
beyond window	17
minute experience	18
president environment	19
lot garden	20
sure standard	21
check politics	22
democratic town	23
design color	24
staff pass	25
middle before	26
another leave	27
program day	28
lawyer pattern	29
forward special	30
later sing	31
own head	32
take network	33
interest student	34
economy recently	35
major business	36
simply value	37
source especially	38
pass probably	39
gas pay	40
summer couple	41
arm agreement	42
job research	43
though building	44
blood son	45
friend describe	46
few prove	47
perform soldier	48
fire participant	49
thought in	50
meet agreement	51
develop learn	52
some action	53
news quite	54
specific increase	55
can certain	56
right goal	57
TV information	58
thank might	59
professional knowledge	60
could after	61
maintain little	62
show particular	63
stay stay	64
alone become	65
lawyer dog	66
huge part	67
professional use	68
soon letter	69
president but	70
meet treat	71
onto use	72
item once	73
everything including	74
entire safe	75
try better	76
factor give	77
car maintain	78
get space	79
describe alone	80
food determine	81
fast often	82
significant change	83
as group	84
head Democrat	85
nearly quickly	86
air control	87
so not	88
such financial	89
other fire	90
serious remember	91
natural kind	92
have apply	93
difference ever	94
car home	95
owner foot	96
ball face	97
some collection	98
concern third	99
\.


--
-- Data for Name: production_films; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.production_films (production_films_id, production_company_id, film_id) FROM stdin;
0	26	88
1	69	1
2	82	77
3	90	39
4	16	42
5	82	5
6	11	86
7	41	81
8	21	95
9	94	37
10	10	96
11	25	73
12	72	74
13	10	19
14	74	15
15	10	30
16	99	8
17	66	36
18	22	65
19	98	80
20	3	91
21	26	54
22	15	67
23	55	63
24	1	44
25	71	24
26	79	20
27	36	97
28	57	62
29	82	9
30	92	56
31	6	34
32	29	95
33	42	15
34	25	72
35	22	21
36	97	95
37	68	44
38	14	40
39	36	58
40	13	13
41	36	28
42	82	93
43	28	70
44	83	67
45	80	4
46	6	1
47	41	16
48	60	90
49	10	93
50	2	73
51	34	37
52	31	82
53	11	12
54	3	21
55	54	46
56	70	77
57	12	48
58	15	25
59	26	5
60	24	89
61	47	92
62	28	84
63	17	62
64	83	84
65	27	41
66	19	10
67	50	53
68	25	77
69	22	7
70	32	49
71	97	89
72	16	85
73	24	15
74	53	8
75	90	20
76	65	80
77	16	38
78	40	3
79	17	50
80	6	48
81	21	57
82	63	19
83	21	91
84	6	75
85	50	43
86	74	76
87	30	89
88	91	18
89	10	32
90	44	48
91	93	22
92	54	78
93	3	53
94	89	14
95	88	99
96	24	64
97	55	79
98	5	75
99	77	37
\.


--
-- Data for Name: rate_review; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.rate_review (rate_review_id, rrate, review_id, users_id) FROM stdin;
0	8	35	37
1	6	55	64
2	9	59	3
3	5	83	76
4	10	0	41
5	8	30	90
6	8	75	14
7	7	92	99
8	6	48	94
9	3	80	24
10	7	92	91
11	9	40	39
12	1	81	95
13	2	87	52
14	6	44	12
15	3	53	21
16	9	85	66
17	9	97	40
18	9	97	65
19	8	55	74
20	8	15	52
21	7	97	50
22	5	43	63
23	7	13	92
24	4	48	62
25	8	48	0
26	3	41	51
27	2	9	16
28	6	92	80
29	4	52	37
30	1	93	1
31	2	62	10
32	7	39	58
33	1	98	28
34	10	37	79
35	3	86	37
36	8	16	86
37	1	4	5
38	6	55	76
39	8	32	56
40	10	28	87
41	3	47	10
42	9	16	0
43	1	49	7
44	8	61	10
45	2	58	23
46	9	33	6
47	1	93	89
48	2	64	31
49	4	45	41
50	8	14	20
51	6	67	98
52	7	74	46
53	10	3	26
54	9	51	0
55	8	26	71
56	1	17	83
57	2	90	65
58	10	77	93
59	5	60	71
60	8	81	71
61	9	94	82
62	7	81	49
63	10	44	12
64	4	50	39
65	2	0	16
66	1	4	56
67	6	95	34
68	9	36	48
69	10	56	77
70	2	47	80
71	10	1	51
72	9	69	86
73	2	80	79
74	7	60	60
75	4	69	62
76	9	33	45
77	4	25	18
78	6	8	79
79	1	91	79
80	10	51	88
81	3	85	97
82	7	74	40
83	7	96	3
84	7	95	80
85	5	1	94
86	3	34	23
87	7	24	6
88	9	89	28
89	1	46	8
90	8	99	0
91	6	28	7
92	9	38	56
93	10	5	39
94	7	15	90
95	7	93	95
96	5	61	84
97	7	31	36
98	4	54	90
99	7	0	96
\.


--
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.review (summary, rate, review_id, date, film_id, users_id) FROM stdin;
Become I fill stand partner for increase grow. Ok break quite car experience. Per family dream among.\nCultural about speech lead.	9	0	1991-12-27	96	21
Position wonder suggest modern car. One tax visit add usually apply. Worry main official challenge whom.	9	1	1978-04-09	69	53
Foot Republican his agent. Least official glass teacher without end. Minute use must mind.\nDifficult form choose. Project strong condition product career work. Hit rule gun.	8	2	2007-06-12	36	95
Hand movement south. Himself owner example room quite sport process. Along thought production number state treatment fast.	5	3	1975-05-05	82	93
Style purpose size record question third. Season senior individual building take. Organization how begin what peace.\nSystem region control send. Service I of.	9	4	2004-09-06	17	4
Statement blue officer investment. Time side green meeting.\nWrong Mrs owner plant with.\nField interview Congress we. One music different attack good without along.	5	5	1972-03-10	8	84
Case six close newspaper health blue. Writer small last guy himself. Congress today ability before.	8	6	2004-12-26	79	47
Gun reach alone step step. Off quality product example investment close phone return. Bag personal we four everyone.\nFree price as source. Pick analysis lose friend.	10	7	1972-07-03	75	19
Style prepare war only possible talk fish wait. Religious occur media majority book save. Father small full challenge computer.	6	8	2002-07-25	6	14
First we under first responsibility better. Deep another nice your job science listen. North religious sell different surface sister.	3	9	2009-02-25	82	59
Leg ahead man area break work. Of dog street government night necessary. Finally send field leg manager relate practice.	10	10	2009-01-17	75	68
Method reflect movie speak.\nHuge board control theory. Republican better mention water. Material tax space increase room small.	1	11	2015-06-07	9	13
Firm Mr grow remember. Show later measure teach more school baby. Until work our brother much.\nFace specific indeed animal recent house right. Blood summer majority purpose more happen.	5	12	1979-12-29	84	25
Quickly would with science dinner join weight feeling. Treat single compare piece research continue.\nLook perform whatever employee.	3	13	2021-06-26	25	47
Peace production laugh former century main writer. Per back bit remain product letter market per.\nScience moment prove school environmental we production. Write test south end inside.	4	14	2018-10-06	54	6
Piece indeed add hand type short. Talk garden education bring each question. Feeling education no goal have improve. So reduce treatment young.	9	15	2014-08-29	56	15
Moment hot hour born. Within growth table well. Appear same just themselves. Affect near ok yourself.\nAttention and dream reality would phone walk. Particularly strategy if huge city responsibility.	10	16	1985-04-14	88	30
Street Congress party police serious light coach. Institution just life degree local prepare today nation. Save care plan across speech knowledge.	2	17	1981-06-11	22	64
Way well author deep material catch or. Message force wife remember newspaper cut black. Write each approach.\nRelationship word prepare life.	1	18	1990-04-10	32	75
Front factor air purpose network base. Hit can fine century news environmental stage. Policy government picture prove brother while painting.\nYes realize toward. Reveal range although.	8	19	2016-02-24	24	74
American few skin hot section still reality. Year which fill many require against responsibility road. Church finally name education network million change. Well white laugh least reason wide.	1	20	1993-01-16	7	41
Brother cover recently see fear successful out later. Hair build after use. Mrs word significant former.\nLearn cut full court seat north have.	9	21	2023-02-24	38	19
As standard although response meet service. Hand choice item of safe campaign any value. Ability apply sit make all top movement.	10	22	1999-08-09	97	79
Employee site this baby. Save best much film street we plan.\nPolicy perform stage method democratic method. Word control suggest like particular often likely perform.	7	23	1970-12-13	13	92
Suddenly measure second help. Any send stage black participant appear customer reveal. Staff new choose system.	1	24	1989-07-31	55	20
Sign fear age tell example. Rich wonder guess just although last. Keep million product whom scene man daughter arrive.\nRegion site live rate senior reflect. Consider child cut forget official accept.	2	25	2014-12-03	70	79
Understand picture minute trial watch throughout all our. Politics already employee decision and allow. Tend center born administration medical just.	4	26	2019-01-11	46	42
Impact carry his might want. Well body work skill.\nOnly even energy professional already point red price. Town decision task they sometimes future increase raise.	1	27	1998-09-22	28	36
Evening decade political leg.\nHalf cut like example media policy deal. Look inside road note economy.\nManager how she vote really have enter.\nThis memory town.	3	28	1993-10-07	47	58
Third while and situation night attack happy. Data television challenge fact believe east.\nDuring reach force. Individual top offer yet option here. Claim keep meeting either manage lawyer.	6	29	1978-09-21	28	90
Picture rise rock third but before. Only start including get recognize according.\nArt case radio baby use. Low collection us knowledge available.	4	30	1983-05-30	75	73
Nearly far without sometimes. Nothing spend central late concern contain.\nInclude he film throughout reveal. Choice picture thousand we.	7	31	1970-07-31	93	98
Cold police assume great. Above show wait write green.\nApply senior such article gun. Suddenly exist support item describe.\nMarriage she figure. Allow listen year happen today.	9	32	1971-09-14	62	43
Fly anything avoid across. For loss up generation. Structure also parent rule.\nBillion hope according treatment. Century address employee challenge begin. Area road food senior ground.	6	33	1983-12-16	25	81
Become radio open discussion. Thus trouble summer up.\nPainting major purpose little series region these. Detail child feel close young. Power believe once catch machine loss.	9	34	2014-04-13	39	26
Clearly town though major just red carry. Buy suggest phone structure bring effect.\nHead baby marriage instead hair view. Want air level level help prove each. Idea senior huge.	5	35	2005-01-03	89	34
Or notice stand tax factor he change. Good director politics authority down condition half.	6	36	1977-03-27	26	49
Level include never beautiful write account. Water stay couple military.\nAnother by trial be pass. Beautiful foot you office. Wife best rich.	8	37	1993-03-02	7	10
Poor out address other dinner. Show teacher five improve bring manage remain.\nMyself which one over remember article. Thus wear Democrat time idea. Stand position down avoid key big character.	5	38	2012-01-29	26	88
Across cultural type prepare three public forward. Series successful consumer perhaps thing boy increase.\nOut look require throughout. Money single exactly maintain we smile decade.	9	39	1998-08-08	59	65
Nature second TV part. Audience bed figure crime experience house. Front city throw evidence imagine story run.\nSort wall big child course.\nEconomic collection class medical pressure.	7	40	2005-07-18	90	94
Move condition bit strategy shoulder center get. Structure focus size conference.\nInstead free could meeting argue. Very study final another protect lawyer everything.	1	41	2007-09-10	16	92
Heart yes administration I accept new do. Operation class last goal. Owner part effect offer still least.	2	42	1986-10-04	68	22
Worry generation perhaps church. Plan for lot deep decide. Kid high able although suggest fill including.\nPerformance her safe central pressure. Half start myself sense according many.	7	43	1972-11-02	36	89
Garden finish read country real experience interest forget. Safe police thing attack do. Oil blood wide evening prepare kid beat.	6	44	2020-02-13	60	18
Middle push from scene could everyone. Red generation seven production traditional.\nDeal catch some cold whatever note outside. Be nor worker show friend. Manager fight rest specific send.	3	45	1981-11-10	21	4
Quite home source education purpose meeting particular church. Understand experience also style kid customer respond.	1	46	1977-03-27	41	85
Public increase kitchen scientist. Fish brother others too staff. Western interesting good someone. Magazine position significant each develop usually tough.	2	47	1984-09-08	52	50
Use wife do. Stage nor eight true. Mean big these bill.\nDark mission media compare group role. Low than he wonder might task thank. Fear paper agency impact garden spring style.	3	48	1972-12-30	41	23
Lay represent participant road same. Sound never I training course.\nEntire clearly wonder everyone concern price. Medical business police head people physical. War officer say.	5	49	1992-06-03	33	84
Quickly no prevent exactly thought term officer meet. Yet artist west blood seem if.\nDeal wall safe six system believe. Central north campaign attention.	7	50	2016-08-08	33	29
Bed particularly decision. Teach tough series impact full cup message. Though prove dream spring fly reason world TV.\nOpportunity sing window would.	4	51	1986-05-08	85	22
Its certain data fine. Realize relationship woman political. Spend hit television election.\nTree start issue within. Up act seat family system him meet. Look class leave knowledge.	2	52	1997-08-05	64	71
Student society commercial seek but read.\nSign see top easy market. Late break data suffer threat become. Window four resource too.	3	53	1972-06-10	73	73
Wife stuff free grow. Young they difference recent.\nSomeone member skin better although wonder hotel. Mouth cover member job. Add include avoid free relate.	10	54	2016-05-21	93	69
Gas ball media reduce exist. Or want lay boy fight.\nRed fact relationship. Consider wall life apply task account measure. Clear necessary yeah middle training sell say.	4	55	1992-10-18	64	9
House participant doctor real. Sometimes trial lead letter southern. Event poor itself.\nParticular game cell meeting out ground mind. Marriage reflect available break discussion sister edge.	6	56	1999-04-15	20	41
Law thank part television expect still. Account husband cover senior movie. Everyone along cost skill wonder rise agreement.	1	57	1994-12-12	85	49
Finish produce significant maybe deep ball kitchen. Idea let contain pay with similar natural.	3	58	1985-06-19	32	88
Grow attack how by out because summer. Light forward partner born police.	1	59	1971-07-20	85	94
Cultural clear money manager animal guess fact. Through western sell.\nHis than daughter system. Technology ground defense structure week cultural.	1	60	1993-12-26	96	55
Some have cause reason financial soldier. Loss science again pressure friend. Financial before low different.	5	61	2003-05-07	35	86
Fund assume money growth question. Road teach bank put.\nForm president make hard. Often approach hope cost alone food.	7	62	1994-11-07	55	29
Seem leave white you lot particular. Role matter discussion relate order. Fire I seek do civil.	1	63	2018-06-22	26	73
Usually cell no life. Team sister little among financial road.\nColor window toward simply remain. Skill draw life much.	7	64	2014-06-08	88	38
Smile understand we food something late would agree. Nature point practice everybody sell. Water join add cup each.	1	65	2000-09-10	55	53
Power of argue theory heavy government. Trial quality other summer book before success.	3	66	2022-12-17	63	47
Event price beat remember figure. Career school member operation.\nChurch box better inside. Watch pass politics per project. Spring work magazine person firm according speak.	9	67	1991-05-13	9	78
Clearly television detail analysis. Both husband rule opportunity. Machine industry instead wrong.\nEconomic sit seven feel less middle. Believe Republican father position wait.	9	68	2008-05-17	5	23
Word weight that. Seven stage town sing he. Never become east some figure skill whole.\nShow who science society. Trial what paper effect foreign hair ahead. Doctor door ago avoid eye only.	2	69	1985-11-18	68	65
Discover lead value process. Event ten surface very table. Dream management successful resource real participant.	7	70	2018-09-15	71	62
Effect term cultural great address fund. Agent century participant I beat. Perhaps leader blood.\nTravel fall job drop.\nKnow camera watch. Response market present by.	4	71	1970-08-14	15	71
Second same beyond.\nPressure situation drug save only detail would difficult. Eat agreement religious source.	2	72	1984-04-27	42	22
Father year technology several catch. Box guy try old visit.\nPolice probably director indeed. Wait necessary away expert themselves still.	4	73	1973-03-26	61	57
Commercial development as blue most dark risk. Two police of for now build reduce. Grow approach start arrive both.	6	74	1981-10-10	19	20
Recognize cost interesting meeting nearly recognize usually. Court fear question officer head station. Company guy scene over follow might beautiful.	2	75	2000-08-02	93	58
Color view environmental describe. Fight story Mrs view. Especially side into generation book already board. Board place spring head down hope.	4	76	1979-09-24	34	55
New former draw amount. Note start already military put lawyer newspaper. Local field player more use so answer. Person usually brother record camera.	9	77	1988-05-04	3	49
Car personal design miss season area year. Recently enter skin attack develop find career raise.	9	78	2018-04-17	86	8
Arrive store should into executive those recently. Give apply perform use she.\nWithout value time book. Tree institution sell resource.	4	79	1990-09-19	70	18
Threat federal this key issue response. Life plant plant eight behind next.\nTrue personal card think cultural because party. Require music they.\nEight society produce. Data think walk policy north.	7	80	2012-07-27	89	90
Green parent level usually candidate bag operation pressure.\nGive price talk social. Treatment they the yeah. Recently minute ever upon low.	10	81	2010-04-09	87	28
Send particular practice reduce. Look bill four join marriage. Almost significant parent.	6	82	1997-01-31	16	8
Citizen reduce production area investment. Professional others ever dark.\nPower over then social ball.\nMajor human past month along else five and. Network me military it learn wife color.	6	83	2017-04-12	43	37
Itself past million indeed various beautiful. Always charge success unit return environment line. Daughter along despite.	1	84	1974-04-28	13	68
View fish election risk find tough under. Mind most really state improve.\nSubject religious lay under surface security little. Leg onto town when wear tonight least. Future can sing be accept of.	4	85	1982-03-11	82	64
Same determine always produce. Yeah keep although key certainly his home energy.\nProvide work newspaper even three.	10	86	1998-07-18	16	87
Southern type bed travel. Land meeting question already fear cold. Up answer popular line position.\nSpend improve idea fund term government. Story true together area. Trouble decide drive drug fund.	6	87	1976-10-06	17	45
One forward purpose blue prepare authority beautiful. Take protect use determine structure. Parent size family already.\nParticipant guess apply go thousand. Compare experience practice summer.	2	88	2012-12-10	6	79
Mouth travel oil practice everything pull and. Inside dream information ability section.	1	89	2019-05-14	77	53
Will my chance pass detail. Suddenly offer trouble address fly college.\nMight cell bag buy. Clear range significant bad. Sort better strategy box feeling level.	9	90	1974-07-15	93	32
Peace loss thing commercial us industry election. Represent I attorney.\nWithout claim reason. Herself record senior design work. Low agreement paper describe gas.	10	91	2011-06-10	33	10
Child act science true part. Like art keep main sometimes nice scientist human. Station authority mind everybody late commercial financial. Serious back stock study hospital perform bit activity.	1	92	2008-04-20	81	7
Have production six. General read line treat.\nVote hospital star church throughout. Air figure red.	10	93	2018-02-04	61	14
Natural blue record position conference be. Recently really couple turn. Heart soldier that light during agree media create.	1	94	2018-01-20	11	92
Forward beat week. Morning Democrat later ground.\nSupport debate involve cover book not people. Strategy necessary score this politics. Dark support charge movement how often particularly.	6	95	2014-10-20	83	57
Fight sport Republican such special drive.\nBill part marriage. Real region all sell.\nEvening throughout hand protect work law nice. Under interest development final up question.	1	96	1982-09-15	20	46
Individual brother deal draw again animal race. Stay allow along base order raise. Usually performance fight will military.	3	97	2012-05-06	14	7
East treat look economic husband spend often. South difference thousand such amount scene until spend.\nWindow network difficult. Beautiful continue house change southern.	1	98	2014-06-17	72	87
Always statement figure. Above crime down according wonder stand reduce often. Enough building moment show experience.\nSuffer here enough police tree. Social rise door sister response.	3	99	1986-12-02	67	96
\.


--
-- Data for Name: sub; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.sub (sub_id, sub_last, sub_name) FROM stdin;
0	17:15:38	everybody
1	17:00:05	first
2	18:57:26	evidence
3	22:11:21	traditional
4	23:37:11	say
5	21:18:16	chair
6	22:43:18	national
7	16:31:16	wait
8	10:03:39	vote
9	01:34:47	vote
10	04:06:10	full
11	04:24:42	box
12	07:23:57	suddenly
13	10:20:27	report
14	04:17:56	task
15	07:33:18	night
16	02:47:15	establish
17	19:20:57	job
18	22:19:51	audience
19	03:51:19	speak
20	16:44:38	natural
21	02:53:36	away
22	01:22:48	happy
23	01:40:55	week
24	16:54:42	pick
25	04:32:11	media
26	22:57:01	minute
27	04:13:48	city
28	07:09:52	dog
29	19:54:59	out
30	05:24:28	long
31	21:13:02	piece
32	19:42:11	side
33	13:57:59	themselves
34	10:32:20	current
35	08:35:46	shoulder
36	10:36:05	pass
37	20:11:57	four
38	09:52:06	send
39	21:16:08	drug
40	00:12:08	up
41	09:12:10	color
42	22:24:12	than
43	05:41:27	contain
44	22:05:13	house
45	19:56:40	loss
46	21:43:08	mind
47	13:40:13	recent
48	04:52:00	quality
49	03:17:20	very
50	14:38:06	those
51	02:58:15	community
52	22:17:27	down
53	19:11:05	car
54	20:24:02	employee
55	14:39:19	painting
56	19:06:30	direction
57	19:11:01	use
58	05:02:31	month
59	20:00:31	clear
60	02:24:10	woman
61	21:44:08	especially
62	20:22:22	attorney
63	13:28:15	laugh
64	20:54:28	around
65	07:50:45	seek
66	15:39:34	machine
67	10:30:56	different
68	20:28:27	detail
69	09:35:28	them
70	19:17:20	not
71	03:18:30	drop
72	08:49:06	effort
73	08:27:27	history
74	06:15:37	baby
75	16:39:09	rather
76	02:31:55	travel
77	08:42:01	total
78	04:08:47	respond
79	16:44:36	find
80	14:59:32	represent
81	07:48:30	year
82	08:29:10	campaign
83	03:51:12	executive
84	01:50:59	respond
85	20:01:07	establish
86	06:53:31	social
87	03:00:52	tree
88	04:26:53	ball
89	05:13:34	eight
90	13:51:58	card
91	12:19:56	him
92	17:42:18	machine
93	01:12:28	current
94	22:20:59	east
95	10:37:27	include
96	11:05:19	talk
97	16:44:28	today
98	20:35:19	Mr
99	06:11:37	teacher
\.


--
-- Data for Name: use; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.use (use_id, users_id, languages_id) FROM stdin;
0	35	53
1	98	1
2	78	84
3	18	64
4	26	1
5	82	65
6	83	18
7	69	26
8	41	61
9	29	13
10	75	38
11	56	52
12	33	21
13	10	50
14	20	34
15	85	24
16	67	39
17	51	14
18	3	72
19	78	48
20	96	92
21	18	53
22	7	79
23	5	20
24	47	85
25	41	86
26	6	28
27	72	37
28	30	47
29	10	76
30	45	94
31	64	5
32	74	47
33	3	23
34	56	3
35	32	35
36	20	79
37	68	95
38	78	67
39	36	94
40	67	52
41	7	54
42	29	99
43	71	70
44	5	78
45	6	47
46	61	6
47	27	19
48	61	86
49	30	97
50	33	29
51	93	0
52	34	67
53	93	5
54	39	88
55	89	13
56	51	48
57	24	64
58	78	99
59	13	22
60	79	51
61	47	14
62	59	27
63	29	17
64	29	48
65	50	80
66	27	59
67	44	1
68	25	84
69	74	20
70	62	6
71	3	49
72	43	54
73	96	21
74	55	8
75	55	35
76	99	96
77	28	89
78	65	70
79	29	52
80	15	60
81	60	0
82	73	9
83	93	86
84	85	72
85	20	31
86	20	40
87	1	14
88	36	76
89	34	54
90	96	61
91	96	24
92	37	69
93	68	5
94	48	72
95	77	17
96	38	63
97	6	61
98	27	22
99	15	66
\.


--
-- Data for Name: user_films; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_films (user_films_id, listname, film_id, users_id) FROM stdin;
0	why	78	33
1	throughout	24	29
2	go	36	80
3	trouble	60	48
4	approach	84	42
5	than	37	54
6	teacher	3	36
7	big	98	87
8	country	89	19
9	book	35	48
10	near	96	90
11	college	47	60
12	later	71	20
13	feeling	75	90
14	without	52	78
15	effect	22	74
16	stop	66	94
17	wait	86	90
18	door	97	60
19	owner	96	38
20	health	15	84
21	many	67	23
22	bit	65	54
23	choice	90	28
24	lawyer	28	22
25	become	40	9
26	recent	5	38
27	if	44	98
28	other	50	77
29	happy	61	55
30	kid	81	84
31	statement	33	29
32	environment	73	6
33	live	85	67
34	scientist	51	18
35	team	86	86
36	approach	16	73
37	public	6	57
38	a	80	45
39	task	41	74
40	station	33	14
41	which	58	90
42	fear	3	37
43	fish	43	15
44	building	34	71
45	interest	36	18
46	however	9	25
47	data	80	63
48	guy	92	97
49	turn	58	67
50	page	81	41
51	course	33	28
52	military	12	53
53	leader	97	30
54	wide	35	4
55	central	55	81
56	her	99	58
57	kind	72	3
58	trade	70	86
59	theory	55	37
60	speech	5	45
61	commercial	58	65
62	look	9	25
63	attack	42	90
64	dinner	80	38
65	interesting	91	55
66	include	60	41
67	understand	78	82
68	factor	89	5
69	language	55	47
70	already	53	25
71	listen	99	22
72	than	58	93
73	identify	28	11
74	despite	7	76
75	yet	79	65
76	meeting	82	35
77	where	7	64
78	even	27	22
79	focus	39	12
80	sort	23	94
81	interest	84	33
82	course	87	6
83	eye	64	11
84	training	17	70
85	project	14	94
86	art	26	99
87	certainly	57	55
88	reach	90	38
89	inside	0	28
90	share	71	75
91	billion	84	10
92	wish	60	70
93	identify	66	79
94	right	4	72
95	relationship	16	37
96	stay	47	77
97	enough	34	58
98	at	3	50
99	up	7	62
100	wish	19	5
101	everything	30	87
102	series	62	90
103	federal	54	54
104	relationship	20	11
105	trial	41	96
106	democratic	44	53
107	only	10	66
108	reach	2	60
109	hundred	77	44
110	develop	68	58
111	range	92	77
112	subject	89	37
113	Congress	48	44
114	note	20	65
115	risk	23	77
116	same	44	33
117	remember	72	47
118	own	65	72
119	choose	22	17
120	personal	88	97
121	involve	25	67
122	offer	49	1
123	whose	55	82
124	food	80	68
125	religious	63	38
126	test	94	12
127	minute	21	1
128	Democrat	96	4
129	order	93	18
130	reflect	44	83
131	training	46	21
132	thus	15	84
133	training	70	89
134	should	50	19
135	friend	36	92
136	college	8	77
137	drop	23	16
138	occur	29	25
139	actually	41	15
140	may	52	46
141	thing	93	59
142	good	39	62
143	court	68	36
144	thing	26	25
145	pull	18	90
146	do	24	63
147	suddenly	36	27
148	here	69	33
149	mission	47	32
150	game	28	24
151	father	40	4
152	fall	4	43
153	similar	62	99
154	study	86	80
155	medical	18	70
156	student	98	40
157	either	28	47
158	firm	40	8
159	dark	92	66
160	low	8	44
161	you	73	49
162	scientist	39	50
163	eat	74	93
164	each	24	72
165	before	36	63
166	fine	28	59
167	more	40	62
168	me	92	73
169	rise	63	22
170	far	75	27
171	to	40	92
172	professor	41	34
173	time	33	63
174	her	52	31
175	through	44	91
176	learn	10	29
177	company	22	76
178	accept	20	30
179	director	88	13
180	develop	67	83
181	age	65	50
182	save	90	99
183	them	9	30
184	never	28	64
185	better	47	98
186	keep	92	40
187	this	44	92
188	find	54	82
189	tough	53	73
190	board	32	42
191	work	84	10
192	dream	14	88
193	game	98	27
194	focus	36	23
195	character	55	36
196	account	96	49
197	close	48	96
198	test	38	99
199	school	50	82
200	sense	41	43
201	treat	52	50
202	group	44	46
203	return	2	93
204	cold	0	86
205	water	12	18
206	I	59	53
207	personal	78	43
208	price	89	68
209	where	55	99
210	their	34	67
211	two	65	11
212	stand	16	41
213	fire	28	46
214	star	81	47
215	pull	81	16
216	something	12	30
217	mind	31	42
218	picture	97	0
219	of	55	36
220	research	53	96
221	fact	78	57
222	dark	28	47
223	boy	65	76
224	cover	58	90
225	we	49	67
226	water	69	59
227	take	62	72
228	rate	8	66
229	argue	18	11
230	must	20	6
231	natural	85	87
232	office	84	79
233	employee	0	63
234	start	11	59
235	daughter	13	37
236	indicate	23	98
237	culture	96	49
238	nice	88	88
239	change	57	40
240	actually	80	78
241	home	6	39
242	different	30	95
243	able	54	69
244	send	19	40
245	water	85	50
246	cold	51	23
247	final	41	31
248	determine	34	37
249	look	37	47
250	last	56	7
251	need	57	72
252	those	9	16
253	charge	14	51
254	party	90	78
255	cup	81	10
256	bad	73	87
257	laugh	19	17
258	certain	93	30
259	away	30	73
260	six	75	59
261	also	65	88
262	back	2	53
263	radio	46	60
264	capital	97	65
265	small	7	33
266	process	18	56
267	democratic	48	88
268	medical	41	62
269	material	72	65
270	trade	99	24
271	coach	65	68
272	six	57	69
273	million	2	71
274	fall	61	34
275	couple	30	30
276	she	36	46
277	physical	73	43
278	operation	30	16
279	clearly	63	59
280	ok	95	79
281	plant	34	4
282	behind	4	1
283	central	37	45
284	also	76	52
285	modern	14	68
286	federal	38	98
287	defense	98	82
288	hospital	49	78
289	born	55	45
290	increase	8	96
291	something	18	19
292	election	79	78
293	across	52	55
294	baby	56	6
295	first	88	75
296	of	74	89
297	public	56	24
298	law	3	35
299	represent	27	60
300	finally	30	91
301	outside	91	85
302	how	42	17
303	security	8	29
304	contain	72	82
305	marriage	81	68
306	star	51	13
307	member	68	50
308	relationship	59	59
309	boy	38	24
310	heart	16	6
311	speech	48	13
312	occur	59	60
313	you	17	52
314	security	83	72
315	figure	40	29
316	foot	6	20
317	tough	64	12
318	difference	3	30
319	anyone	20	62
320	his	25	4
321	finish	38	65
322	far	3	10
323	other	35	16
324	listen	55	12
325	religious	88	25
326	gun	79	68
327	blood	36	58
328	find	94	9
329	race	5	52
330	bill	44	99
331	off	50	91
332	include	21	82
333	exactly	8	7
334	party	39	16
335	board	85	51
336	perhaps	56	26
337	whose	76	32
338	there	59	82
339	key	24	27
340	rest	89	23
341	mission	76	19
342	similar	55	94
343	within	48	64
344	there	6	69
345	simply	50	62
346	arm	2	82
347	environment	54	56
348	bed	20	69
349	dinner	32	39
350	nearly	16	64
351	seven	13	49
352	us	99	23
353	hour	16	39
354	trade	21	36
355	cover	41	42
356	region	44	89
357	political	50	98
358	doctor	61	55
359	dark	11	83
360	hold	3	41
361	behavior	95	19
362	movement	87	59
363	hotel	59	35
364	particular	9	3
365	appear	1	89
366	cold	99	66
367	anyone	50	75
368	police	80	52
369	property	30	99
370	get	10	95
371	analysis	54	69
372	none	0	49
373	parent	24	29
374	recent	70	41
375	performance	17	81
376	back	36	70
377	help	99	69
378	begin	58	74
379	suddenly	77	52
380	manage	61	25
381	ask	6	79
382	seat	30	75
383	should	91	2
384	wonder	94	23
385	left	19	88
386	rather	16	31
387	focus	34	49
388	value	46	54
389	wrong	36	15
390	development	28	93
391	draw	40	38
392	paper	26	78
393	stand	74	13
394	peace	11	38
395	receive	23	16
396	explain	2	12
397	other	87	32
398	move	53	39
399	structure	44	31
400	four	56	96
401	too	76	60
402	keep	68	91
403	hundred	88	5
404	hard	99	95
405	different	38	68
406	single	68	16
407	what	27	37
408	point	31	61
409	least	83	64
410	provide	60	9
411	girl	12	12
412	middle	43	94
413	whole	87	62
414	too	99	80
415	improve	17	41
416	red	22	83
417	marriage	61	44
418	check	67	57
419	theory	61	29
420	way	54	41
421	much	18	55
422	special	4	40
423	may	95	78
424	sport	87	10
425	yeah	57	35
426	stage	77	31
427	pull	14	72
428	certainly	37	81
429	home	57	87
430	through	49	19
431	keep	61	2
432	else	18	31
433	woman	0	82
434	window	31	1
435	law	83	17
436	free	94	77
437	really	54	55
438	second	87	29
439	participant	32	2
440	chair	10	53
441	and	46	57
442	question	57	71
443	but	89	9
444	movie	86	81
445	east	19	55
446	already	17	68
447	spring	83	58
448	she	62	35
449	system	6	41
450	hand	72	87
451	create	95	0
452	image	93	3
453	marriage	64	34
454	network	76	24
455	season	86	49
456	catch	89	44
457	brother	28	18
458	within	48	21
459	prevent	92	17
460	summer	30	42
461	sister	84	71
462	police	52	50
463	sell	4	32
464	base	64	57
465	one	88	27
466	friend	32	47
467	fact	24	54
468	relationship	68	86
469	of	55	60
470	population	80	74
471	heavy	9	21
472	artist	41	31
473	attention	44	51
474	owner	87	77
475	hotel	85	28
476	movie	51	66
477	film	22	40
478	customer	86	61
479	occur	82	77
480	tend	19	12
481	create	11	8
482	community	71	81
483	word	61	57
484	difference	81	40
485	various	3	90
486	have	66	77
487	show	12	71
488	name	51	3
489	purpose	3	63
490	establish	49	76
491	network	89	12
492	care	15	14
493	energy	47	65
494	become	88	97
495	against	46	77
496	note	77	74
497	same	94	12
498	enter	10	67
499	well	73	9
500	record	74	58
501	decide	25	87
502	support	45	83
503	western	37	28
504	role	14	31
505	hour	26	51
506	look	24	12
507	bag	9	71
508	team	77	73
509	image	41	57
510	win	44	95
511	happen	20	19
512	to	59	79
513	serve	78	74
514	about	64	6
515	ahead	32	53
516	rock	35	1
517	teacher	6	48
518	create	58	60
519	live	73	72
520	executive	50	57
521	son	73	35
522	song	12	25
523	other	43	85
524	bring	35	21
525	city	13	97
526	traditional	99	2
527	there	80	56
528	painting	92	64
529	else	69	60
530	when	8	80
531	change	0	12
532	look	19	8
533	suddenly	39	46
534	direction	2	70
535	movement	95	96
536	away	12	74
537	certainly	78	14
538	throughout	84	79
539	picture	36	57
540	author	1	30
541	similar	34	71
542	left	5	80
543	box	58	93
544	hope	77	41
545	value	49	15
546	sense	7	27
547	point	50	89
548	pay	20	85
549	establish	4	37
550	area	16	75
551	us	5	61
552	wall	58	30
553	son	14	4
554	first	80	69
555	east	38	54
556	real	82	96
557	response	48	41
558	ball	74	66
559	study	20	27
560	clear	31	5
561	maintain	4	90
562	usually	25	31
563	arm	44	28
564	score	56	12
565	opportunity	68	17
566	physical	5	97
567	five	3	53
568	put	8	78
569	determine	19	39
570	practice	30	90
571	every	31	86
572	new	83	60
573	new	0	15
574	control	66	75
575	arrive	44	65
576	deal	33	64
577	choose	46	51
578	their	37	82
579	decision	17	76
580	follow	77	89
581	detail	9	21
582	PM	15	97
583	stock	59	71
584	cut	98	45
585	whose	42	18
586	anyone	8	34
587	pattern	11	17
588	instead	31	31
589	science	83	0
590	phone	96	12
591	color	34	18
592	issue	93	85
593	successful	45	46
594	despite	10	88
595	notice	77	33
596	cost	5	89
597	outside	50	63
598	tell	8	8
599	each	18	29
600	key	82	96
601	fast	21	28
602	page	94	70
603	determine	33	66
604	special	25	26
605	lot	64	5
606	respond	14	25
607	center	74	64
608	response	32	38
609	floor	49	40
610	model	61	1
611	trade	26	92
612	produce	90	86
613	fact	42	82
614	TV	75	69
615	exactly	11	76
616	wear	12	20
617	fast	23	46
618	very	84	37
619	but	74	80
620	possible	46	18
621	standard	38	49
622	front	37	52
623	trial	66	26
624	federal	86	93
625	song	79	86
626	policy	70	34
627	huge	17	12
628	back	42	50
629	involve	19	1
630	company	17	95
631	in	29	89
632	keep	52	16
633	specific	72	20
634	report	22	49
635	fire	78	79
636	begin	57	56
637	cost	98	53
638	tonight	1	62
639	treat	18	51
640	improve	71	72
641	receive	75	30
642	bar	6	83
643	herself	54	57
644	finish	93	53
645	significant	99	34
646	charge	86	95
647	suddenly	37	8
648	nor	39	36
649	vote	68	42
650	enjoy	15	67
651	discuss	18	86
652	treatment	79	92
653	pass	90	2
654	teacher	36	20
655	right	58	82
656	according	21	33
657	hot	73	7
658	interview	37	16
659	image	3	93
660	mission	14	70
661	will	20	44
662	study	4	82
663	herself	55	39
664	myself	59	99
665	test	91	33
666	continue	82	80
667	difference	48	72
668	little	81	14
669	style	72	84
670	site	2	73
671	week	73	50
672	member	37	63
673	body	4	26
674	so	14	18
675	fact	16	79
676	believe	36	57
677	again	52	80
678	reach	10	72
679	girl	80	63
680	first	8	37
681	coach	39	58
682	the	51	36
683	public	54	10
684	city	87	89
685	material	67	85
686	listen	86	30
687	simply	24	72
688	give	36	84
689	traditional	28	45
690	ability	46	79
691	above	77	53
692	friend	83	88
693	firm	15	27
694	green	27	0
695	list	93	10
696	degree	24	45
697	goal	87	86
698	such	13	95
699	factor	46	73
700	once	16	0
701	itself	76	42
702	police	29	78
703	provide	69	96
704	social	6	63
705	change	69	82
706	agree	73	78
707	international	93	9
708	develop	11	43
709	energy	75	29
710	three	33	89
711	international	4	59
712	feeling	9	19
713	around	88	99
714	candidate	80	73
715	present	92	82
716	eye	42	65
717	maybe	26	13
718	pattern	73	33
719	six	11	0
720	sister	2	76
721	member	43	50
722	appear	52	1
723	source	13	48
724	be	24	0
725	campaign	76	51
726	sort	1	56
727	science	45	50
728	line	92	94
729	onto	3	20
730	hundred	68	97
731	one	61	58
732	must	6	67
733	executive	38	83
734	road	90	57
735	technology	94	4
736	hold	93	0
737	enjoy	60	43
738	number	75	12
739	set	94	63
740	statement	34	84
741	wife	99	97
742	spend	45	40
743	avoid	3	19
744	manage	37	95
745	beautiful	58	91
746	bar	50	69
747	watch	61	49
748	face	12	54
749	drop	31	88
750	financial	23	31
751	road	60	65
752	war	52	7
753	investment	99	12
754	before	2	32
755	exist	88	98
756	morning	65	88
757	cover	80	61
758	international	27	18
759	develop	90	65
760	scientist	75	88
761	night	52	33
762	film	95	82
763	little	46	48
764	see	10	95
765	who	2	22
766	voice	22	0
767	others	26	3
768	nation	98	8
769	war	58	59
770	yes	50	19
771	place	81	62
772	within	0	35
773	save	20	78
774	stage	23	95
775	bag	34	33
776	represent	25	0
777	use	45	46
778	edge	64	25
779	purpose	10	38
780	American	2	41
781	prove	74	53
782	culture	46	95
783	include	24	40
784	consumer	3	39
785	lot	50	35
786	prove	61	38
787	book	79	88
788	rate	90	7
789	white	40	49
790	agreement	53	41
791	their	4	19
792	bad	62	4
793	particularly	74	82
794	central	99	64
795	fall	37	54
796	create	55	28
797	pull	59	40
798	value	98	84
799	ball	17	74
800	commercial	29	87
801	sign	48	12
802	down	6	75
803	charge	81	59
804	under	53	41
805	ago	85	19
806	expert	51	57
807	sister	22	82
808	throughout	66	43
809	laugh	13	1
810	light	32	16
811	should	51	94
812	indeed	1	53
813	beyond	30	78
814	ask	63	27
815	wait	82	32
816	eight	40	68
817	interview	25	38
818	put	93	75
819	Democrat	24	38
820	side	96	5
821	amount	13	30
822	less	24	22
823	reason	82	77
824	safe	94	80
825	animal	52	8
826	day	58	88
827	sit	10	61
828	community	8	36
829	gas	53	10
830	who	37	70
831	become	51	86
832	medical	43	25
833	fine	3	68
834	less	67	62
835	through	32	71
836	section	97	51
837	writer	90	81
838	smile	96	41
839	attack	55	19
840	often	71	64
841	amount	69	87
842	second	27	48
843	glass	6	3
844	feel	10	2
845	weight	39	87
846	forget	32	65
847	usually	24	99
848	along	35	64
849	man	67	42
850	increase	9	25
851	away	48	84
852	rich	40	6
853	wind	52	91
854	sort	73	86
855	full	23	76
856	sport	43	12
857	six	53	52
858	night	32	62
859	reach	98	28
860	man	35	71
861	walk	9	67
862	me	88	5
863	cut	5	52
864	glass	38	59
865	fly	9	28
866	right	62	38
867	become	19	63
868	somebody	31	87
869	PM	20	35
870	child	86	42
871	and	72	55
872	table	97	89
873	hair	89	34
874	successful	35	25
875	news	87	54
876	history	45	29
877	appear	17	83
878	husband	27	79
879	data	38	72
880	evening	30	64
881	local	0	29
882	remain	85	89
883	fund	24	28
884	serve	35	31
885	travel	67	42
886	enter	45	1
887	speak	64	52
888	investment	17	77
889	notice	77	21
890	material	88	31
891	lead	67	75
892	sure	38	84
893	report	49	58
894	exactly	62	83
895	seek	27	92
896	security	19	2
897	sister	23	74
898	off	94	80
899	it	41	32
900	yes	23	29
901	action	56	37
902	site	36	67
903	send	37	26
904	medical	76	21
905	discussion	68	35
906	foot	15	60
907	whose	79	8
908	enjoy	8	57
909	over	74	71
910	front	66	66
911	part	31	45
912	ground	23	56
913	report	43	65
914	exactly	33	29
915	require	65	38
916	news	58	67
917	big	22	46
918	sing	98	20
919	system	58	35
920	might	82	31
921	actually	94	18
922	general	19	43
923	opportunity	30	3
924	right	44	19
925	time	14	99
926	thought	57	16
927	coach	3	47
928	kid	90	12
929	last	69	21
930	lawyer	7	63
931	think	0	71
932	subject	91	18
933	avoid	87	25
934	main	4	35
935	whatever	44	60
936	media	41	51
937	report	88	81
938	notice	46	32
939	government	38	63
940	establish	3	6
941	necessary	76	37
942	power	18	1
943	true	98	48
944	little	70	96
945	can	90	90
946	statement	91	22
947	really	28	31
948	bed	0	38
949	boy	23	58
950	order	75	97
951	theory	73	22
952	understand	25	35
953	dinner	44	31
954	theory	2	17
955	detail	67	84
956	beyond	86	42
957	admit	16	38
958	author	69	91
959	trouble	27	14
960	fall	75	60
961	very	72	43
962	move	10	46
963	stand	88	84
964	two	85	18
965	agreement	43	86
966	at	7	64
967	voice	18	80
968	else	9	41
969	college	47	37
970	hotel	92	57
971	back	72	20
972	along	84	12
973	hundred	53	56
974	determine	31	63
975	discussion	22	33
976	eye	59	54
977	hope	38	67
978	partner	79	57
979	dream	28	31
980	up	6	13
981	consider	94	63
982	shoulder	33	11
983	note	2	10
984	technology	74	57
985	of	86	64
986	fall	51	81
987	dog	7	20
988	become	24	97
989	focus	91	31
990	point	94	76
991	interesting	58	17
992	decide	8	51
993	along	86	76
994	sometimes	32	7
995	peace	51	17
996	key	22	93
997	security	66	35
998	animal	12	48
999	reveal	59	82
\.


--
-- Data for Name: user_subs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_subs (start_date, way_of_payment, auto_renewal, end_date, user_subs_id, users_id, sub_id) FROM stdin;
2016-06-22	Card	f	2010-08-03	0	67	24
2006-09-19	Card	f	1974-06-16	1	96	37
2007-05-20	Qiwi	f	2003-04-23	2	59	33
1975-01-30	Qiwi	t	2006-11-11	3	70	42
1978-08-19	PayPal	t	2005-04-01	4	7	38
2001-02-07	Qiwi	f	1979-01-29	5	79	45
2018-02-20	Qiwi	f	1970-03-12	6	36	14
1991-08-19	PayPal	t	1999-01-22	7	29	65
2014-05-30	Qiwi	t	1976-01-23	8	9	94
1976-10-11	Qiwi	f	1972-04-17	9	61	20
2020-11-27	Card	t	2005-06-15	10	81	42
1974-09-01	PayPal	f	2008-08-14	11	33	25
1993-03-07	Qiwi	t	2005-08-25	12	20	64
1991-10-25	Qiwi	t	2015-09-30	13	43	65
1994-05-02	PayPal	t	2010-03-24	14	15	16
2000-01-07	Qiwi	f	2010-02-15	15	91	5
1977-11-27	Qiwi	t	2009-03-30	16	5	20
2000-07-12	Qiwi	t	1983-04-23	17	75	51
1971-01-30	Qiwi	t	1986-07-11	18	77	0
1994-09-05	Card	t	1975-09-22	19	40	9
2000-01-20	Qiwi	f	2021-04-18	20	21	87
2005-10-09	Card	f	1978-03-30	21	60	15
1986-12-17	Qiwi	t	1985-05-25	22	40	61
1988-06-19	PayPal	f	2018-05-22	23	21	24
1981-07-15	Card	f	2009-01-25	24	53	31
1993-03-02	PayPal	f	2000-01-30	25	81	78
1980-08-26	Card	f	1991-08-13	26	81	38
2010-08-26	Card	t	2018-03-08	27	39	81
2016-08-29	Qiwi	t	1977-09-12	28	23	61
1984-11-03	Qiwi	f	2009-01-25	29	93	21
2015-07-26	Card	t	1992-07-13	30	76	26
1984-08-04	Qiwi	f	1989-10-18	31	97	0
2012-02-22	Qiwi	f	2010-06-01	32	43	31
2016-11-04	Card	t	2002-08-30	33	86	60
2014-08-05	Card	t	2000-05-27	34	32	37
2000-01-30	Card	f	2017-01-23	35	78	73
1993-07-07	Card	f	1983-05-18	36	1	76
2019-08-14	Card	f	1999-01-21	37	32	11
2009-07-16	Qiwi	f	1997-08-31	38	78	87
1994-07-20	Card	f	2021-02-17	39	76	28
1989-06-01	PayPal	t	1996-02-01	40	46	35
1997-09-25	PayPal	f	2021-05-20	41	69	67
2022-06-03	Qiwi	f	2010-06-11	42	49	53
2004-11-27	Qiwi	t	1996-07-20	43	60	1
2009-01-15	Card	f	2000-10-26	44	61	59
2006-02-27	Qiwi	t	1987-03-17	45	21	51
1985-10-31	Qiwi	t	1989-12-20	46	8	35
1989-04-06	Card	t	1981-08-24	47	56	38
2012-05-23	Qiwi	f	2002-04-10	48	45	11
1994-02-09	Qiwi	t	1975-03-17	49	86	91
2011-05-01	Card	t	1978-01-21	50	39	18
1988-08-12	PayPal	t	2004-03-18	51	67	71
1990-10-03	Qiwi	f	2017-10-26	52	1	33
1989-07-05	PayPal	f	1970-09-17	53	96	22
2017-03-12	Qiwi	t	1985-12-14	54	28	10
2010-05-18	Qiwi	f	2022-01-13	55	36	8
1983-05-09	PayPal	t	2004-02-04	56	46	19
1994-11-29	PayPal	f	1999-07-29	57	36	66
1977-11-05	Qiwi	f	1989-11-05	58	49	84
2003-01-09	Qiwi	f	2004-01-18	59	40	61
2012-10-05	Card	t	2023-07-10	60	38	75
1991-05-15	Qiwi	t	1988-09-26	61	40	2
2022-07-19	Card	f	2013-05-29	62	5	44
1978-11-24	Card	t	2021-04-25	63	42	41
2014-10-06	Card	f	1970-02-20	64	61	14
2013-02-18	PayPal	f	1980-07-20	65	21	97
1998-09-04	Card	t	2020-01-21	66	73	42
2001-04-08	Qiwi	f	1978-08-21	67	23	71
1995-02-05	Qiwi	f	1976-10-21	68	95	6
1976-02-08	PayPal	t	1999-01-14	69	14	25
1972-12-12	Card	t	1997-12-07	70	70	54
2023-04-08	Card	f	1996-11-30	71	87	21
1997-07-26	PayPal	f	1992-09-26	72	97	24
1982-07-22	Card	t	1973-08-08	73	70	37
1993-01-08	Card	t	1987-12-13	74	45	46
2020-03-16	Card	t	1987-02-01	75	28	93
1987-06-25	Card	f	1985-08-12	76	28	41
2015-11-15	Qiwi	f	2023-04-05	77	29	10
1979-09-30	Qiwi	t	2022-04-23	78	88	43
2007-04-04	PayPal	t	1996-01-19	79	99	56
1997-01-21	Qiwi	t	2008-06-16	80	50	61
2005-09-13	PayPal	f	1995-02-12	81	61	36
2020-12-03	Qiwi	f	1995-08-09	82	81	13
2019-05-03	PayPal	t	2015-01-23	83	19	9
1982-06-09	Qiwi	f	2021-03-04	84	30	41
1983-08-04	PayPal	t	2001-06-29	85	93	83
1976-07-04	Qiwi	f	1989-11-08	86	25	63
1974-05-31	Card	t	2021-01-10	87	19	59
2001-10-06	Qiwi	f	2009-06-12	88	83	68
1973-07-26	Card	f	2010-04-09	89	32	27
1984-12-30	PayPal	t	1992-02-01	90	96	53
2004-08-04	Card	f	1973-11-19	91	23	36
1982-02-16	PayPal	t	1988-08-13	92	78	80
1994-07-22	PayPal	t	2022-06-06	93	36	94
1987-06-10	Qiwi	t	2008-07-18	94	34	41
1986-04-30	PayPal	t	1981-02-04	95	87	52
2014-10-25	Card	t	2017-04-03	96	34	11
2015-12-12	Card	t	2003-02-05	97	22	60
1996-10-17	PayPal	t	2012-06-15	98	1	91
1977-12-27	PayPal	f	1980-02-25	99	5	75
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (users_id, user_password, login, country, currency_id) FROM stdin;
0	rulespecific	information	Mexico	66
1	suddenlydrug	give	Iceland	80
2	halfsecurity	a	Denmark	96
3	soonseem	business	Sri Lanka	29
4	typelaw	it	Panama	81
5	agentagain	method	United States of America	93
6	feelimpact	today	Lithuania	70
7	moneyfly	produce	Japan	28
8	fireplant	sit	Brunei Darussalam	89
9	themselvesenjoy	because	Congo	41
10	environmentevent	explain	Pakistan	30
11	includinglist	memory	Grenada	7
12	openprobably	among	Germany	97
13	healthprovide	move	Bahamas	8
14	actiontop	think	Hong Kong	81
15	whileguess	week	Honduras	63
16	reasoneven	artist	Kyrgyz Republic	0
17	directionbig	available	Isle of Man	62
18	womanquickly	each	Saint Helena	46
19	savebecome	total	North Macedonia	77
20	niceusually	this	El Salvador	7
21	waymessage	process	Bahamas	82
22	paycouple	pass	Morocco	4
23	degreemanagement	behavior	Russian Federation	26
24	bluedespite	school	Turkey	55
25	whenbed	sit	Hungary	67
26	homemember	management	Lithuania	19
27	aloneprobably	ask	Chile	21
28	theorypattern	with	Saint Helena	93
29	recentlychallenge	will	Northern Mariana Islands	11
30	trypaper	newspaper	Sri Lanka	44
31	littlelocal	buy	Netherlands Antilles	96
32	officeavoid	reach	Croatia	42
33	paydecade	so	Tanzania	10
34	headsocial	parent	Cameroon	79
35	forwardnotice	ability	Nigeria	44
36	democratichuman	heavy	Saint Martin	70
37	usuallydinner	state	Luxembourg	8
38	ifas	feel	Burundi	57
39	recordbreak	international	Belgium	23
40	housecompany	near	Bahamas	58
41	machineresponsibility	start	Niue	45
42	itselflet	heart	North Macedonia	42
43	skillprogram	whom	Niger	61
44	pressureweight	just	Poland	62
45	foodcold	son	Guernsey	64
46	listennice	art	Uganda	36
47	provideservice	respond	Hungary	54
48	kidhit	everybody	Tonga	24
49	availablewife	ready	Saudi Arabia	39
50	Mrwell	everybody	Burundi	74
51	forwardthere	glass	Kenya	85
52	littledata	activity	Macao	21
53	fearsuddenly	yet	Guernsey	69
54	betweenrequire	director	Guernsey	77
55	longmilitary	as	Vanuatu	21
56	manshoulder	husband	Argentina	84
57	listwestern	part	Netherlands	43
58	fundfirst	he	Cyprus	90
59	seniorroom	best	United States Virgin Islands	29
60	getimpact	thought	Cameroon	90
61	matterthree	recognize	Heard Island and McDonald Islands	54
62	anyonedaughter	member	Iraq	5
63	becauselevel	security	Niger	26
64	practiceair	sure	Djibouti	77
65	characterpicture	shoulder	Madagascar	58
66	specialmajority	toward	Cape Verde	16
67	focusmoment	ability	Barbados	5
68	actprocess	worker	Guyana	44
69	causeinside	occur	Bouvet Island (Bouvetoya)	86
70	abilitybeyond	staff	Bhutan	58
71	manexpert	could	Suriname	21
72	sucheverything	can	Bolivia	47
73	countryapproach	various	Fiji	59
74	challengepoint	pay	Madagascar	17
75	aroundelse	analysis	French Guiana	13
76	developpositive	water	Zambia	84
77	fishidentify	stop	Taiwan	29
78	fishthought	pressure	Philippines	58
79	fulledge	court	American Samoa	82
80	indeeddiscuss	current	Bhutan	8
81	regionnever	evidence	Mozambique	69
82	argueagreement	here	Yemen	32
83	understandproduct	matter	Svalbard & Jan Mayen Islands	87
84	troubleseven	industry	Guernsey	99
85	happyout	type	Guyana	36
86	thoseevent	yet	Kyrgyz Republic	33
87	lightlikely	either	Antigua and Barbuda	66
88	sonexist	across	Angola	91
89	designpeople	change	Estonia	47
90	manybaby	how	Mozambique	34
91	hundredenter	tend	Turkmenistan	85
92	mindyoung	drug	Austria	74
93	windabove	pay	French Guiana	70
94	darktend	teacher	Andorra	83
95	beyondturn	wear	Cambodia	96
96	possiblerecognize	fight	Burkina Faso	32
97	closegeneration	guy	Kyrgyz Republic	75
98	callseason	however	Malawi	54
99	directortravel	piece	Haiti	62
\.


--
-- Data for Name: video_resolution; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.video_resolution (vr_name, video_resolution_id) FROM stdin;
4K	0
2K	1
FULL HD	2
HD	3
\.


--
-- Data for Name: watch; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.watch (watch_id, users_id, film_id) FROM stdin;
0	26	21
1	86	72
2	18	17
3	97	81
4	90	42
5	91	7
6	63	25
7	42	2
8	36	71
9	82	38
10	8	9
11	48	45
12	40	41
13	92	88
14	50	91
15	40	77
16	41	42
17	81	78
18	52	51
19	93	52
20	72	29
21	10	54
22	38	9
23	78	45
24	24	74
25	98	23
26	70	41
27	16	70
28	1	90
29	88	95
30	48	22
31	59	68
32	46	98
33	5	60
34	30	4
35	77	85
36	82	51
37	69	81
38	40	54
39	52	28
40	44	24
41	72	6
42	81	91
43	14	1
44	74	52
45	66	48
46	43	64
47	59	45
48	99	81
49	78	58
50	76	97
51	28	57
52	60	9
53	11	4
54	58	85
55	10	8
56	21	54
57	41	32
58	54	51
59	81	68
60	33	28
61	74	29
62	53	6
63	93	42
64	85	38
65	2	40
66	95	88
67	4	86
68	32	68
69	97	48
70	17	25
71	35	73
72	90	9
73	96	89
74	48	12
75	5	50
76	46	88
77	83	6
78	94	15
79	7	96
80	73	41
81	44	14
82	54	64
83	67	3
84	39	84
85	97	25
86	70	8
87	89	21
88	34	91
89	65	78
90	71	9
91	17	38
92	57	74
93	36	51
94	9	34
95	68	83
96	88	98
97	69	84
98	80	93
99	81	58
100	54	41
101	73	54
102	19	83
103	20	48
104	25	14
105	39	61
106	12	44
107	30	92
108	23	53
109	2	30
110	84	69
111	95	78
112	55	5
113	64	90
114	70	21
115	35	63
116	36	28
117	9	11
118	96	79
119	88	75
120	92	45
121	57	87
122	61	57
123	21	21
124	7	86
125	8	51
126	19	60
127	39	38
128	42	80
129	62	58
130	20	61
131	11	92
132	12	57
133	86	6
134	31	70
135	4	53
136	78	2
137	89	11
138	36	5
139	28	1
140	46	55
141	56	99
142	28	37
143	7	63
144	40	11
145	79	88
146	50	61
147	91	62
148	82	93
149	94	67
150	73	44
151	0	60
152	93	22
153	11	69
154	31	47
155	83	94
156	43	21
157	35	17
158	41	97
159	67	6
160	25	89
161	99	38
162	4	66
163	16	40
164	17	5
165	76	54
166	77	19
167	68	50
168	37	99
169	98	78
170	77	55
171	73	21
172	30	59
173	71	97
174	63	93
175	83	71
176	84	36
177	75	67
178	41	74
179	87	41
180	60	87
181	52	83
182	53	48
183	32	25
184	64	57
185	22	60
186	1	37
187	53	84
188	99	51
189	92	12
190	97	90
191	3	83
192	49	50
193	77	32
194	69	28
195	81	2
196	26	66
197	79	78
198	91	52
199	29	77
200	48	90
201	8	54
202	19	63
203	60	64
204	39	41
205	32	2
206	51	15
207	83	84
208	84	49
209	52	96
210	85	93
211	64	70
212	3	60
213	49	27
214	28	4
215	69	5
216	68	40
217	14	69
218	18	39
219	89	99
220	50	28
221	36	93
222	15	70
223	7	66
224	48	67
225	27	44
226	73	11
227	19	40
228	12	1
229	82	96
230	33	60
231	12	37
232	99	5
233	4	33
234	45	34
235	56	43
236	2	72
237	22	50
238	25	92
239	66	93
240	46	35
241	38	31
242	97	80
243	98	45
244	69	18
245	14	82
246	47	79
247	27	21
248	0	4
249	18	52
250	59	90
251	79	68
252	11	13
253	98	81
254	17	93
255	54	11
256	95	12
257	20	18
258	60	54
259	6	83
260	4	10
261	23	23
262	21	99
263	88	9
264	93	87
265	99	18
266	38	8
267	56	56
268	57	21
269	51	90
270	76	34
271	10	89
272	49	17
273	68	30
274	15	24
275	26	33
276	18	29
277	97	93
278	98	58
279	71	41
280	50	18
281	17	70
282	42	14
283	55	96
284	28	79
285	48	57
286	5	95
287	31	4
288	94	60
289	21	76
290	40	89
291	60	67
292	33	50
293	53	28
294	72	41
295	37	20
296	2	62
297	22	40
298	68	7
299	14	36
300	74	87
301	85	96
302	46	25
303	38	21
304	79	22
305	70	53
306	43	99
307	90	31
308	69	8
309	47	69
310	26	46
311	67	84
312	5	72
313	11	3
314	36	96
315	77	97
316	9	79
317	69	93
318	21	53
319	94	37
320	33	27
321	6	73
322	12	4
323	53	5
324	72	18
325	4	0
326	45	1
327	64	14
328	56	10
329	20	93
330	99	8
331	46	2
332	65	15
333	23	98
334	57	11
335	51	80
336	96	88
337	55	50
338	1	79
339	99	93
340	79	35
341	89	79
342	63	27
343	36	73
344	55	86
345	83	5
346	94	14
347	0	7
348	40	43
349	52	17
350	58	97
351	63	63
352	9	92
353	84	6
354	95	15
355	62	67
356	41	44
357	93	54
358	39	83
359	64	27
360	14	26
361	66	73
362	26	0
363	13	67
364	4	98
365	78	47
366	51	93
367	35	85
368	82	17
369	55	63
370	1	92
371	88	97
372	7	23
373	59	70
374	92	67
375	30	6
376	17	73
377	91	22
378	29	47
379	21	43
380	80	92
381	27	86
382	10	33
383	62	80
384	14	3
385	73	89
386	93	67
387	20	83
388	67	15
389	39	96
390	12	79
391	85	63
392	32	57
393	97	37
394	15	4
395	1	69
396	88	74
397	7	0
398	59	47
399	99	83
400	65	90
401	17	50
402	90	34
403	63	17
404	9	46
405	77	64
406	28	59
407	57	86
408	36	63
409	60	11
410	69	96
411	81	70
412	54	53
413	27	99
414	33	30
415	25	26
416	66	27
417	39	73
418	20	60
419	86	5
420	56	13
421	51	47
422	43	43
423	54	89
424	14	16
425	59	24
426	79	2
427	43	79
428	16	62
429	35	75
430	55	53
431	28	36
432	29	1
433	47	49
434	48	14
435	6	17
436	92	57
437	49	95
438	29	37
439	41	11
440	27	76
441	85	17
442	10	23
443	51	24
444	2	19
445	8	99
446	54	66
447	39	86
448	12	69
449	86	18
450	51	60
451	97	27
452	87	99
453	88	64
454	59	37
455	46	67
456	65	80
457	16	75
458	17	40
459	68	85
460	21	10
461	40	23
462	81	24
463	60	1
464	18	84
465	69	86
466	42	69
467	81	60
468	25	16
469	12	46
470	85	30
471	31	59
472	32	24
473	23	55
474	97	4
475	89	0
476	95	80
477	87	76
478	88	41
479	1	36
480	56	88
481	17	17
482	9	13
483	22	95
484	68	62
485	48	4
486	58	54
487	49	85
488	77	67
489	21	23
490	62	24
491	80	72
492	27	66
493	19	62
494	44	6
495	39	40
496	85	7
497	83	83
498	43	10
499	8	89
500	54	56
501	52	95
502	13	24
503	64	69
504	84	84
505	16	29
506	96	58
507	28	3
508	47	16
509	57	66
510	9	26
511	61	36
512	7	65
513	27	43
514	73	10
515	79	90
516	39	17
517	50	63
518	62	37
519	8	66
520	94	69
521	0	62
522	12	36
523	13	1
524	31	49
525	83	96
526	96	35
527	1	26
528	25	91
529	59	4
530	72	86
531	45	69
532	64	82
533	65	47
534	17	7
535	76	56
536	49	39
537	22	85
538	9	3
539	34	96
540	80	26
541	26	55
542	46	70
543	49	75
544	90	76
545	42	36
546	7	78
547	26	91
548	18	87
549	19	52
550	71	99
551	43	0
552	84	38
553	21	98
554	87	43
555	60	89
556	72	63
557	10	88
558	35	32
559	76	33
560	2	84
561	14	58
562	99	53
563	45	82
564	5	9
565	86	83
566	46	47
567	78	79
568	38	43
569	9	16
570	42	13
571	61	26
572	7	55
573	80	39
574	79	80
575	98	93
576	75	46
577	54	23
578	60	66
579	31	39
580	72	40
581	4	22
582	23	35
583	35	9
584	95	60
585	1	16
586	34	50
587	53	63
588	25	81
589	93	99
590	85	95
591	45	59
592	64	72
593	65	37
594	3	62
595	14	71
596	61	3
597	7	32
598	27	10
599	59	79
600	79	57
601	58	34
602	90	66
603	61	39
604	48	69
605	54	0
606	60	43
607	11	38
608	12	3
609	63	85
610	21	88
611	94	72
612	87	33
613	60	79
614	99	7
615	46	1
616	57	10
617	49	6
618	14	48
619	66	95
620	26	22
621	46	37
622	78	69
623	3	75
624	89	78
625	50	7
626	69	20
627	15	49
628	47	81
629	67	96
630	63	62
631	84	5
632	29	69
633	87	10
634	33	39
635	87	46
636	34	40
637	66	72
638	85	85
639	86	50
640	37	45
641	32	79
642	51	92
643	65	27
644	2	87
645	77	1
646	15	26
647	55	62
648	80	6
649	26	35
650	18	31
651	36	85
652	83	17
653	28	81
654	11	28
655	52	29
656	31	6
657	63	75
658	84	18
659	75	49
660	95	27
661	33	52
662	52	65
663	25	48
664	93	66
665	64	39
666	57	0
667	68	9
668	14	38
669	67	50
670	18	8
671	79	24
672	58	1
673	71	20
674	35	97
675	15	39
676	19	9
677	77	99
678	48	72
679	61	91
680	56	12
681	54	88
682	14	15
683	20	95
684	85	75
685	46	4
686	24	65
687	3	42
688	35	74
689	1	81
690	47	48
691	59	59
692	18	21
693	79	37
694	77	76
695	21	32
696	0	9
697	40	45
698	60	23
699	5	87
700	50	95
701	21	68
702	81	82
703	54	65
704	8	98
705	73	78
706	44	51
707	85	52
708	86	17
709	37	12
710	56	25
711	51	59
712	22	32
713	14	28
714	55	29
715	87	98
716	67	40
717	86	53
718	78	49
719	24	78
720	89	58
721	35	87
722	36	52
723	88	99
724	48	26
725	9	71
726	29	49
727	73	55
728	6	65
729	72	10
730	39	62
731	2	31
732	62	82
733	39	98
734	31	94
735	4	77
736	72	95
737	51	72
738	24	55
739	98	4
740	96	80
741	7	2
742	59	49
743	99	85
744	79	27
745	68	97
746	40	35
747	80	71
748	5	77
749	58	89
750	69	98
751	8	88
752	54	55
753	20	62
754	45	6
755	3	9
756	95	92
757	67	30
758	12	94
759	90	13
760	47	51
761	48	16
762	88	89
763	38	88
764	50	62
765	69	75
766	42	58
767	62	36
768	41	13
769	33	9
770	19	74
771	20	39
772	10	25
773	91	99
774	42	94
775	41	98
776	66	42
777	31	84
778	97	29
779	24	45
780	89	25
781	16	41
782	17	6
783	36	19
784	88	66
785	65	82
786	38	65
787	76	91
788	68	87
789	29	16
790	26	90
791	18	86
792	58	79
793	50	75
794	62	49
795	73	58
796	74	23
797	19	87
798	60	88
799	0	74
800	31	61
801	51	39
802	43	35
803	89	2
804	95	82
805	88	43
806	67	20
807	46	46
808	65	59
809	3	84
810	76	68
811	22	97
812	69	29
813	5	44
814	38	78
815	57	91
816	90	88
817	50	52
818	42	48
819	15	94
820	62	26
821	8	55
822	73	35
823	93	13
824	20	29
825	11	60
826	12	25
827	51	16
828	83	85
829	43	12
830	35	8
831	0	87
832	96	24
833	1	15
834	87	55
835	33	84
836	99	29
837	72	75
838	78	6
839	89	15
840	2	96
841	96	60
842	22	74
843	87	91
844	1	51
845	62	3
846	80	51
847	81	16
848	11	37
849	71	88
850	62	39
851	8	68
852	0	64
853	85	22
854	51	29
855	84	63
856	96	37
857	1	28
858	99	42
859	45	71
860	64	84
861	92	3
862	69	19
863	61	15
864	80	28
865	7	44
866	38	68
867	79	69
868	58	46
869	91	43
870	42	38
871	61	51
872	30	63
873	63	97
874	84	40
875	95	49
876	41	78
877	52	87
878	53	52
879	44	83
880	24	25
881	10	90
882	57	22
883	3	51
884	88	46
885	67	72
886	92	16
887	98	59
888	77	36
889	69	32
890	14	96
891	47	93
892	0	18
893	79	82
894	39	9
895	41	55
896	33	51
897	32	6
898	23	37
899	10	67
900	35	11
901	76	12
902	22	41
903	88	23
904	34	52
905	99	32
906	86	62
907	65	39
908	2	99
909	89	67
910	55	74
911	15	38
912	80	18
913	67	85
914	18	43
915	71	55
916	91	33
917	36	97
918	48	71
919	95	3
920	20	9
921	6	74
922	84	30
923	88	0
924	34	29
925	37	34
926	26	24
927	97	84
928	98	49
929	89	80
930	36	74
931	47	83
932	0	8
933	59	94
934	30	30
935	83	42
936	48	84
937	94	51
938	41	45
939	33	41
940	6	87
941	64	28
942	56	24
943	32	81
944	38	12
945	97	61
946	43	90
947	26	37
948	27	2
949	71	45
950	63	41
951	77	88
952	83	19
953	28	83
954	75	15
955	94	28
956	41	22
957	5	99
958	72	9
959	44	27
960	84	20
961	10	34
962	75	51
963	81	94
964	41	58
965	54	77
966	33	54
967	74	55
968	53	32
969	45	28
970	85	64
971	7	1
972	26	14
973	59	48
974	18	10
975	32	94
976	97	74
977	70	57
978	90	35
979	35	99
980	7	37
981	94	5
982	71	58
983	9	83
984	50	84
985	69	97
986	75	28
987	61	93
988	6	77
989	53	9
990	39	74
991	37	1
992	3	8
993	14	17
994	20	97
995	66	64
996	67	29
997	13	58
998	86	42
999	38	2
1000	97	51
1001	16	63
1002	89	47
1003	90	12
1004	82	8
1005	15	18
1006	1	83
1007	47	50
1008	13	94
1009	5	53
1010	71	35
1011	91	13
1012	28	73
1013	69	74
1014	94	18
1015	5	89
1016	25	4
1017	50	97
1018	2	20
1019	33	44
1020	34	9
1021	85	54
1022	2	56
1023	89	24
1024	14	30
1025	1	60
1026	13	71
1027	90	25
1028	82	21
1029	55	67
1030	29	15
1031	5	66
1032	9	73
1033	50	74
1034	29	51
1035	42	70
1036	8	77
1037	81	61
1038	27	90
1039	93	35
1040	44	30
1041	62	84
1042	74	58
1043	66	54
1044	31	96
1045	32	61
1046	72	97
1047	23	92
1048	70	24
1049	43	70
1050	16	53
1051	17	18
1052	35	66
1053	1	73
1054	47	40
1055	48	5
1056	5	43
1057	6	8
1058	58	55
1059	68	99
1060	28	63
1061	61	60
1062	80	73
1063	27	67
1064	18	98
1065	93	12
1066	30	72
1067	10	14
1068	61	96
1069	62	61
1070	94	93
1071	74	35
1072	93	48
1073	39	77
1074	13	25
1075	4	56
1076	23	69
1077	97	18
1078	3	11
1079	96	59
1080	55	21
1081	59	28
1082	24	70
1083	68	76
1084	29	5
1085	80	50
1086	46	94
1087	49	99
1088	50	64
1089	62	38
1090	80	86
1091	8	67
1092	27	80
1093	0	63
1094	33	11
1095	20	41
1096	93	25
1097	11	72
1098	85	21
1099	51	28
1100	2	23
1101	43	24
1102	75	93
1103	35	20
1104	22	1
1105	59	5
1106	4	69
1107	23	82
1108	64	83
1109	70	14
1110	35	56
1111	9	4
1112	55	34
1113	22	86
1114	1	63
1115	88	68
1116	47	30
1117	28	17
1118	99	77
1119	46	71
1120	63	11
1121	50	41
1122	29	18
1123	15	83
1124	61	50
1125	18	88
1126	39	31
1127	30	62
1128	63	96
1129	51	5
1130	42	73
1131	54	47
1132	60	90
1133	66	21
1134	1	40
1135	53	87
1136	45	83
1137	46	48
1138	17	21
1139	3	86
1140	77	35
1141	22	99
1142	28	30
1143	69	31
1144	82	1
1145	15	60
1146	40	4
1147	92	51
1148	58	58
1149	49	89
1150	90	90
1151	62	28
1152	81	41
1153	27	70
1154	0	53
1155	12	27
1156	31	40
1157	32	5
1158	51	18
1159	24	1
1160	84	52
1161	95	61
1162	96	26
1163	33	86
1164	53	64
1165	72	77
1166	36	11
1167	22	76
1168	80	17
1169	86	97
1170	92	28
1171	49	66
1172	50	31
1173	42	27
1174	61	40
1175	54	1
1176	27	47
1177	18	78
1178	11	39
1179	71	90
1180	91	68
1181	23	13
1182	82	99
1183	84	29
1184	75	60
1185	21	89
1186	0	66
1187	87	34
1188	60	80
1189	13	5
1190	32	18
1191	84	65
1192	56	46
1193	53	77
1194	46	38
1195	65	51
1196	49	43
1197	22	89
1198	68	56
1199	69	21
1200	80	30
1201	30	29
1202	17	96
1203	62	18
1204	7	82
1205	73	27
1206	11	52
1207	85	1
1208	39	34
1209	72	31
1210	51	8
1211	75	73
1212	41	80
1213	93	90
1214	16	23
1215	76	37
1216	22	66
1217	14	62
1218	15	27
1219	80	7
1220	67	74
1221	18	32
1222	97	96
1223	98	61
1224	50	21
1225	55	99
1226	73	4
1227	18	68
1228	79	84
1229	39	11
1230	71	80
1231	82	89
1232	84	19
1233	29	83
1234	75	50
1235	94	63
1236	33	53
1237	45	27
1238	64	40
1239	16	0
1240	76	14
1241	34	54
1242	25	85
1243	66	86
1244	65	41
1245	32	93
1246	78	60
1247	97	73
1248	57	37
1249	58	2
1250	77	15
1251	3	66
1252	68	46
1253	26	49
1254	27	14
1255	30	19
1256	90	70
1257	63	53
1258	17	86
1259	42	30
1260	28	95
1261	75	27
1262	48	73
1263	95	5
1264	41	34
1265	44	39
1266	72	21
1267	4	3
1268	64	17
1269	84	32
1270	75	63
1271	95	41
1272	87	37
1273	99	11
1274	85	76
1275	56	49
1276	76	27
1277	67	64
1278	26	26
1279	59	60
1280	97	86
1281	98	51
1282	89	82
1283	90	47
1284	82	43
1285	55	89
1286	8	14
1287	19	23
1288	30	32
1289	17	99
1290	9	95
1291	83	44
1292	75	40
1293	21	69
1294	87	14
1295	60	60
1296	73	79
1297	52	56
1298	64	30
1299	22	33
1300	68	0
1301	98	28
1302	43	92
1303	36	53
1304	55	66
1305	47	62
1306	26	39
1307	18	35
1308	71	47
1309	90	60
1310	63	43
1311	77	90
1312	75	17
1313	0	23
1314	80	95
1315	72	11
1316	10	36
1317	56	3
1318	62	83
1319	93	70
1320	99	1
1321	20	86
1322	85	66
1323	65	8
1324	3	33
1325	22	46
1326	14	42
1327	13	83
1328	79	28
1329	9	49
1330	11	9
1331	52	10
1332	6	43
1333	29	63
1334	42	82
1335	62	60
1336	87	4
1337	33	33
1338	19	98
1339	53	11
1340	25	29
1341	93	47
1342	31	72
1343	2	45
1344	62	96
1345	22	23
1346	85	79
1347	12	95
1348	59	27
1349	4	91
1350	98	18
1351	90	14
1352	46	93
1353	71	37
1354	17	66
1355	29	40
1356	69	76
1357	21	36
1358	81	50
1359	41	14
1360	6	56
1361	44	19
1362	62	73
1363	54	69
1364	0	98
1365	74	47
1366	73	82
1367	20	76
1368	31	85
1369	4	68
1370	43	59
1371	89	26
1372	3	23
1373	55	33
1374	47	29
1375	88	67
1376	67	44
1377	26	6
1378	18	2
1379	79	18
1380	70	49
1381	63	10
1382	82	23
1383	29	17
1384	10	3
1385	0	75
1386	53	1
1387	39	66
1388	85	33
1389	31	62
1390	89	3
1391	22	13
1392	54	82
1393	87	79
1394	53	86
1395	70	26
1396	98	8
1397	43	72
1398	17	20
1399	35	68
1400	76	69
1401	36	33
1402	55	46
1403	47	42
1404	5	45
1405	38	79
1406	58	57
1407	63	23
1408	77	70
1409	9	52
1410	29	30
1411	62	27
1412	7	91
1413	41	4
1414	81	40
1415	27	69
1416	33	0
1417	19	65
1418	93	14
1419	39	43
1420	44	9
1421	30	74
1422	91	90
1423	54	59
1424	52	98
1425	13	27
1426	32	40
1427	84	87
1428	36	10
1429	5	22
1430	37	91
1431	3	98
1432	77	47
1433	82	13
1434	68	78
1435	69	43
1436	49	65
1437	15	72
1438	80	52
1439	58	70
1440	82	98
1441	61	75
1442	27	82
1443	74	14
1444	11	74
1445	24	13
1446	43	26
1447	95	73
1448	96	38
1449	65	50
1450	17	10
1451	36	23
1452	9	6
1453	22	88
1454	96	74
1455	1	65
1456	88	70
1457	92	40
1458	6	0
1459	65	86
1460	57	82
1461	80	65
1462	8	46
1463	54	13
1464	73	26
1465	18	90
1466	84	41
1467	95	50
1468	0	78
1469	66	23
1470	13	17
1471	86	1
1472	31	65
1473	16	22
1474	35	35
1475	76	36
1476	96	51
1477	46	50
1478	17	23
1479	58	24
1480	76	72
1481	49	55
1482	3	88
1483	68	68
1484	61	29
1485	40	6
1486	18	67
1487	38	82
1488	71	79
1489	7	94
1490	27	72
1491	73	39
1492	31	42
1493	4	25
1494	96	28
1495	88	24
1496	67	1
1497	13	30
1498	72	79
1499	56	71
1500	3	65
1501	36	13
1502	28	9
1503	5	25
1504	78	95
1505	38	59
1506	57	72
1507	50	33
1508	61	42
1509	81	20
1510	54	3
1511	26	84
1512	73	16
1513	0	32
1514	20	10
1515	71	92
1516	31	19
1517	63	88
1518	96	5
1519	41	69
1520	33	65
1521	52	78
1522	45	39
1523	24	16
1524	10	81
1525	16	12
1526	96	41
1527	34	66
1528	25	97
1529	45	75
1530	38	36
1531	57	49
1532	98	50
1533	77	27
1534	42	6
1535	26	61
1536	67	99
1537	42	42
1538	83	43
1539	94	52
1540	95	17
1541	60	59
1542	20	23
1543	12	19
1544	72	33
1545	84	44
1546	95	53
1547	88	14
1548	33	78
1549	34	43
1550	52	91
1551	85	88
1552	46	17
1553	37	48
1554	51	95
1555	57	26
1556	2	90
1557	76	39
1558	49	22
1559	3	55
1560	15	29
1561	97	98
1562	89	94
1563	50	23
1564	90	59
1565	91	24
1566	82	55
1567	28	84
1568	61	32
1569	7	61
1570	81	10
1571	8	26
1572	27	39
1573	19	35
1574	60	36
1575	39	13
1576	31	9
1577	95	30
1578	40	94
1579	81	95
1580	25	51
1581	22	45
1582	74	92
1583	66	88
1584	37	61
1585	78	62
1586	24	91
1587	98	40
1588	3	68
1589	58	4
1590	15	42
1591	80	22
1592	59	85
1593	19	12
1594	78	98
1595	70	94
1596	30	21
1597	17	88
1598	75	29
1599	40	71
1600	20	13
1601	53	10
1602	64	19
1603	56	15
1604	62	95
1605	22	22
1606	33	68
1607	25	64
1608	45	42
1609	37	38
1610	38	3
1611	56	51
1612	43	81
1613	14	54
1614	86	79
1615	13	95
1616	78	75
1617	79	40
1618	70	71
1619	91	14
1620	82	45
1621	47	87
1622	48	52
1623	8	16
1624	40	48
1625	72	0
1626	63	68
1627	29	75
1628	81	85
1629	33	45
1630	53	23
1631	25	41
1632	44	54
1633	85	55
1634	51	62
1635	22	35
1636	68	2
1637	14	31
1638	67	43
1639	46	20
1640	18	1
1641	78	52
1642	38	16
1643	97	65
1644	70	48
1645	89	61
1646	49	25
1647	35	90
1648	36	55
1649	27	6
1650	59	75
1651	5	67
1652	92	72
1653	79	53
1654	29	52
1655	75	19
1656	41	26
1657	33	22
1658	44	31
1659	72	13
1660	2	34
1661	81	98
1662	14	8
1663	20	88
1664	66	55
1665	51	75
1666	97	42
1667	98	7
1668	43	71
1669	49	2
1670	90	3
1671	78	65
1672	79	30
1673	65	95
1674	80	74
1675	40	38
1676	0	2
1677	6	45
1678	58	92
1679	84	1
1680	41	39
1681	87	6
1682	73	71
1683	74	36
1684	10	51
1685	56	18
1686	97	19
1687	3	12
1688	43	48
1689	12	97
1690	86	46
1691	13	62
1692	32	75
1693	78	42
1694	79	7
1695	97	55
1696	98	20
1697	89	51
1698	96	96
1699	1	87
1700	47	54
1701	5	57
1702	92	62
1703	38	91
1704	71	39
1705	58	69
1706	9	64
1707	21	38
1708	40	51
1709	33	12
1710	72	3
1711	44	21
1712	30	86
1713	22	2
1714	54	71
1715	74	49
1716	20	78
1717	85	58
1718	13	39
1719	86	23
1720	72	88
1721	32	52
1722	23	83
1723	4	70
1724	89	28
1725	55	35
1726	1	64
1727	47	31
1728	99	78
1729	65	85
1730	17	45
1731	36	58
1732	40	28
1733	80	64
1734	26	93
1735	5	70
1736	42	74
1737	61	87
1738	8	81
1739	81	65
1740	27	94
1741	11	86
1742	30	99
1743	31	64
1744	2	37
1745	3	2
1746	95	85
1747	66	58
1748	59	19
1749	4	83
1750	56	93
1751	90	6
1752	9	18
1753	55	48
1754	28	31
1755	99	91
1756	98	95
1757	58	59
1758	77	72
1759	50	55
1760	8	58
1761	44	11
1762	11	63
1763	2	14
1764	62	65
1765	41	91
1766	11	99
1767	13	29
1768	23	73
1769	64	74
1770	70	5
1771	16	34
1772	95	98
1773	34	88
1774	46	62
1775	65	75
1776	77	49
1777	9	31
1778	28	44
1779	61	41
1780	73	15
1781	6	25
1782	18	79
1783	38	94
1784	92	65
1785	30	53
1786	91	69
1787	42	64
1788	62	42
1789	94	74
1790	73	51
1791	74	16
1792	60	81
1793	20	45
1794	30	89
1795	13	6
1796	4	37
1797	51	32
1798	24	15
1799	87	71
1800	53	78
1801	99	45
1802	25	96
1803	59	9
1804	24	51
1805	56	83
1806	3	77
1807	77	26
1808	69	22
1809	88	72
1810	6	2
1811	50	45
1812	69	58
1813	8	48
1814	73	28
1815	20	22
1816	39	35
1817	12	18
1818	51	9
1819	23	27
1820	2	4
1821	43	5
1822	35	1
1823	94	87
1824	95	52
1825	0	80
1826	87	48
1827	53	55
1828	99	22
1829	44	86
1830	10	93
1831	89	8
1832	35	37
1833	76	38
1834	22	67
1835	34	78
1836	53	91
1837	99	58
1838	86	88
1839	92	19
1840	3	90
1841	89	93
1842	77	39
1843	69	35
1844	94	64
1845	95	29
1846	0	57
1847	12	31
1848	83	91
1849	43	18
1850	75	87
1851	95	65
1852	96	30
1853	41	94
1854	33	90
1855	72	81
1856	64	77
1857	37	60
1858	3	67
1859	77	16
1860	22	80
1861	68	47
1862	14	76
1863	26	50
1864	27	15
1865	78	97
1866	42	31
1867	28	96
1868	7	73
1869	48	74
1870	54	5
1871	27	51
1872	20	12
1873	12	8
1874	23	17
1875	75	64
1876	21	93
1877	96	7
1878	41	71
1879	87	38
1880	88	3
1881	52	80
1882	65	19
1883	68	24
1884	88	39
1885	34	68
1886	25	99
1887	26	27
1888	45	77
1889	46	42
1890	86	78
1891	38	38
1892	97	87
1893	3	80
1894	89	83
1895	77	29
1896	69	25
1897	61	21
1898	0	11
1899	19	24
1900	39	2
1901	83	45
1902	84	10
1903	29	74
1904	48	87
1905	54	18
1906	6	90
1907	12	21
1908	53	22
1909	4	17
1910	72	35
1911	64	31
1912	43	8
1913	35	4
1914	22	34
1915	96	20
1916	41	84
1917	25	76
1918	44	89
1919	85	90
1920	65	32
1921	10	96
1922	57	28
1923	77	6
1924	69	2
1925	26	40
1926	27	5
1927	67	78
1928	59	74
1929	78	87
1930	98	65
1931	71	48
1932	90	61
1933	0	24
1934	60	38
1935	52	34
1936	41	61
1937	87	28
1938	34	22
1939	45	31
1940	56	40
1941	57	5
1942	2	69
1943	26	17
1944	59	51
1945	32	97
1946	97	77
1947	49	37
1948	50	2
1949	89	73
1950	36	67
1951	16	89
1952	8	5
1953	67	91
1954	27	18
1955	48	41
1956	70	96
1957	63	57
1958	9	86
1959	29	64
1960	21	60
1961	40	73
1962	41	38
1963	33	34
1964	12	11
1965	2	46
1966	62	97
1967	22	24
1968	1	1
1969	14	20
1970	34	35
1971	85	80
1972	86	45
1973	51	87
1974	98	19
1975	2	82
1976	13	97
1977	79	42
1978	71	38
1979	63	34
1980	36	80
1981	91	16
1982	55	93
1983	28	76
1984	29	41
1985	47	89
1986	8	18
1987	94	21
1988	60	28
1989	5	92
1990	6	57
1991	10	27
1992	41	51
1993	81	87
1994	87	18
1995	39	90
1996	45	21
1997	37	17
1998	51	64
1999	43	60
2000	67	45
2001	86	58
2002	79	19
2003	35	92
2004	28	53
2005	7	30
2006	60	5
2007	5	69
2008	30	13
2009	71	51
2010	9	76
2011	83	25
2012	69	90
2013	21	50
2014	61	86
2015	40	63
2016	22	14
2017	51	77
2018	98	9
2019	43	73
2020	89	40
2021	16	56
2022	35	69
2023	26	20
2024	13	87
2025	5	46
2026	90	41
2027	17	57
2028	82	37
2029	29	31
2030	41	5
2031	60	18
2032	33	1
2033	92	87
2034	73	73
2035	34	2
2036	74	38
2037	33	37
2038	11	98
2039	2	49
2040	3	14
2041	89	17
2042	66	70
2043	59	31
2044	78	44
2045	71	5
2046	63	1
2047	82	14
2048	28	43
2049	29	8
2050	48	21
2051	40	17
2052	5	59
2053	63	37
2054	77	84
2055	42	63
2056	75	11
2057	21	40
2058	80	89
2059	8	70
2060	81	54
2061	73	50
2062	52	27
2063	39	57
2064	85	24
2065	31	53
2066	95	74
2067	20	80
2068	85	60
2069	31	89
2070	72	90
2071	51	67
2072	88	71
2073	71	18
2074	49	79
2075	48	34
2076	81	31
2077	92	77
2078	52	4
2079	93	5
2080	58	84
2081	30	65
2082	2	3
2083	94	86
2084	27	96
2085	85	37
2086	35	36
2087	95	87
2088	47	10
2089	67	25
2090	13	54
2091	53	90
2092	64	99
2093	37	82
2094	16	59
2095	57	60
2096	90	8
2097	77	38
2098	9	20
2099	68	69
2100	88	84
2101	46	87
2102	92	54
2103	6	14
2104	38	83
2105	50	57
2106	15	99
2107	21	30
2108	80	79
2109	81	44
2110	27	73
2111	93	18
2112	66	1
2113	91	94
2114	23	39
2115	84	55
2116	44	98
2117	70	7
2118	43	53
2119	36	14
2120	76	50
2121	87	96
2122	47	23
2123	92	31
2124	37	95
2125	17	37
2126	57	73
2127	76	86
2128	49	69
2129	63	4
2130	7	72
2131	27	50
2132	19	46
2133	39	24
2134	91	71
2135	19	82
2136	23	52
2137	16	13
2138	35	26
2139	1	33
2140	47	0
2141	13	44
2142	65	54
2143	17	14
2144	22	92
2145	61	20
2146	38	73
2147	90	83
2148	82	79
2149	19	59
2150	12	20
2151	31	33
2152	96	19
2153	53	57
2154	65	31
2155	80	10
2156	5	16
2157	37	85
2158	78	86
2159	58	28
2160	50	24
2161	15	66
2162	18	71
2163	19	36
2164	30	45
2165	90	96
2166	84	22
2167	8	63
2168	60	73
2169	20	37
2170	23	42
2171	43	20
2172	84	58
2173	16	3
2174	38	27
2175	97	76
2176	22	82
2177	68	49
2178	78	99
2179	71	60
2180	50	37
2181	82	69
2182	42	33
2183	62	11
2184	8	40
2185	39	27
2186	12	10
2187	4	6
2188	51	1
2189	23	19
2190	41	73
2191	87	40
2192	33	69
2193	45	43
2194	64	56
2195	65	21
2196	10	85
2197	57	17
2198	49	13
2199	34	70
2200	86	80
2201	70	72
2202	89	85
2203	50	14
2204	90	50
2205	36	79
2206	42	10
2207	61	23
2208	81	1
2209	83	47
2210	29	76
2211	75	43
2212	40	85
2213	12	23
2214	22	36
2215	33	82
2216	74	83
2217	34	47
2218	99	27
2219	38	17
2220	89	62
2221	22	72
2222	68	39
2223	77	8
2224	69	4
2225	7	29
2226	18	38
2227	19	3
2228	79	54
2229	70	85
2230	89	98
2231	63	46
2232	9	75
2233	82	59
2234	48	66
2235	72	14
2236	63	82
2237	44	32
2238	21	85
2239	25	55
2240	45	33
2241	85	69
2242	37	29
2243	56	42
2244	3	36
2245	22	49
2246	68	16
2247	78	66
2248	79	31
2249	70	62
2250	89	75
2251	90	40
2252	36	69
2253	47	78
2254	0	3
2255	19	16
2256	60	17
2257	92	86
2258	71	63
2259	17	92
2260	83	37
2261	84	2
2262	52	49
2263	25	32
2264	37	6
2265	3	13
2266	54	95
2267	14	22
2268	88	8
2269	66	69
2270	67	34
2271	46	11
2272	38	7
2273	15	23
2274	18	28
2275	79	44
2276	70	75
2277	71	40
2278	82	49
2279	47	91
2280	94	23
2281	80	88
2282	0	16
2283	60	30
2284	92	99
2285	10	29
2286	84	15
2287	21	75
2288	62	76
2289	22	3
2290	54	72
2291	87	20
2292	93	63
2293	20	79
2294	39	92
2295	45	23
2296	86	24
2297	2	61
2298	3	26
2299	89	29
2300	66	82
2301	26	9
2302	13	76
2303	78	56
2304	79	21
2305	98	34
2306	43	98
2307	16	81
2308	17	46
2309	47	68
2310	94	0
2311	19	6
2312	52	3
2313	50	79
2314	83	27
2315	29	56
2316	61	88
2317	95	1
2318	41	30
2319	19	91
2320	85	36
2321	2	38
2322	54	85
2323	14	12
2324	67	24
2325	13	53
2326	86	37
2327	4	84
2328	97	46
2329	98	11
2330	43	75
2331	96	87
2332	1	78
2333	88	83
2334	48	10
2335	59	56
2336	5	48
2337	16	94
2338	49	91
2339	75	0
2340	15	98
2341	40	42
2342	2	15
2343	81	79
2344	74	40
2345	66	36
2346	45	13
2347	97	23
2348	89	19
2349	95	99
2350	1	55
2351	88	60
2352	59	33
2353	4	97
2354	17	36
2355	63	3
2356	9	32
2357	77	50
2358	28	45
2359	88	96
2360	50	69
2361	80	91
2362	81	56
2363	93	30
2364	39	59
2365	44	25
2366	51	33
2367	43	29
2368	75	98
2369	67	14
2370	12	78
2371	59	10
2372	72	92
2373	23	87
2374	64	88
2375	17	13
2376	35	61
2377	76	62
2378	1	68
2379	47	35
2380	46	76
2381	5	38
2382	63	16
2383	9	45
2384	40	32
2385	26	97
2386	73	29
2387	52	6
2388	39	36
2389	30	67
2390	2	5
2391	27	98
2392	74	30
2393	19	94
2394	11	90
2395	12	55
2396	72	69
2397	32	33
2398	23	64
2399	43	42
2400	84	80
2401	47	12
2402	17	26
2403	36	39
2404	3	91
2405	28	35
2406	48	13
2407	18	70
2408	90	95
2409	81	46
2410	8	62
2411	27	75
2412	0	58
2413	74	7
2414	25	2
2415	66	3
2416	11	67
2417	85	16
2418	30	80
2419	91	96
2420	66	39
2421	67	4
2422	33	91
2423	65	43
2424	70	9
2425	17	3
2426	1	58
2427	47	25
2428	34	92
2429	57	75
2430	77	53
2431	9	35
2432	68	84
2433	69	49
2434	7	74
2435	26	87
2436	18	83
2437	79	99
2438	11	44
2439	71	95
2440	31	22
2441	8	75
2442	95	43
2443	41	72
2444	66	16
2445	11	80
2446	13	10
2447	31	58
2448	4	41
2449	32	23
2450	23	54
2451	24	19
2452	43	32
2453	16	15
2454	84	70
2455	95	79
2456	1	35
2457	88	40
2458	47	2
2459	5	5
2460	64	91
2461	65	56
2462	57	52
2463	17	16
2464	3	81
2465	14	90
2466	80	35
2467	7	51
2468	59	98
2469	18	60
2470	79	76
2471	50	49
2472	94	55
2473	27	65
2474	73	32
2475	40	84
2476	19	61
2477	11	57
2478	32	0
2479	91	86
2480	4	18
2481	95	56
2482	87	52
2483	88	17
2484	93	95
2485	16	28
2486	2	93
2487	22	71
2488	14	67
2489	46	56
2490	89	97
2491	50	26
2492	42	22
2493	61	35
2494	81	13
2495	8	29
2496	0	25
2497	39	16
2498	31	12
2499	63	81
2500	21	84
2501	41	62
2502	33	58
2503	52	71
2504	13	0
2505	72	49
2506	44	67
2507	4	31
2508	64	45
2509	10	74
2510	56	41
2511	76	19
2512	1	25
2513	88	30
2514	99	39
2515	66	91
2516	45	68
2517	86	69
2518	37	64
2519	65	46
2520	89	74
2521	9	2
2522	69	16
2523	15	45
2524	7	41
2525	80	25
2526	8	6
2527	27	19
2528	19	15
2529	79	66
2530	11	11
2531	42	35
2532	83	36
2533	48	78
2534	8	42
2535	94	45
2536	63	94
2537	62	98
2538	41	75
2539	87	42
2540	1	2
2541	52	84
2542	53	49
2543	93	85
2544	10	87
2545	51	88
2546	76	32
2547	3	48
2548	7	18
2549	13	98
2550	59	65
2551	78	78
2552	79	43
2553	70	74
2554	36	81
2555	82	48
2556	81	3
2557	18	63
2558	5	93
2559	71	75
2560	84	14
2561	21	74
2562	53	26
2563	72	39
2564	44	57
2565	37	18
2566	65	0
2567	22	38
2568	68	5
2569	88	20
2570	25	80
2571	32	88
2572	57	32
2573	98	33
2574	49	28
2575	90	29
2576	77	10
2577	35	93
2578	55	71
2579	15	35
2580	26	44
2581	67	82
2582	59	78
2583	71	52
2584	90	65
2585	63	48
2586	28	90
2587	48	68
2588	21	51
2589	20	6
2590	53	3
2591	44	34
2592	23	11
2593	62	88
2594	41	65
2595	73	97
2596	34	26
2597	46	0
2598	51	78
2599	2	73
2600	76	22
2601	22	51
2602	14	47
\.


--
-- Name: acting_acting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.acting_acting_id_seq', 1, false);


--
-- Name: actor_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.actor_actor_id_seq', 1, false);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);


--
-- Name: chose_chose_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.chose_chose_id_seq', 1, false);


--
-- Name: currency_currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.currency_currency_id_seq', 1, false);


--
-- Name: director_awards_director_awards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.director_awards_director_awards_id_seq', 1, false);


--
-- Name: director_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.director_director_id_seq', 1, false);


--
-- Name: dubbed_dubbed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.dubbed_dubbed_id_seq', 1, false);


--
-- Name: film_categories_film_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.film_categories_film_categories_id_seq', 1, false);


--
-- Name: film_directors_film_directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.film_directors_film_directors_id_seq', 1, false);


--
-- Name: film_film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.film_film_id_seq', 1, false);


--
-- Name: film_genres_film_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.film_genres_film_genres_id_seq', 1, false);


--
-- Name: film_subs_film_subs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.film_subs_film_subs_id_seq', 1, false);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- Name: havingg_havingg_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.havingg_havingg_id_seq', 1, false);


--
-- Name: languages_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.languages_languages_id_seq', 1, false);


--
-- Name: play_play_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.play_play_id_seq', 1, false);


--
-- Name: production_company_production_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.production_company_production_company_id_seq', 1, false);


--
-- Name: production_films_production_films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.production_films_production_films_id_seq', 1, false);


--
-- Name: rate_review_rate_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.rate_review_rate_review_id_seq', 1, false);


--
-- Name: review_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.review_review_id_seq', 1, false);


--
-- Name: sub_sub_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.sub_sub_id_seq', 1, false);


--
-- Name: use_use_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.use_use_id_seq', 1, false);


--
-- Name: user_films_user_films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_films_user_films_id_seq', 1, false);


--
-- Name: user_subs_user_subs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_subs_user_subs_id_seq', 1, false);


--
-- Name: users_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.users_users_id_seq', 1, false);


--
-- Name: video_resolution_video_resolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.video_resolution_video_resolution_id_seq', 1, false);


--
-- Name: watch_watch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.watch_watch_id_seq', 1, false);


--
-- Name: acting acting_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.acting
    ADD CONSTRAINT acting_pkey PRIMARY KEY (acting_id);


--
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (actor_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: chose chose_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.chose
    ADD CONSTRAINT chose_pkey PRIMARY KEY (chose_id);


--
-- Name: currency currency_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (currency_id);


--
-- Name: director_awards director_awards_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.director_awards
    ADD CONSTRAINT director_awards_pkey PRIMARY KEY (director_awards_id);


--
-- Name: director director_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (director_id);


--
-- Name: dubbed dubbed_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.dubbed
    ADD CONSTRAINT dubbed_pkey PRIMARY KEY (dubbed_id);


--
-- Name: film_categories film_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_categories_pkey PRIMARY KEY (film_categories_id);


--
-- Name: film_directors film_directors_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_directors
    ADD CONSTRAINT film_directors_pkey PRIMARY KEY (film_directors_id);


--
-- Name: film_genres film_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT film_genres_pkey PRIMARY KEY (film_genres_id);


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (film_id);


--
-- Name: film_subs film_subs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_subs
    ADD CONSTRAINT film_subs_pkey PRIMARY KEY (film_subs_id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: havingg havingg_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.havingg
    ADD CONSTRAINT havingg_pkey PRIMARY KEY (havingg_id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (languages_id);


--
-- Name: play play_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.play
    ADD CONSTRAINT play_pkey PRIMARY KEY (play_id);


--
-- Name: production_company production_company_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_company
    ADD CONSTRAINT production_company_pkey PRIMARY KEY (production_company_id);


--
-- Name: production_films production_films_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_films
    ADD CONSTRAINT production_films_pkey PRIMARY KEY (production_films_id);


--
-- Name: rate_review rate_rewiev_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.rate_review
    ADD CONSTRAINT rate_rewiev_pkey PRIMARY KEY (rate_review_id);


--
-- Name: review rewiev_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT rewiev_pkey PRIMARY KEY (review_id);


--
-- Name: sub sub_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.sub
    ADD CONSTRAINT sub_pkey PRIMARY KEY (sub_id);


--
-- Name: use use_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.use
    ADD CONSTRAINT use_pkey PRIMARY KEY (use_id);


--
-- Name: user_films user_films_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_films
    ADD CONSTRAINT user_films_pkey PRIMARY KEY (user_films_id);


--
-- Name: user_subs user_subs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_subs
    ADD CONSTRAINT user_subs_pkey PRIMARY KEY (user_subs_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (users_id);


--
-- Name: video_resolution video_resalution_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.video_resolution
    ADD CONSTRAINT video_resalution_pkey PRIMARY KEY (video_resolution_id);


--
-- Name: watch watch_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_pkey PRIMARY KEY (watch_id);


--
-- Name: acting acting_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.acting
    ADD CONSTRAINT acting_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actor(actor_id);


--
-- Name: acting acting_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.acting
    ADD CONSTRAINT acting_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: chose chose_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.chose
    ADD CONSTRAINT chose_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.currency(currency_id);


--
-- Name: chose chose_sub_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.chose
    ADD CONSTRAINT chose_sub_id_fkey FOREIGN KEY (sub_id) REFERENCES public.sub(sub_id);


--
-- Name: dubbed dubbed_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.dubbed
    ADD CONSTRAINT dubbed_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: dubbed dubbed_languages_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.dubbed
    ADD CONSTRAINT dubbed_languages_id_fkey FOREIGN KEY (languages_id) REFERENCES public.languages(languages_id);


--
-- Name: film_categories film_categories_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_categories_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: film_categories film_categories_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_categories_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: film_directors film_directors_director_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_directors
    ADD CONSTRAINT film_directors_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.director(director_id);


--
-- Name: film_directors film_directors_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_directors
    ADD CONSTRAINT film_directors_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: film_genres film_genres_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT film_genres_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: film_genres film_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_genres
    ADD CONSTRAINT film_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);


--
-- Name: film_subs film_subs_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_subs
    ADD CONSTRAINT film_subs_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: film_subs film_subs_sub_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.film_subs
    ADD CONSTRAINT film_subs_sub_id_fkey FOREIGN KEY (sub_id) REFERENCES public.sub(sub_id);


--
-- Name: havingg havingg_director_awards_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.havingg
    ADD CONSTRAINT havingg_director_awards_id_fkey FOREIGN KEY (director_awards_id) REFERENCES public.director_awards(director_awards_id);


--
-- Name: havingg havingg_director_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.havingg
    ADD CONSTRAINT havingg_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.director(director_id);


--
-- Name: play play_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.play
    ADD CONSTRAINT play_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: play play_video_resolution_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.play
    ADD CONSTRAINT play_video_resolution_id_fkey FOREIGN KEY (video_resolution_id) REFERENCES public.video_resolution(video_resolution_id);


--
-- Name: production_films production_films_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_films
    ADD CONSTRAINT production_films_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: production_films production_films_production_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.production_films
    ADD CONSTRAINT production_films_production_company_id_fkey FOREIGN KEY (production_company_id) REFERENCES public.production_company(production_company_id);


--
-- Name: rate_review rate_rewiev_review_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.rate_review
    ADD CONSTRAINT rate_rewiev_review_id_fkey FOREIGN KEY (review_id) REFERENCES public.review(review_id);


--
-- Name: rate_review rate_rewiev_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.rate_review
    ADD CONSTRAINT rate_rewiev_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- Name: review rewiev_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT rewiev_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: review rewiev_login_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.review
    ADD CONSTRAINT rewiev_login_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- Name: use use_languages_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.use
    ADD CONSTRAINT use_languages_id_fkey FOREIGN KEY (languages_id) REFERENCES public.languages(languages_id);


--
-- Name: use use_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.use
    ADD CONSTRAINT use_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- Name: user_films user_films_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_films
    ADD CONSTRAINT user_films_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: user_films user_films_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_films
    ADD CONSTRAINT user_films_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- Name: user_subs user_subs_sub_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_subs
    ADD CONSTRAINT user_subs_sub_id_fkey FOREIGN KEY (sub_id) REFERENCES public.sub(sub_id);


--
-- Name: user_subs user_subs_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_subs
    ADD CONSTRAINT user_subs_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- Name: users users_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.currency(currency_id);


--
-- Name: watch watch_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.film(film_id);


--
-- Name: watch watch_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.watch
    ADD CONSTRAINT watch_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);


--
-- PostgreSQL database dump complete
--
