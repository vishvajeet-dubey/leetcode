-- Write your PostgreSQL query statement below
SELECT
    a.machine_id,
    AVG(b.timestamp - a.timestamp) AS processing_time
FROM 
    Activity a
CROSS JOIN 
    Activity b
WHERE 
    a.machine_id=b.machine_id
    AND a.process_id = b.process_id
    AND a.activity_type='start'
    AND a.activity_type <> b.activity_type
GROUP BY a.machine_id;