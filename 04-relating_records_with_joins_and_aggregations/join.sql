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