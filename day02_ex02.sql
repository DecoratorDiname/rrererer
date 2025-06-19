SELECT COALESCE(p.name, '-') AS person_name, COALESCE(pi.name, '-') AS pizzeria_name, pv.visit_date
FROM person p
CROSS JOIN pizzeria pi
LEFT JOIN person_visits pv ON p.id = pv.person_id AND pi.id = pv.pizzeria_id AND pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
ORDER BY person_name ASC, pizzeria_name ASC, visit_date ASC;
