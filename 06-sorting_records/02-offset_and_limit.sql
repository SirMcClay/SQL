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