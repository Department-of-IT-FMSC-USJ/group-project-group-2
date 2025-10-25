CREATE TABLE mark(
stu_id INT NOT NULL,
sub_id INT NOT NULL,
term_id INT NOT NULL,
marks INT CHECK (marks BETWEEN 0 AND 100),
PRIMARY KEY (stu_id,sub_id,term_id),
FOREIGN KEY (sub_id) REFERENCES subject (sub_id),
FOREIGN KEY (stu_id) REFERENCES student (stu_id),
FOREIGN KEY (term_id) REFERENCES term (term_id)
);