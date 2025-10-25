CREATE TABLE student_class (
    stu_id INT,
    class_name VARCHAR(10),
    year_name CHAR(4),
    PRIMARY KEY (stu_id, class_name,year_name),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (class_name) REFERENCES class(class_name),
    FOREIGN KEY(year_name) REFERENCES year(year_name)
);