-- Write your PostgreSQL query statement below
SELECT e.name, b.bonus FROM Employee e
LEFT JOIN Bonus b
ON e.empID = b.empID
where b.bonus < 1000 or b.bonus is null ;