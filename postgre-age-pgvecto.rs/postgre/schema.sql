-- Load AGE extension
CREATE EXTENSION IF NOT EXISTS age;
LOAD 'age';

CREATE DATABASE IF NOT EXISTS db_name;

-- Enable pgvecto.rs extension
DROP EXTENSION IF EXISTS vectors;
CREATE EXTENSION vectors;
LOAD 'vectors';

-- solve ERROR: PostgreSQL database, error:operator does not exist: vectors.vector <=> vectors.vector
SET search_path TO "$user", public, extensions, vectors;

-- create sample table with a vector column
CREATE TABLE items (
  id bigserial PRIMARY KEY,
  embedding vector(4096) NOT NULL -- 4096 dimensions
);