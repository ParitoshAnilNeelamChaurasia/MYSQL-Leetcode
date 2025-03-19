-- https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

-- IFNULL => used if product didn't have purchase date 
    -- OR
    -- product didn't have start_date and end_date
SELECT
    p.product_id , IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units) , 2) , 0)
AS
    average_price
FROM
    Prices p
LEFT JOIN 
    UnitsSold u
ON
    p.product_id = u.product_id
AND
    u.purchase_date >= p.start_date 
AND
    u.purchase_date <= p.end_date
GROUP BY
    p.product_id
ORDER BY
    average_price
ASC
