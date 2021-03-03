-- CASE...END is a structure operator to create a multiple conditionals and
  -- return something as a colunm result
SELECT
	name,
  price,
  CASE
  	WHEN price > 600 THEN 'high'
    WHEN price > 300 THEN 'medium'
    ELSE 'cheap'
  END
FROM products;