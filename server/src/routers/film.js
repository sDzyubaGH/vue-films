/* маршрутизация запросов о фильмах */

import film from "../controllers/film.js";
import { Router } from "express";

const filmRouter = Router();

filmRouter.get("/", film.get);

export default filmRouter;
