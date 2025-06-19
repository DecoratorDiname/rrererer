SELECT m.pizza_name, m.price, pi.name AS pizzeria_name, pv.visit_date
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN menu m ON pv.pizza_id = m.id
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE p.name = 'Kate' 
  AND m.price BETWEEN 800 AND 1000
ORDER BY m.pizza_name, m.price, pi.name;
