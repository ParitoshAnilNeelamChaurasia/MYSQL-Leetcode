-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT 
    customer_id , count(customer_id) AS
    count_no_trans
FROM 
    visits v
LEFT JOIN 
    Transactions t
ON 
    v.visit_id = t.visit_id
WHERE 
    t.transaction_id is NULL
GROUP BY
    v.customer_id
