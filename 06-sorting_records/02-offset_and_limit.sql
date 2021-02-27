-- Offset just skip some number of row of our resultset
SELECT *
FROM users
OFFSET 40;

-- Limit just limit que number of rows returned in our resultset
SELECT *
FROM users
LIMIT 5;

-- Just return a resultset of our five less expansive products
SELECT *
FROM products
ORDER BY price
LIMIT 5;

-- Just return a resultset of our five most expansive products using now DESC
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- Just return a resultset of our five most expansive products and ignore the 
  -- one most expansive using OFFSET 1
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;

-- BY CONVENTION!!! We use LIMIT first and OFFSET second if we use both ona query

-- WHERE USE LIMIT?? - Use to take a limited list of records, like first 5 or
  -- first 10

-- WHERE USE OFFSET?? - Use to show for a user a limited number of row at a time
  -- like first 20 and another time next 20 and so on. See example below:

-- first 20 products with cheaper prices...
SELECT *
FROM products
ORDER BY price
LIMIT 20
OFFSET 0;

-- Next 20 products...
SELECT *
FROM products
ORDER BY price
LIMIT 20
OFFSET 20;

-- Next 20 products...
SELECT *
FROM products
ORDER BY price
LIMIT 20
OFFSET 40;

-- and so on...