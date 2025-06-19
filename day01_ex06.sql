SELECT po.order_date AS action_date, p.name AS person_name
FROM person_order po
JOIN person p ON po.person_id = p.id
WHERE EXISTS (
    SELECT 1
    FROM person_visits pv
    WHERE pv.visit_date = po.order_date AND pv.person_id = po.person_id
)
ORDER BY action_date ASC, person_name DESC;
