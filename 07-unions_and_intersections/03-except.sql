-- EXCEPT acts on first query removing the rows that appear on the resultset
  -- from the second query. So the order of the querys matter
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
EXCEPT
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);