SELECT 
    *
FROM
    film
WHERE    
	film_id IN (SELECT 
					film_id
				FROM
					film_category
				WHERE
					category_id IN (SELECT 
										category_id
									FROM
										category
									WHERE
										category.name = 'Horror'))
ORDER BY rental_rate DESC
LIMIT 3;
			