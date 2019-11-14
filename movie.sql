--1
SELECT id, title, genres
FROM Movies.movies;
--2
SELECT id, title
FROM Movies.movies
LIMIT 10;
--3
SELECT id, title, genres
FROM Movies.movies 
WHERE id = 485;
--4
SELECT id
FROM Movies.movies 
WHERE title LIKE '%Made in America%';
--5
SELECT title
FROM Movies.movies 
ORDER BY IF(title RLIKE '^[a-z]', 1, 2), title
LIMIT 10;
--6
SELECT title
FROM Movies.movies 
WHERE title LIKE '%(2002)%';
--7
SELECT title
FROM Movies.movies 
WHERE title LIKE '%Godfather,%';
--8
SELECT title
FROM Movies.movies 
WHERE genres LIKE '%omed%';
--9
SELECT title
FROM Movies.movies 
WHERE title LIKE '%(2000)%';
--10
SELECT title
FROM Movies.movies 
WHERE genres LIKE '%omed%' &&
title LIKE '%death%';
--11
SELECT title
FROM Movies.movies 
WHERE title LIKE '%(2001)%' && title LIKE '%super%' or
title LIKE '%(2002)%' && title LIKE '%super%';
--12
