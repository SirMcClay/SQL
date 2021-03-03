-- LEAST operator return the smaller value of values provided
SELECT LEAST(1000, 20, 100);

-- Here an example of LEAST operator where we show the price of product times
  -- 0.5 or 400 what is least
SELECT name, price, LEAST(price * 0.5, 400)
FROM products;