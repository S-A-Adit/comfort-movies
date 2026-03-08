CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title TEXT,
  slug TEXT UNIQUE,
  description TEXT,
  image TEXT
);