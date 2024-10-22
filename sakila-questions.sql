USE SAKILA;
SHOW TABLES;

DESCRIBE ACTOR;

# Q1
SELECT * FROM ACTOR;

#Q2
SELECT last_name
FROM ACTOR
WHERE first_name = "John";

#Q3
SELECT *
FROM ACTOR
WHERE last_name = "Neeson";

#Q4
SELECT *
FROM ACTOR
WHERE actor_id % 10 = 0;

DESCRIBE FILM;

#Q5
SELECT description
FROM FILM
WHERE film_id = 100;

#Q6
SELECT title
FROM FILM
WHERE rating = 'R';

#Q7
SELECT title
FROM FILM
WHERE rating != 'R';

#Q8
SELECT title
FROM FILM
ORDER BY length
LIMIT 10;

#Q9
SELECT title
FROM FILM
WHERE length = (SELECT MAX(length) FROM FILM);

#Q10
SELECT title
FROM FILM
WHERE special_features LIKE "%Deleted Scenes%";

#Q11
SELECT last_name
FROM ACTOR
GROUP BY last_name
HAVING COUNT(last_name) = 1
ORDER BY last_name DESC;

#Q12
SELECT last_name, COUNT(last_name)
FROM ACTOR
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY COUNT(last_name) DESC;

#Q13
SELECT *
FROM ACTOR
WHERE actor_id = (SELECT actor_id 
	FROM FILM_ACTOR 
    GROUP BY actor_id 
    ORDER BY COUNT(actor_id) DESC 
    LIMIT 1);
    
#Q13
SELECT *
FROM ACTOR
WHERE actor_id = (SELECT actor_id 
	FROM FILM_ACTOR 
    GROUP BY actor_id 
    ORDER BY COUNT(actor_id) DESC 
    LIMIT 1);    

#Q14
SELECT release_year 
FROM FILM
WHERE title = "Academy Dinosaur";

#Q15
SELECT AVG(length)
FROM FILM;

#Q16
SELECT name, AVG(length)
FROM film_category
INNER JOIN film on film_category.film_id = film.film_id
INNER JOIN category on film_category.category_id = category.category_id
GROUP BY category.category_id;

#Q17
SELECT title, description
FROM FILM
WHERE description LIKE "%robot%";

#Q18












