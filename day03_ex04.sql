SELECT pi.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.pizza_id = m.id
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE p.gender = 'female'
GROUP BY pi.name
HAVING COUNT(DISTINCT po.person_id) = COUNT(po.person_id)

UNION

SELECT pi.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.pizza_id = m.id
JOIN pizzeria pi ON m.pizzeria_id = pi.id
WHERE p.gender = 'male'
GROUP BY pi.name
HAVING COUNT(DISTINCT po.person_id) = COUNT(po.person_id)

ORDER BY pizzeria_name;
