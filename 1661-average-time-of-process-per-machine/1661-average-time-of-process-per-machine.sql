-- Write your PostgreSQL query statement below
SELECT machine_id, ROUND(processing_time::NUMERIC,3) as processing_time
FROM(    
    SELECT
        a.machine_id,
        AVG (b.timestamp - a.timestamp) AS processing_time
        -- a.timestamp,
        -- b.timestamp,
        -- a.activity_type,
        -- b.activity_type
    FROM 
        Activity a
    CROSS JOIN 
        Activity b
    WHERE 
        a.machine_id=b.machine_id
        AND a.process_id = b.process_id
        AND a.activity_type='start'
        AND a.activity_type <> b.activity_type
    GROUP BY a.machine_id)