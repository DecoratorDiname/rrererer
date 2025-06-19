SELECT po.order_date AS order_date, CONCAT(p.name, ' (', p.age, ')') AS person_name
FROM person_order po
JOIN person p ON po.person_id = p.id
ORDER BY order_date ASC, person_name ASC;
