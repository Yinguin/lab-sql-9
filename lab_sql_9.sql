USE sakila;

# 1. Create a table rentals_may to store the data from rental table with information for the month of May.
# 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

SELECT * FROM rental LIMIT 5;

CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

SELECT * FROM rentals_may LIMIT 5;

# 3. Create a table rentals_june to store the data from rental table with information for the month of June.
# 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

# 5. Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(rental_id) AS num_of_rentals
FROM rentals_may
GROUP BY customer_id
ORDER BY customer_id;

# 6. Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(rental_id) AS num_of_rentals
FROM rentals_june
GROUP BY customer_id
ORDER BY customer_id;


