SELECT 
    fl.category, COUNT(ALL fl.category)
FROM
    film_list fl
WHERE
    fl.FID IN (SELECT 
            i.film_id
        FROM
            customer_list cl,
            rental r,
            inventory i
        WHERE
            cl.name = 'PATRICIA JOHNSON'
                AND cl.ID = r.customer_id
                AND r.inventory_id = i.inventory_id
        GROUP BY i.film_id)
GROUP BY fl.category
ORDER BY COUNT(ALL fl.category) DESC , fl.category ASC
LIMIT 3;