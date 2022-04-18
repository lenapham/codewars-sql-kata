--Link to Question: https://www.codewars.com/kata/58126aa90ea99769e7000119


CREATE EXTENSION tablefunc;
    
SELECT * 
FROM  crosstab(
      'SELECT products.name, detail, COUNT(details.id)
      FROM products 
      JOIN details 
      ON products.id = details.product_id
      GROUP BY products.name, details.detail
      ORDER BY products.name')
AS ct (name text, bad bigint, good bigint, ok bigint)

