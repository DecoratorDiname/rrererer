SELECT name
FROM pizzeria
WHERE id NOT IN (
    SELECT DISTINCT person_id
    FROM person_visits
);

SELECT name
FROM pizzeria p
WHERE NOT EXISTS (
    SELECT 1
    FROM person_visits pv
    WHERE pv.person_id = p.id
);
