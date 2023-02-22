CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR(15) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(20) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(60) NOT NULL,
	goal REAL,
	pledged REAL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(4) NOT NULL,
		FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(8) NOT NULL,
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;