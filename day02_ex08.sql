SELECT DISTINCT p.name
FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON po.pizza_id = m.id
WHERE p.gender = 'male' 
  AND (p.city = 'Moscow' OR p.city = 'Samara')
  AND (m.pizza_name = 'pepperoni' OR m.pizza_name = 'mushroom')
ORDER BY p.name DESC;
