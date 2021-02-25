-- Join two tables and return rows if they have a colunm user_id equal
  -- so WHERE clause work as a filter
SELECT url,
  contents
FROM comments
  JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;

-- Join three tables where user id on all of then are the same
  -- We just use multiple inner joins to do the work becaouse this approach
  -- drop rows which does not fulfill the conditions
  -- This is a rather advanced use of join
SELECT url,
  contents,
  username
FROM comments
  JOIN photos ON photos.id = comments.photo_id
  JOIN users ON users.id = comments.user_id
  AND users.id = photos.user_id;

