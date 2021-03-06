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

-- Subquerys on SELECT with single value
SELECT name, price, (
	SELECT MAX(price) FROM products
)
FROM products
WHERE price > 867;

SELECT name, price, (
	SELECT price FROM products WHERE id = 3 
) AS id_3_price
FROM products
WHERE price > 867;

  -- Exercise to show name, price and ratio price / max price using subquerys

  SELECT name,
    price,
    price / (
      SELECT MAX(price)
      FROM phones
    ) AS price_ratio
  FROM phones;

-- Subquerys on FROM
  -- GOTCHA - subquerys on FROM must have a ALIAS using AS clause otherwise
  -- a error is throw
SELECT name,
  price_weight_ratio
FROM (
    SELECT name,
      price / weight AS price_weight_ratio
    FROM products
  ) AS p
WHERE price_weight_ratio > 5;

-- Another simple example of subquery applied on FROM
SELECT *
FROM (
	SELECT MAX(price) FROM products
) AS p;

-- A more intricate example, now calculation a average value of number of orders
  -- by user using of course a subquery
SELECT AVG(order_count)
FROM
  (
    SELECT user_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
  ) AS p;

-- Exercise: Calculate a max average price for the average price of all phones
  -- from each manufacturer of our table phones
SELECT MAX(p.avg_price) AS max_average_price
FROM (
  SELECT AVG(price) AS avg_price
	FROM phones
	GROUP BY manufacturer
) AS p;

-- Subquerys on JOIN
  -- Just a simple and contrive example just to get used with the rules
SELECT first_name
FROM users
JOIN (
  SELECT user_id
  FROM orders
  WHERE product_id = 3
) AS o
ON o.user_id = users.id;

-- Subquery on WHERE
  -- IMPORTANT!!! The structure of data returned from subquery depends upon a
  -- comparison operator used on WHERE clause
-- Select ids of orders where the product id was present on a result of a 
  -- subquery which return the ids of products which have the pirce_weight_ratio
  -- greater than 50
SELECT id
FROM orders
WHERE product_id 
IN (
  SELECT id
  FROM products
  WHERE price / weight > 50
);

-- Another subquery used on WHERE
  -- Here return a dataset with all names of products which have price greater
  -- than the average price of all products
SELECT name
FROM products
WHERE price > (
  SELECT AVG(price)
  FROM products
);

-- Exercise: Select the name and price of phones that have the price greater
  -- than the phone S5620 Monte price using a subquery
SELECT name, price
FROM phones
WHERE price > (
  SELECT price
  FROM phones
  WHERE name = 'S5620 Monte'
);

-- Another example of subquery on WHERE which returns a colunm and allow us 
  -- to chech and get a dataset with all products there are NOT IN the result
  -- of the subquery
SELECT name, department
FROM products
WHERE department NOT IN (
  SELECT department
  FROM products
  WHERE price < 100
);

-- Using > ALL operator inside WHERE clause to compare values with all values
  -- of a returned colunm from subquery
SELECT name, department, price
FROM products
WHERE price > ALL (
	SELECT price
  FROM products
  WHERE department = 'Industrial'
);

-- Using > SOME operator inside WHERE clause to compare price which is greater
  -- greater then at least one price of all products of Industrial department
SELECT name, department, price
FROM products
WHERE price > SOME (
	SELECT price
  FROM products
  WHERE department = 'Industrial'
);

-- Exercise: Print que phones that have a price greater than any phone made by
  -- manufacturer Samsung
SELECT name
FROM phones
WHERE price > ALL (
	SELECT price
  FROM phones
  WHERE manufacturer = 'Samsung'
);

-- Correlated Subquery - Here return the most expensive product from each 
  -- department using subquery and compare the departments of outer query (p1)
  -- and inner (subquery - p2)
SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
	SELECT MAX(price)
  FROM products AS p2
  WHERE p2.department = p1.department
);

-- Yet Correlated Subquery we now have a example with subquery inside a SELECT
  -- clause returnin the name and number of orders of every product on our 
  -- dataset
SELECT p1.name,
(
	SELECT COUNT(*)
  FROM orders AS o1
  WHERE o1.product_id = p1.id
)
FROM products as p1;

-- SELECT without a FROM or WHERE...etc. This is usefull if you want to caluclate
  -- the value of a returnd other values from subquery
SELECT (
	SELECT MAX(price) FROM products
) / (
  SELECT AVG(price) FROM products
);

-- ...or just show the results from multiple subquerys
SELECT (
	SELECT MAX(price) FROM products
), (
  SELECT AVG(price) FROM products
);

-- Here a similar query but with more subquerys and aliases
SELECT (
	SELECT MAX(price) FROM phones
) AS max_price, (
  SELECT MIN(price) FROM phones
) AS min_price, (
  SELECT AVG(price) FROM phones
) AS avg_price;
