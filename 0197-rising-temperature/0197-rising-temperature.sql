-- Write your PostgreSQL query statement below
SELECT
    w.id
FROM
    Weather AS w
CROSS JOIN 
    Weather AS b
WHERE 
    w.recorddate - INTERVAL '1 day' = b.recorddate
    AND w.temperature > b.temperature;