SELECT 
    film_id, title,rating
FROM
    film
WHERE
    rating = 'PG-13'
        AND film_id IN (SELECT 
            film_id
        FROM
            film_category
        WHERE
            category_id IN (SELECT 
                    category_id
                FROM
                    category
                WHERE
                    category.name = 'Comedy'));