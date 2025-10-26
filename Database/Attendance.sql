CREATE TABLE attendance(
	stu_id INT,
    date DATE,
    status ENUM('Present','Absent'),
    FOREIGN KEY(stu_id) REFERENCES student(stu_id),
    FOREIGN KEY(date) REFERENCES date(date)
    );