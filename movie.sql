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
--13
INSERT INTO actors ( name, dob, charName, movieId)
VALUES
('Kit', '1981-10-02', 'Jon', 1),
('Emilia', '1981-10-01', 'Daenerys', 1),
('Sophie', '1981-10-11', 'Sansa', 1),
('Maisie', '1991-10-01', 'Arya', 1),
('Lena', '1921-10-01', 'Cersei', 1),
('Peter', '1981-10-01', 'Tyrion', 1),
('Nikolaj', '1971-10-01', 'Jaime', 1),
('John', '1971-10-01', 'Samwell', 1),
('Richard', '1981-10-01', 'Robb', 1),
('Ygritte', '1991-10-01', 'Rose', 1),
('Scarlett', '1981-10-02', 'Black Widow', 2),
('Chris H', '1981-10-01', 'Thor', 2),
('Robert', '1981-10-11', 'Iron Man', 2),
('Chris E', '1991-10-01', 'Captain America', 2),
('Mark R', '1921-10-01', 'Hulk', 2),
('Jeremy', '1981-10-01', 'Hawkeye', 2),
('Tom', '1971-10-01', 'Loki', 2),
('Paul', '1971-10-01', 'Ant-Man', 2),
('Tom Holland', '1981-10-01', 'Spider-man', 2),
('Josh', '1991-10-01', 'Thanos', 2),
('Jenna', '1981-10-02', 'Pam', 3),
('John', '1981-10-01', 'Jim', 3),
('Steve', '1981-10-11', 'Michael', 3),
('Rainn', '1991-10-01', 'Dwight', 3),
('Angela', '1921-10-01', 'Angela', 3),
('Mindy', '1981-10-01', 'Kelly', 3),
('Ed', '1971-10-01', 'Andy', 3),
('B.J.', '1971-10-01', 'Ryan', 3),
('Brian', '1981-10-01', 'Kevin', 3),
('Ellie', '1991-10-01', 'Erin', 3)
--14
Update Movies.movies
SET rating = 'G'
WHERE id = 1;
Update Movies.movies
SET rating = 'PG-13'
WHERE id = 2;
Update Movies.movies
SET rating = 'PG-13'
WHERE id = 3;
Update Movies.movies
SET rating = 'R'
WHERE id = 4;
Update Movies.movies
SET rating = 'PG'
WHERE id = 5;

SELECT id, title, genres, rating
FROM Movies.movies;
--With Joins
--15
SELECT title, ratings.rating
FROM Movies.movies
LEFT outer JOIN Movies.ratings 
ON Movies.movies.id = Movies.ratings.movie_id
WHERE  movies.title LIKE 'godfather, the%';

--16
SELECT title, ratings.rating, timestamp
FROM Movies.movies
LEFT JOIN Movies.ratings
ON Movies.movies.id = Movies.ratings.movie_id
WHERE title LIKE '%godfather, the%'
ORDER BY timestamp ASC

--17
SELECT title, imdb_id, genres
FROM Movies.movies
INNER JOIN Movies.links
ON Movies.movies.id = Movies.links.imdb_Id
WHERE genres LIKE '%comed%' && title LIKE ('%2005%')

--18
SELECT title
FROM Movies.movies
WHERE id NOT IN (SELECT movie_id FROM Movies.ratings)