-- DISTINCT is always used inside a SELECT clause
  -- and return as resultset all distinct values of a colunm
SELECT DISTINCT department
FROM products;

-- Here we use DISTINCT in conjunction with COUNT aggregator to quantify the
  -- number of unique departaments
SELECT COUNT(DISTINCT department)
FROM products;