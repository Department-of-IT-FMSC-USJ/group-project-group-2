CREATE TABLE teacher(
    teach_id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(50),
    user_name VARCHAR(20),
    password VARCHAR(255),
    gender ENUM('M','F'),
    email VARCHAR(150) UNIQUE CHECK (email LIKE '%@%.%'),
    mobile VARCHAR(20),
    qualifications VARCHAR(200),
    sub_id INT,
    hire_date DATE,
    FOREIGN KEY(sub_id) REFERENCES subject(sub_id)
);
