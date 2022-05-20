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
    ad_line TEXT,
    house_number TEXT NULL,
    street_name TEXT,
    postcode INTEGER,
    suburb TEXT,
    state TEXT,
    property_type TEXT,
    number_of_bedrooms INTEGER,
    number_of_bathrooms INTEGER,
    number_of_parkings INTEGER,
    price TEXT,
    created_by TEXT,
);

-- ALTER TABLE properties 
-- RENAME COLUMN city TO suburb;

-- ALTER TABLE properties 
-- DROP COLUMN country;

-- ALTER TABLE properties 
-- DROP COLUMN agent_contact;

INSERT INTO properties(image_url,ad_line,house_number,street_name,postcode,city,state,country,property_type,number_of_bedrooms,number_of_bathrooms,number_of_parkings,price,created_by,agent_contact)
VALUES ('https://i2.au.reastatic.net/800x600-format=webp/4af16d929e063b9297c542d1ff77522e5ee90708e1b866b113c0a0f32bafe835/image.jpg','JUST LISTED','2802/8','walker street',2134,'rhodes','NSW','Unit',3,2,1,'650p/w','1');