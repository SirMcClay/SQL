-- Join two tables and return rows if they have a colunm user_id equal
  -- so WHERE clause work as a filter
SELECT url,
  contents
FROM comments
  JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;