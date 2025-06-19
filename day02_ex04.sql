SELECT m.pizza_name, pi.name AS pizzeria_name, m.price
FROM menu m
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE m.pizza_name IN ('mushroom', 'pepperoni')
ORDER BY m.pizza_name ASC, pi.name ASC;
