CREATE DATABASE property_finder;
\c property_finder


CREATE TABLE users(
id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT,
    user_type TEXT
);

CREATE TABLE properties(
    id SERIAL PRIMARY KEY,
    image_url TEXT,
    house_number TEXT,
    street_name TEXT,
    postcode INTEGER,
    city TEXT,
    state TEXT,
    country TEXT,
    property_type TEXT,
    number_of_bedrooms INTEGER,
    number_of_bathrooms INTEGER,
    number_of_parkings INTEGER,
    price REAL
);

