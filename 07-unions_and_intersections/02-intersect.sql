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

 -- Using INTERSECT ALL the resultset will contain the multiple results of all
  -- querys if there are on both isolated
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
 )
 INTERSECT ALL
 (
   SELECT *
   FROM products
   ORDER BY price / weight DESC
   LIMIT 4
 );