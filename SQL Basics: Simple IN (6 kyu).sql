--Link to Question: https://www.codewars.com/kata/58113c03009b4fcc66000d29

SELECT id, name 
FROM departments
WHERE id
IN (SELECT department_id FROM sales
   WHERE (price)>98.00)