SELECT title, release_date 
FROM movies WHERE extract(year FROM release_date) = '2020';

SELECT first_name
FROM actors WHERE first_name LIKE 's%';

SELECT title, rating, release_date
FROM movies
WHERE rating BETWEEN 4.0 and 8.0
AND extract(year FROM release_date) BETWEEN '2004' and '2010';
