SELECT
    m.id,
    m.title,
    m.release_date as "release",
    m.rating,
    d.first_name as "director",
    g.name as "genre",
    ma.role as "role",
    a.first_name as "actor"
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
JOIN movies_actors ma ON m.id = ma.movie_id
JOIN actors a on ma.actor_id = a.id
