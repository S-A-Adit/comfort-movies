const express = require("express");
const path = require("path");
const movies = require("./movies");

const app = express();
const PORT = 3000;

// Set EJS
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Serve static files (images, css)
app.use(express.static("public"));

// Homepage
app.get("/", (req, res) => {
  res.render("index", { movies });
});

// Movie Detail Page
app.get("/movies/:slug", (req, res) => {
  const movie = movies.find((m) => m.slug === req.params.slug);

  if (!movie) {
    return res.status(404).render("404");
  }

  res.render("movie", { movie });
});

// 404 Catch-all
app.use((req, res) => {
  res.status(404).render("404");
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
