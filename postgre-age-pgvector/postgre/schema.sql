-- Load AGE extension
CREATE EXTENSION IF NOT EXISTS age;
LOAD 'age';

-- Enable pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

CREATE DATABASE IF NOT EXISTS db_name;

SET search_path public, extensions;

-- Create sample table
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    item_data JSONB,
    embedding vector(4096) -- vector data
);