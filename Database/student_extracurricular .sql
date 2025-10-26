CREATE TABLE student_extracurricular (
    stu_id INT,
    activity_id INT,
    duration varchar(50),
    status varchar(20),
    value INT,
    PRIMARY KEY (stu_id, activity_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (activity_id) REFERENCES extracurricular(activity_id)
);
