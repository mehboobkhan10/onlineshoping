CREATE TABLE category(
ID IDENTITY,
name VARCHAR(50),
description VARCHAR(255),
imge_url VARCHAR(50),
is_active BOOLEAN,
CONSTRAINT pk_category_id PRIMARY KEY(id)
);
INSERT INTO category (name, description, imge_url, is_active) VALUES('Mobile', 'This Is Description Mobile Category!', 'CAT_1.png',  true);
INSERT INTO category (name, description, imge_url, is_active) VALUES('Laptop', 'This Is Description Laptop Category!', 'CAT_2.png',  true);
INSERT INTO category (name, description, imge_url, is_active) VALUES('Television', 'This Is Description Television Category!', 'CAT_3.png',  true);


CREATE TABLE USER_DETAILS(
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(50),
	email VARCHAR(100),
	contact_number VARCHAR(15),
	CONSTRAINT pk_user_id PRIMARY KEY(ID),
	);
	
	INSERT INTO USER_DETAILS
	(first_name, last_name, role, enabled, password, email, contact_number)
	VALUES('Mehboob','Khan','ADMINE','true','admine','mehboobkhan10@gmail.com','9956102502');
	
	INSERT INTO USER_DETAILS
	(first_name, last_name, role, enabled, password, email, contact_number)
	VALUES('Maroof','Khan','SUPPLIER','true','admine','maroofkhan10@gmail.com','9792809202');
	
	INSERT INTO USER_DETAILS
	(first_name, last_name, role, enabled, password, email, contact_number)
	VALUES('Pankaj','Sing','SUPPLIER','true','admine','PS@gmail.com','2585614789');
	
	
	CREATE TABLE PRODUCTS(
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_user_id PRIMARY KEY(ID),
	CONSTRAINT fk_product_category_id FOREIGN KEY(category_id) REFERENCES category(id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY(supplier_id) REFERENCES USER_DETAILS(id),
	);
	
	INSERT INTO PRODUCTS
	(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
	VALUES('P222CODE','iPhone 5s','apple','This Is a Best Phone Available In Store', 18000, 3, true,1,2);
	
	INSERT INTO PRODUCTS
	(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
	VALUES('P223CODE','SAMSUNG GALAXY S6','SAMSUNG','This Is a Best Phone Available In Store', 38000, 3, true,3,1);
	
	INSERT INTO PRODUCTS
	(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
	VALUES('P224CODE','LAPTOP','HP','This Is a Best LAPTOP Available In Store', 80000, 2, true,2,3);
	
	INSERT INTO PRODUCTS
	(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
	VALUES('P225CODE','Macbook','apple','This Is a Best LAPTOP Available In Store', 40000, 1, true,4,5);
	
	INSERT INTO PRODUCTS
	(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
	VALUES('P226CODE','GOOGLE PIXEL','GOOGLE','This Is a Best ANDROID Phone Available In Store', 50000, 5, true,3,2);
	
	
	