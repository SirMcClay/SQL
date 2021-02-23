-- OPTIONS

-- ON DELETE RESTRICT
  -- if try delete throw an error
  -- example:
DELETE FROM users
WHERE id = 1;

-- ON DELETE NO ACTION
  
-- ON DELETE CASCADE
  -- if try delete deletes all the data associated with

-- ON DELETE SET NULL
  -- if try delete then set all associated data foreign key to NULL

-- ON DELETE SET DEFAULT
  -- if try delete set associated foreign keys to a default value