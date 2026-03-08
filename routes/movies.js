import express from "express";
import { pool } from "../config/database.js";

const router = express.Router();

// Homepage
router.get("/", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM movies");
    res.render("index", { movies: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send("Database error");
  }
});

// Movie details
router.get("/movies/:slug", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM movies WHERE slug = $1", [
      req.params.slug,
    ]);

    const movie = result.rows[0];

    if (!movie) {
      return res.status(404).render("404");
    }

    res.render("movie", { movie });
  } catch (err) {
    console.error(err);
    res.status(500).send("Database error");
  }
});

export default router;
