-- 1.
SELECT
    d.first_name AS "directors",
    COUNT(g.id) AS "total genre"
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
GROUP BY d.id, d.first_name;

-- 2.
SELECT a.first_name AS "actors", count(ma.role) AS "total role"
FROM movies m
JOIN movies_actors ma on m.id = ma.movie_id
JOIN actors a ON ma.actor_id = a.id
GROUP BY a.id, a.first_name
HAVING COUNT(m.id) >5;

-- 3.
SELECT
    d.first_name AS "directors",
    COUNT(m.title) AS "total movies"
FROM movies m
JOIN directors d ON m.director_id = d.id
GROUP BY d.first_name
ORDER BY "total movies" DESC
LIMIT 1;

-- 4
SELECT
    extract(year FROM release_date) as release,
    count(release_date) AS "total movies"
FROM movies
GROUP BY extract(year FROM release_date)
LIMIT 1;

-- 5
SELECT m.title as movie, string_agg(a.first_name, ', ') AS "actors"
FROM movies_actors ma 
 JOIN movies m ON ma.movie_id = m.id
 JOIN actors a ON ma.actor_id = a.id
GROUP BY m.title;
