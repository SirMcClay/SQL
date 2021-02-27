-- Group by user_id all the rows and return the uniques user ids that appears on the rows
  -- note that the rows are grouped with ids but are not accessible unless we
  -- use a aggregate clause
SELECT user_id
FROM comments
GROUP BY user_id;