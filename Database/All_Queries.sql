CREATE DATABASE Edulink;
USE Edulink;
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
CREATE TABLE student(
	stu_id INT AUTO_INCREMENT PRIMARY KEY,
    initials VARCHAR(10),
    f_name VARCHAR(20),
    l_name VARCHAR(20),
    dob DATE,
    gender ENUM('M','F'),
    address VARCHAR(100),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES parent(parent_id)
    );
CREATE TABLE subject(
sub_id INT NOT NULL PRIMARY KEY,
name VARCHAR(100));

CREATE TABLE teacher(
teach_id INT NOT NULL PRIMARY KEY,
full_name VARCHAR(50),
user_name VARCHAR(20),
password VARCHAR(10),
gender ENUM('M','F'),
email VARCHAR(150) UNIQUE,
mobile VARCHAR(20),
qualifications VARCHAR (200),
sub_id INT,
hire_date DATE, 
FOREIGN KEY(sub_id) REFERENCES subject(sub_id));

CREATE TABLE class (
class_name VARCHAR(10) NOT NULL PRIMARY KEY,
room_no int);

CREATE TABLE year (
    year_name CHAR(4) NOT NULL PRIMARY KEY  
);

CREATE TABLE term (
    term_id INT AUTO_INCREMENT  PRIMARY KEY,
    year_name CHAR(4) NOT NULL,
    term_name ENUM('First', 'Second', 'Third'),       
    start_date DATE ,
    end_date DATE ,
    FOREIGN KEY (year_name) REFERENCES year(year_name)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
CREATE TABLE date(
	date DATE PRIMARY KEY,
    status ENUM('Yes','No'),
	term_id INT,
	FOREIGN KEY (term_id) REFERENCES term(term_id)
    );  
    
CREATE TABLE attendance(
	stu_id INT,
    date DATE,
    status ENUM('Present','Absent'),
    FOREIGN KEY(stu_id) REFERENCES student(stu_id),
    FOREIGN KEY(date) REFERENCES date(date)
    );
CREATE TABLE extracurricular (
    activity_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
    );
CREATE TABLE fee(
	fee_id CHAR(4) PRIMARY KEY,
    fee_name VARCHAR(20),
    amount DECIMAL(7,2)
    );
CREATE TABLE fee_payment(
    stu_id INT,
    fee_id CHAR(4),
    fee_status ENUM('Fully Paid', 'Part Paid', 'Unpaid'),
    amount DECIMAL(7,2),
    month VARCHAR(15),
    PRIMARY KEY(stu_id,fee_id),
    FOREIGN KEY (fee_id) REFERENCES fee(fee_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
    );
    
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
CREATE TABLE student_class (
    stu_id INT,
    class_name VARCHAR(10),
    year_name CHAR(4),
    PRIMARY KEY (stu_id, class_name,year_name),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (class_name) REFERENCES class(class_name),
    FOREIGN KEY(year_name) REFERENCES year(year_name)
);
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
CREATE TABLE admin (
    user_name varchar(50) primary key,
    password varchar(25) NOT NULL
);
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
CREATE TABLE student_extracurricular (
    stu_id INT,
    activity_id INT,
    duration VARCHAR(50),
    status VARCHAR(20),
    value INT,
    PRIMARY KEY (stu_id, activity_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (activity_id) REFERENCES extracurricular(activity_id)
);
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