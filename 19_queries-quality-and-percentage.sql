

-- https://leetcode.com/problems/queries-quality-and-percentage/submissions/1579719827/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT 
    query_name , ROUND(AVG(rating/position) , 2)
AS
    -- if rating < 3 => make it 1 else make it 0  
    -- using AVG =====  can find the percentage
    quality, ROUND(AVG(IF(rating < 3 , 1 , 0)) * 100 , 2)
AS
    poor_query_percentage
FROM
    Queries
GROUP BY
    query_name
