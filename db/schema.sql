CREATE DATABASE property_finder;
\c property_finder






CREATE TABLE users(
id SERIAL PRIMARY KEY,
    user_type TEXT,
    name TEXT,
    email TEXT,
    password_digest TEXT,
);