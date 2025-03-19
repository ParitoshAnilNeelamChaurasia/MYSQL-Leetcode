


# Write your MySQL query statement below

-- SELF JOIN
SELECT*
FROM 
    Employee e1
INNER JOIN 
    Employee e2
ON 
    e1.id = e2.managerID

-- INPUT
| id  | name  | department | managerId |
| --- | ----- | ---------- | --------- |
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |


-- OUTPUT

| id  | name | department | managerId | id  | name  | department | managerId |
| --- | ---- | ---------- | --------- | --- | ----- | ---------- | --------- |
| 101 | John | A          | null      | 102 | Dan   | A          | 101       |
| 101 | John | A          | null      | 103 | James | A          | 101       |
| 101 | John | A          | null      | 104 | Amy   | A          | 101       |
| 101 | John | A          | null      | 105 | Anne  | A          | 101       |
| 101 | John | A          | null      | 106 | Ron   | B          | 101       |



-- CORRECT CODE=

  
-- SELF JOIN
SELECT
    e1.name
FROM 
    Employee e1
INNER JOIN 
    Employee e2
ON 
    e1.id = e2.managerID
GROUP BY
    e2.managerID
HAVING
    COUNT(e2.managerID) >= 5


