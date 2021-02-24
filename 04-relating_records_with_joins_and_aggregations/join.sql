-- Retrive data from two tables
SELECT contents,
  username
FROM COMMENTS
  JOIN users ON users.id = comments.user_id;

SELECT contents,
  url
FROM COMMENTS
  JOIN photos ON photos.id = comments.photo_id;


