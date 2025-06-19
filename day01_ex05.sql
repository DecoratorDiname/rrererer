SELECT p.id AS person_id, pi.id AS pizzeria_id
FROM person p, pizzeria pi
ORDER BY p.id, pi.id;
