-- GREATEST is a Postgresql operator to return the gratest value from a list
SELECT GREATEST(200, 10, 30);

-- Here an example of use of GREATEST where we return on a resultset a cost of
  -- ship that is mininum 30 dollars or the 2 * weight, what is greater from both
SELECT name, weight, GREATEST(30, 2 * weight)
FROM products;