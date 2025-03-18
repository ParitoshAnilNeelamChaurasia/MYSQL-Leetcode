-- https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT 
    name,bonus
FROM
    Employee e
LEFT JOIN 
    Bonus b
ON 
    e.empID = b.empID
WHERE
    b.bonus is NULL 
OR
    bonus < 1000
