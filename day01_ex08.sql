SELECT po.order_date AS order_date, CONCAT(name, ' (', age, ')') AS person_name
FROM person_order po
NATURAL JOIN person
ORDER BY order_date ASC, person_name ASC;
