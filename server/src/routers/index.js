import { Router } from "express";
import filmsRouter from './films.js'

const router = Router();

router.use("/films", filmsRouter);

export default router;
