import { Router } from "express";
import {
  getFilms,
  getGenres,
  getLanguages,
  getUsers,
} from "../utils/queries.js";

const router = Router();

router.use("/films", async (req, res, next) => {
  try {
    const params = req.query;
    const films = await getFilms(params);
    return res.status(200).json(films.rows);
  } catch (error) {
    next(error);
  }
});

router.use("/users", async (req, res, next) => {
  try {
    const users = await getUsers();
    return res.status(200).json(users.rows);
  } catch (error) {
    next(error);
  }
});

router.use("/languages", async (req, res, next) => {
  try {
    const languages = await getLanguages();
    return res.status(200).json(languages.rows);
  } catch (error) {
    next(error);
  }
});

router.use("/genres", async (req, res, next) => {
  try {
    const genres = await getGenres();
    return res.status(200).json(genres.rows);
  } catch (error) {
    next(error);
  }
});

export default router;
