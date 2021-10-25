CREATE DATABASE test;
\c test;

-- a single table is used for all downloads
CREATE TABLE downloads (
  entry_id text NOT NULL,
  link_url text NOT NULL,
  local_path text NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (entry_id)
);

-- a single table is used for all configs
CREATE TABLE configs (
  config_key text NOT NULL,
  config_value text NOT NULL,
  PRIMARY KEY (config_key)
);

CREATE
  USER
  test_user
WITH
  NOCREATEDB
ENCRYPTED PASSWORD
  'test_pass';

GRANT
  ALL PRIVILEGES
ON TABLE
  downloads,
  configs
TO
  test_user;
