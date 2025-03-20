

-- https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT 
    MAX(num) AS num
FROM
    MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)
