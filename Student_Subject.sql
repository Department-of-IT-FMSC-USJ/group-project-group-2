CREATE TABLE student_subject(
stu_id INT NOT NULL,
sub_id INT NOT NULL,
year_name CHAR(4) NOT NULL,
status ENUM('passed','following'),
PRIMARY KEY (stu_id,sub_id,year_name),
FOREIGN KEY (stu_id) REFERENCES student (stu_id),
FOREIGN KEY (sub_id) REFERENCES subject (sub_id),
FOREIGN KEY (year_name) REFERENCES year (year_name)
);