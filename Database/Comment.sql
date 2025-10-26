CREATE TABLE comment (
    comm_id INT AUTO_INCREMENT PRIMARY KEY,
    stu_id INT NOT NULL,
    teach_id INT NOT NULL,
    comment VARCHAR(400) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (teach_id) REFERENCES teacher(teach_id)
        ON UPDATE CASCADE
);