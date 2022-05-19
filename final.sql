CREATE DATABASE Movie_Company;
USE Movie_Company;
CREATE TABLE Movies (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    title varchar(20),
    release_year int,
    genre varchar(20),
    PRIMARY KEY(id),
    directorsId int,
    FOREIGN KEY (directorsId) REFERENCES Directors(id)
);
CREATE TABLE Directors (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    first_name varchar(20),
    last_name varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE Actors (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    first_name varchar(20),
    last_name varchar(20),
    PRIMARY KEY (id),
    genre varchar(20)
);

CREATE TABLE movie_actor_assoc (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    movieId int NOT NULL,
    actorId int NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO Movies (title, release_year, genre, directorsId) VALUES ('JAWS', 1975, 'thriller', 1);
INSERT INTO Movies (title, release_year, genre, directorsId) VALUES ('Ted 2', 2015, 'comedy', 2);

INSERT INTO Directors (first_name, last_name) VALUES ('steven', 'spielberg');
INSERT INTO Directors (first_name, last_name) VALUES ('seth', 'macfarlane');

INSERT INTO Actors (first_name, last_name, genre) VALUES ('mark', 'wahlberg', 'comedy');
INSERT INTO Actors (first_name, last_name, genre) VALUES ('roy', 'scheider', 'thriller');

INSERT INTO movie_actor_assoc (movieId, actorId) VALUES (1, 2);
INSERT INTO movie_actor_assoc (movieId, actorId) VALUES (2, 1);

