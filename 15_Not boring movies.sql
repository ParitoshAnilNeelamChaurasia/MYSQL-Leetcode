-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT*
FROM 
    Cinema
WHERE
    id % 2 = 1 
AND
    description != "boring"
GROUP BY
    id
ORDER BY 
    rating
desc
