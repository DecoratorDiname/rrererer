SELECT m.pizza_name, pi.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.pizza_id = m.id
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE p.name IN ('Denis', 'Anna')
ORDER BY m.pizza_name ASC, pi.name ASC;
