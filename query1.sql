CREATE TABLE movies (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY key,
  title VARCHAR(255) NOT NULL,
  release_date TIMESTAMP,
  rating float,
  director_id int,
  genre_id int,
  CONSTRAINT fk_movies_diretors

);

CREATE TABLE actors (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY key,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies_actors (
  movie_id int,
  actor_id int,
  role VARCHAR(255)
);

CREATE TABLE directors (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(225),
  last_name VARCHAR(225)
);

CREATE TABLE genres (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255)
);
