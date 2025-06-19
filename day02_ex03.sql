WITH unvisited_pizzerias AS (
    SELECT p.name, p.rating
    FROM pizzeria p
    LEFT JOIN person_visits pv ON p.id = pv.pizzeria_id
    WHERE pv.pizzeria_id IS NULL
)
SELECT name, rating
FROM unvisited_pizzerias;
