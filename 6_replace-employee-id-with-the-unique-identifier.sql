-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT eu.unique_id , e.name
FROM
    Employees e
LEFT JOIN 
    EmployeeUNI eu
ON e.id = eu.id


-- Method -2

SELECT eu.unique_id AS unique_id , e.name AS name
FROM
    Employees e
LEFT JOIN 
    EmployeeUNI eu
ON e.id = eu.id
