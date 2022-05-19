show databases;
use Movie_Company;

SELECT first_name, last_name
FROM Actors
INNER JOIN Movies
ON Actors.genre = Movies.genre
WHERE Movies.genre = 'comedy'; -- query 1

SELECT first_name, last_name FROM Directors WHERE id = 1; -- query 2

SELECT first_name, last_name, movies.title, movies.genre
FROM Directors
INNER JOIN Movies
ON Directors.id = Movies.directorsId
WHERE release_year = 2015; -- query 3

