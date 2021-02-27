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