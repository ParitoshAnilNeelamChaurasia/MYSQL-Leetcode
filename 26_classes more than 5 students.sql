-- https://leetcode.com/problems/classes-more-than-5-students/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT class
FROM 
    Courses
GROUP BY
    class
HAVING
    COUNT(student) >= 5
