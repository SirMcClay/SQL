-- OPTIONS

-- ON DELETE RESTRICT (this is default)
  -- if try delete throw an error
  -- example:
DELETE FROM users
WHERE id = 1;

-- ON DELETE NO ACTION
  
-- ON DELETE CASCADE
  -- if try delete deletes all the data associated with
CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

-- ON DELETE SET NULL
  -- if try delete then set all associated data foreign key to NULL

-- ON DELETE SET DEFAULT
  -- if try delete set associated foreign keys to a default value