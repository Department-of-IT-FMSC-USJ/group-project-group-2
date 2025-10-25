CREATE TABLE parent (
    parent_id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(150),
    relationship VARCHAR(150),
    address VARCHAR(150),
    mobile VARCHAR(10) CHECK (mobile LIKE '0%' AND CHAR_LENGTH(mobile) = 10),
    user_name VARCHAR(150),
    password VARCHAR(12),
    email VARCHAR(200) CHECK (email LIKE '%@%')
);