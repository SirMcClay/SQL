-- The INTERSECT shows on the resultset just the rows that appear on both
  -- querys
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
 )
 INTERSECT
 (
   SELECT *
   FROM products
   ORDER BY price / weight DESC
   LIMIT 4
 );