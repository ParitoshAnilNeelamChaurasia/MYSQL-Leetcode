
-- https://leetcode.com/problems/customers-who-bought-all-products/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT 
    DISTINCT COUNT(c.product_key) = COUNT(p.product_key) AS
    customer_id
FROM 
    Customer c
LEFT JOIN
    Product p
ON 
    c.product_key = p.product_key
GROUP BY
    customer_id
