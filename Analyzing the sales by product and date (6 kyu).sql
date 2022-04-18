--Link to Question: https://www.codewars.com/kata/5dac87a0abe9f1001f39e36d

SELECT
  name as product_name,
  extract(year from date)::int as year,
  extract(month from date)::int as month,
  extract(day from date)::int as day,
  sum(price*count) as total
FROM sales_details 
JOIN sales on sales_details.sale_id = sales.id
JOIN products on sales_details.product_id = products.id
GROUP BY name, rollup(year, month, day)
ORDER BY product_name, year, month, day