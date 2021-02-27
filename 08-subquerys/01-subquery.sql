-- Subquerys exist to attend to a necessity of build a query that take the 
  -- result of another query to use as clause - a more or less as a nested query
  -- This query shows the products that have a price greater then the product with
  -- the highest price on toys department
SELECT name,
  price
FROM products
WHERE price > (
    SELECT MAX(price)
    FROM products
    WHERE department = 'Toys'
  );