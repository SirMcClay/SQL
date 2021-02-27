-- Simple order by a colunm value
SELECT *
FROM products
ORDER BY price;

-- Simple order by a colunm value IN DESCENDING ORDER
SELECT *
FROM products
ORDER BY price DESC;

-- Simple order by a colunm value IN ASCENDING (default) ORDER
SELECT *
FROM products
ORDER BY price ASC;

-- IMPORTANT!!! All above is valid for characteres values and not only to numeric

-- Here we order by price and secondly order by weight
SELECT *
FROM products
ORDER BY price, weight;