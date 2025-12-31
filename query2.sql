SELECT
    m.id,
    m.title,
    m.release_date,
    m.rating,
    d.first_name,
    g.name
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
LIMIT 50