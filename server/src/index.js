import express from "express";
import "dotenv/config";
import apiRouter from "./routers/index.js";

const app = express();

const PORT = process.env.PORT;

app.use("api", apiRouter);

app.listen(PORT, () => {
  console.log("App started on port", PORT);
});
