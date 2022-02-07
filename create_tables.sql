CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	phone_number VARCHAR(15),
	billing_info VARCHAR(150)
);

CREATE TABLE car_inventory(
	car_inventory_id SERIAL PRIMARY KEY,
	vin VARCHAR(50),
	quantity INTEGER,
	car_cost NUMERIC(10,2),
	inventory_description VARCHAR(150),
	sales_id INTEGER,
	FOREIGN KEY (sales_id) REFERENCES sales_person(sales_id)
);

CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	description VARCHAR(150),
	car_price NUMERIC(10,2),
	total_amount NUMERIC(10,2),
	car_inventory_id INTEGER,
	FOREIGN KEY (car_inventory_id) REFERENCES car_inventory(car_inventory_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	purchase_date DATE DEFAULT CURRENT_DATE,
	total_amount NUMERIC(10,2),
	customer_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE part_inventory(
	upc SERIAL PRIMARY KEY,
	quantity INTEGER,
	part_cost NUMERIC(10,2),
	inventory_description VARCHAR(150),
	mechanic_id INTEGER,
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE sales_person(
	sales_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	phone_number VARCHAR(15),
	address VARCHAR(150)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	phone_number VARCHAR(15),
	address VARCHAR(150)
);

CREATE TABLE customer_car(
	repair_car_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_part(
	part_id SERIAL PRIMARY KEY,
	part_description VARCHAR(150),
	part_price NUMERIC(8,2),
	upc integer,
	FOREIGN KEY (upc) REFERENCES part_inventory(upc)
);

CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	repair_date DATE DEFAULT CURRENT_DATE,
	total_amount NUMERIC(10,2),
	part_id INTEGER,
	repair_car_id INTEGER,
	FOREIGN KEY (part_id) REFERENCES service_part(part_id),
	FOREIGN KEY (repair_car_id) REFERENCES customer_car(repair_car_id)
);

