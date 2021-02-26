-- Just grouping all comments by user_id
SELECT user_id
FROM comments
GROUP BY user_id;

-- Just grouping all comments by user_id and show the maximun id value of all
  -- rows grouped by id
SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id;