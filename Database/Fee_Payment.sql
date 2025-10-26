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
  