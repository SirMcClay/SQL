-- Just grouping all comments by user_id
SELECT user_id
FROM comments
GROUP BY user_id;

-- Just grouping all comments by user_id and show the maximun id value of all
  -- rows grouped by id
SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id;


-- Just grouping all comments by user_id and count how many ids each user id has
  -- this may be helpful to show us how many comments each user has been made
  -- and we as well renamed count colunm to a more meaninfull name
SELECT user_id, COUNT(id) AS num_comments_created
FROM comments
GROUP BY user_id;