SELECT name,
  area
FROM cities
WHERE area > 4000;

SELECT name,
  area
FROM cities
WHERE area = 8223;

SELECT name,
  area
FROM cities
WHERE area != 8223;

SELECT name,
  area
FROM cities
WHERE area <> 8223;

SELECT name,
  area
FROM cities
WHERE area BETWEEN 2000 AND 4000;

SELECT name,
  area
FROM cities
WHERE name IN ('Delhi', 'Shanghai');

SELECT name,
  area
FROM cities
WHERE name NOT IN ('Delhi', 'Shanghai');