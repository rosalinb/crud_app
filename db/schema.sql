CREATE DATABASE property_finder;
\c property_finder


CREATE TABLE users(
id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT,
    user_type TEXT
);