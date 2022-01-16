SELECT *
FROM film;

-- SINGLE TABLE ANALYSIS: Assignment (Select & From)

SELECT first_name, last_name, email
FROM customer;

-- SINGLE TABLE ANALYSIS: Assignment (Select Distinct)

SELECT DISTINCT rental_duration
FROM mavenmovies.film;

-- SINGLE TABLE ANALYSIS: Assignment (The Where Clause)

SELECT customer_id, rental_id, amount, payment_date
FROM payment
WHERE customer_id <= 100;

-- SINGLE TABLE ANALYSIS: Assignment (where & and)

SELECT customer_id, rental_id, amount, payment_date
FROM payment
WHERE customer_id <= 100
  AND amount > 5
  AND payment_date >= '2006-01-01';

-- SINGLE TABLE ANALYSIS: Assignment (combining where & or)

SELECT customer_id, rental_id, amount, payment_date
FROM payment
WHERE customer_id = 42
   OR customer_id = 53
   OR customer_id = 60
   OR customer_id = 75
   OR amount > 5;


-- SINGLE TABLE ANALYSIS: Assignment (The Like Operator)

SELECT title, special_features
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


-- SINGLE TABLE ANALYSIS: Assignment (GROUP BY)

SELECT rental_duration, COUNT(film_id) AS films_with_this_rental_duration
FROM film
GROUP BY rental_duration;

-- SINGLE TABLE ANALYSIS: Assignment (Aggregate Functions)

SELECT replacement_cost,
       COUNT(film_id)   AS number_of_films,
       MIN(rental_rate) AS cheapest_rental,
       MAX(rental_rate) AS most_expensive_rental,
       AVG(rental_rate) AS average_rental
FROM film
GROUP BY replacement_cost
ORDER BY replacement_cost DESC;

-- SINGLE TABLE ANALYSIS: Assignment (The HAVING Clause)

SELECT customer_id, COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(rental_id) < 15;

-- SINGLE TABLE ANALYSIS: Assignment (The ORDER BY Clause)

SELECT title, length, rental_rate
FROM film
ORDER BY length DESC;

