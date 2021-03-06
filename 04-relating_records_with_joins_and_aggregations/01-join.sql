-- Retrive data from two tables
SELECT contents,
  username
FROM COMMENTS
  JOIN users ON users.id = comments.user_id;

SELECT contents,
  url
FROM COMMENTS
  JOIN photos ON photos.id = comments.photo_id;

-- Deal with ambiguities and use short syntax and aliases
SELECT comments.id AS comment_id,
  p.id
FROM photos AS p
  JOIN comments ON p.id = comments.photo_id;

-- FOUR TYPES OF JOIN

-- INNER JOIN
  -- retrieve just matched rows, those rows which dont match was droped
SELECT url,
  username
FROM photos
  JOIN users ON users.id = photos.user_id;
-- OR
SELECT url,
  username
FROM photos
  INNER JOIN users ON users.id = photos.user_id;

-- LEFT OUTER JOIN
  -- Retrieve all rows from first table, in case photos, even not have a match
  -- from second table, but not drop rows from first table
SELECT url,
  username
FROM photos
  LEFT JOIN users ON users.id = photos.user_id;

-- RIGHT OUTER JOIN
  -- Retrieve all rows from second table, in case users, even not have a match
  -- from first table, but not drop rows from second table
SELECT url,
  username
FROM photos
  RIGHT JOIN users ON users.id = photos.user_id;

-- FULL JOIN
  -- Retrieve all data even the rows unmached and not drop rows
SELECT url,
  username
FROM photos
  FULL JOIN users ON users.id = photos.user_id;