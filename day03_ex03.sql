SELECT pi.name AS pizzeria_name
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN pizzeria pi ON pv.pizzeria_id = pi.id
WHERE p.gender = 'female'
GROUP BY pi.name
HAVING COUNT(pv.person_id) > 0

UNION ALL

SELECT pi.name AS pizzeria_name
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN pizzeria pi ON pv.pizzeria_id = pi.id
WHERE p.gender = 'male'
GROUP BY pi.name
HAVING COUNT(pv.person_id) > 0

ORDER BY pizzeria_name;
