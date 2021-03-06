-- Examples: COUNT(), SUM(), AVG(), MIN(), MAX()
  -- Aggregate sees the grouped value and do a operation on these and returns
  -- a single value

-- For example if we take MAX() like below we will take the maximum id number
  -- of comments
SELECT MAX(id)
FROM comments;

-- MIN()
SELECT MIN(id)
FROM comments;

-- AVG()
SELECT AVG(id)
FROM comments;

-- COUNT()
SELECT COUNT(id)
FROM comments;

-- SUM()
SELECT SUM(id)
FROM comments;