CREATE TABLE IF NOT EXISTS cc_types (
	cc_id int(10) NOT NULL AUTO_INCREMENT,
    cc_type varchar(255) NOT NULL,
    PRIMARY KEY (cc_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 

INSERT INTO creditcard_types VALUES ('1', 'Masetercard'), ('2', 'VISA'), ('3', 'American Express'), ('4', 'Discover');


CREATE TABLE IF NOT EXISTS cc_users (
	credit_id int(10) NOT NULL AUTO_INCREMENT,
	user_id int(10) NOT NULL,
	cc_id int(10) NOT NULL,
	card_number int(20) NOT NULL,
	expiration varchar(255) NOT NULL,
	code int(10) NOT NULL,
	PRIMARY KEY (credit_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (cc_id) REFERENCES cc_types(cc_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 