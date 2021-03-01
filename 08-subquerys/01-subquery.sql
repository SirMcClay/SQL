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