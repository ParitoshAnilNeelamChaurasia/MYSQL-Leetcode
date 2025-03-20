-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT contest_id , ROUND((COUNT(distinct user_id))*100 / (SELECT COUNT(user_id) FROM Users) , 2)
AS
    percentage
FROM 
    Register
GROUP BY
    contest_id
ORDER BY
    percentage DESC , contest_id
