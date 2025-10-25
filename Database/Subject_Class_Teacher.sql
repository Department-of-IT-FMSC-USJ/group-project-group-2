CREATE TABLE subject_class_teacher (
	teach_id INT,
    class_name VARCHAR(10),
    year_name CHAR(4), 
    role VARCHAR(40),
    PRIMARY KEY (teach_id, class_name,year_name),
    FOREIGN KEY (teach_id) REFERENCES teacher(teach_id),
    FOREIGN KEY (class_name) REFERENCES class(class_name),
    FOREIGN KEY(year_name) REFERENCES year (year_name)
);