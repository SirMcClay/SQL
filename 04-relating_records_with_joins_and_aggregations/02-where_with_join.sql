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

-- Join prettie the same of the above where we take three tables
  -- and join books with their reviews and after see if the author of book
  -- are the same that writes the review and retrive this only rows
SELECT title,
  name,
  rating
FROM books
  JOIN reviews ON books.id = reviews.book_id
  JOIN authors ON authors.id = books.author_id
  AND authors.id = reviews.reviewer_id;