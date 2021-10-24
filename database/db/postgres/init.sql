CREATE DATABASE test;
\c test;

-- a single table is used for all downloads
CREATE TABLE downloads (
  link_url text NOT NULL,
  local_path text NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (link_url)
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
  downloads
TO
  test_user;
