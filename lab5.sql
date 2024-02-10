SELECT 
	(SELECT COUNT(*)
    FROM inventory
    WHERE film_id = (SELECT film_id
					FROM film
                    WHERE title LIKE "Hunch%" 
)
) AS num;

SELECT *
FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT a.first_name,a.last_name,a.actor_id
FROM actor a
JOIN film_actor fa ON fa.actor_id = a.actor_id
WHERE fa.film_id = (SELECT film_id FROM film WHERE title = "Alone Trip")