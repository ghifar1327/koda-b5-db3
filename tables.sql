CREATE TABLE movies (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY key,
  title VARCHAR(255) NOT NULL,
  release_date TIMESTAMP,
  rating float,
  director_id int,
  genre_id int
);
SELECT  title, release_date, rating, director_id, genre_id, id
FROM movies

---------------------------------------------------------
CREATE TABLE directors (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(225),
  last_name VARCHAR(225)
);
SELECT first_name ,last_name, id
FROM directors

------------------------------------------------------------
CREATE TABLE genres (
  id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255)
);
SELECT name ,id
FROM genres

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

