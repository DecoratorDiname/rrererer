SELECT p.name
FROM person p
JOIN person_order po ON p.id = po.person_id
JOIN menu m ON po.pizza_id = m.id
WHERE p.gender = 'female' 
  AND m.pizza_name IN ('pepperoni', 'cheese')
GROUP BY p.name
HAVING COUNT(DISTINCT m.pizza_name) = 2
ORDER BY p.name ASC;
