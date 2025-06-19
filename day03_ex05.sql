SELECT pi.name AS pizzeria_name
FROM person_visits pv
JOIN pizzeria pi ON pv.pizzeria_id = pi.id
WHERE pv.person_id = (SELECT id FROM person WHERE name = 'Andrey')
  AND pi.id NOT IN (
      SELECT m.pizzeria_id
      FROM person_order po
      JOIN menu m ON po.pizza_id = m.id
      WHERE po.person_id = (SELECT id FROM person WHERE name = 'Andrey')
  )
ORDER BY pi.name;
