SELECT pi.name
FROM person_visits pv
JOIN pizzeria pi ON pv.pizzeria_id = pi.id
JOIN menu m ON pi.id = m.pizzeria_id
WHERE pv.person_id = (SELECT id FROM person WHERE name = 'Dmitriy')
  AND pv.visit_date = '2022-01-08'
  AND m.price < 800;
