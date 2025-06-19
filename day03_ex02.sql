SELECT m.pizza_name, m.price, pi.name AS pizzeria_name
FROM menu m
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE m.id NOT IN (
    SELECT pizza_id
    FROM person_order
)
ORDER BY m.pizza_name, m.price;
