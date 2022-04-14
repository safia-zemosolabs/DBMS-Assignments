SELECT 
    COUNT(*)
FROM
    category c,
    film_category fc,
    inventory i,
    rental r,
    staff s
WHERE
    c.name = 'Sci-fi'
        AND c.category_id = fc.category_id
        AND fc.film_id = i.film_id
        AND i.inventory_id = r.inventory_id
        AND r.staff_id = s.staff_id
        AND s.first_name = 'Jon'
        AND s.last_name = 'Stephens';
        
        
SELECT 
    fc.film_id, COUNT(ALL fc.film_id)
FROM
    category c,
    film_category fc,
    inventory i,
    rental r,
    staff s
WHERE
    c.name = 'Sci-fi'
        AND c.category_id = fc.category_id
        AND fc.film_id = i.film_id
        AND i.inventory_id = r.inventory_id
        AND r.staff_id = s.staff_id
        AND s.first_name = 'Jon'
        AND s.last_name = 'Stephens'
GROUP BY fc.film_id;