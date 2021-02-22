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

SELECT name,
  area
FROM cities
WHERE area NOT IN (3043, 8223);

SELECT name,
  area
FROM cities
WHERE area NOT IN (3043, 8223)
  AND name = 'Delhi';

SELECT name,
  area
FROM cities
WHERE area NOT IN (3043, 8223)
  OR name = 'Delhi';

SELECT name,
  area
FROM cities
WHERE area NOT IN (3043, 8223)
  OR name = 'Delhi'
  OR name = 'Tokio';