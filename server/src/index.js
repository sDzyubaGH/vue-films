import express from "express";
import "dotenv/config";
import apiRouter from "./routers/index.js";
import cors from "cors";
import { pgClient } from "./pgClient.js";
import errorHandler from "./errorHandler.js";

const app = express();

const PORT = process.env.PORT;

app.use(cors());

app.use("/api", apiRouter);
app.use(errorHandler);

pgClient
  .connect()
  .then(() => {
    console.log("Подключение к БД прошло успешено");
    app.listen(PORT, () => console.log("App started on port", PORT));
  })
  .catch((err) => console.log("Не удалось подключиться к БД", err));
