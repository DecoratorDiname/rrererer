SELECT id
FROM menu
WHERE id NOT IN (
    SELECT pizza_id
    FROM person_order
)
ORDER BY id;
