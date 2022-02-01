-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer = 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer = 4619
SELECT COUNT(amount) AS count_3_99_5_99
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- Answer ... Quite a few have the same number and that number is 8
SELECT film_id, COUNT(film_id) as count_films
FROM inventory
WHERE store_id > 0
GROUP BY film_id
ORDER BY count_films DESC;

-- 4. How many customers have the last name ‘William’?
-- Answer 2. Linda Williams and Gina Williamson
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'William%';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer I dont know where to find that...
SELECT staff_id, 

-- 6. How many different district names are there?
-- Answer = 378
SELECT COUNT(DISTINCT district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer 508
SELECT film_id, COUNT(DISTINCT actor_id) AS count_actor
FROM film_actor
GROUP BY film_id
ORDER BY count_actor DESC;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer 21
SELECT COUNT(customer_id) AS count_customer
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer 3
SELECT DISTINCT amount, COUNT(payment_id) AS count_payments
FROM payment
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY amount;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- Answer = 5 PG-13 has 223 movies
SELECT rating, COUNT(rating) AS count_rating
FROM film
GROUP BY rating
ORDER BY count_rating;