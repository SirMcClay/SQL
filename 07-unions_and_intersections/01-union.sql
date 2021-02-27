-- Union show the resultset of two or more querys together
  -- and for default exclude the duplicate rows
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);

-- If we use UNION ALL the union dont remove duplicate rows, instead show all results
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION ALL
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);

-- For an alternative syntax we can use without parentesis like this:
SELECT * FROM products
UNION
SELECT * FROM products;

-- Exercise to use union to show manufacturers which phones price are less then
  -- 170 and union to manufacturers which have more then 2 phones created
(
  SELECT manufacturer
  FROM phones
  WHERE price < 170
)
UNION
(
  SELECT manufacturer
  FROM phones
  GROUP BY manufacturer
  HAVING COUNT(*) > 2
);