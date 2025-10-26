CREATE TABLE date(
	date DATE PRIMARY KEY,
    status ENUM('Yes','No'),
	term_id INT,
	FOREIGN KEY (term_id) REFERENCES term(term_id)
    );  