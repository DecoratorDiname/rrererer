WITH date_range AS (
    SELECT DATE '2022-01-01' + INTERVAL (n) DAY AS visit_date
    FROM generate_series(0, 9) AS n
)
SELECT dr.visit_date
FROM date_range dr
WHERE NOT EXISTS (
    SELECT 1
    FROM person_visits pv
    WHERE pv.visit_date = dr.visit_date AND pv.person_id IN (1, 2)
)
ORDER BY visit_date ASC;
