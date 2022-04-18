---Link to Question: https://www.codewars.com/kata/58094559c47d323ebd000035

SELECT people.id, people.name, 
  COUNT(sales.sale) AS sale_count, 
  RANK() OVER (PARTITION BY people.id ORDER BY people.id DESC) AS sale_rank 
FROM people people
  INNER JOIN sales sales
  ON people.id = sales.people_id
  GROUP BY people.id;