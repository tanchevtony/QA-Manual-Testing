CREATE DATABASE employees;

SHOW DATABASES;

USE employees;

CREATE TABLE people (
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   email VARCHAR(40) NOT NULL,
   first_name VARCHAR(40) NOT NULL,
   last_name VARCHAR(40) NOT NULL
);

INSERT INTO people (email, first_name, last_name)
VALUES 
  ('john@gmail.com', 'John', 'Smith'),
  ('smith@yahoo.co.uk', 'John', 'Smith'),
  ('peter@gmail.com', 'Peter', 'White'),
  ('anne@anne.com', 'Anne', 'Green'),
  ('jason.jj@gmail.com', 'Jason', 'Anderson'),
  ('emily@gmail.com', 'Emily', 'Johnson'),
  ('david@yahoo.com', 'David', 'Brown'),
  ('sarah@gmail.com', 'Sarah', 'Davis');

SELECT * FROM people;

SELECT first_name, last_name FROM people;

SELECT first_name, last_name FROM people
LIMIT 3;

SELECT * FROM people
WHERE email = 'peter@gmail.com';

SELECT * FROM people
WHERE id > 2 AND id < 5
ORDER BY id;

SELECT DISTINCT last_name
FROM people;

SELECT first_name, email 
FROM people 
WHERE last_name = 'Smith';

SELECT first_name, last_name
FROM people WHERE id <= 3;

SELECT first_name, last_name
FROM people
ORDER BY last_name;

SELECT first_name, last_name
FROM people
ORDER BY last_name DESC;

UPDATE people
SET last_name = 'Adams'
WHERE first_name = 'Anne';

UPDATE people
SET first_name = 'Peter', last_name = 'Black', email = 'pw@email.com'
WHERE id = 3;

DELETE FROM people WHERE id = 4;

TRUNCATE TABLE people;

DROP TABLE people;

DROP DATABASE employees;


