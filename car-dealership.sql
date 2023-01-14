--create tables
create table clients(
	customer_id SERIAL primary key,
	first_name VARCHAR(120),
	last_name VARCHAR(120),
	contact_into VARCHAR(150),
	billing_info VARCHAR(150) 
);

create table salespeople(
	sales_id SERIAL primary key,
	first_name VARCHAR(120), 
	last_name VARCHAR(120)
);

create table cars(
	car_id SERIAL primary key,
	make VARCHAR(50), 
	model VARCHAR(50),
	_year numeric,
	color VARCHAR(50)
);

create table mechanics(
	mechanic_id SERIAL primary key, 
	first_name VARCHAR(120),
	last_name VARCHAR(120)
);

create table service(
	service_ticket_id SERIAL primary key, 
	car_id INTEGER, 
	customer_id INTEGER,
	mechanic_id INTEGER
);

create table invoice(
	invoice_number SERIAL primary key, 
	car_id INTEGER, 
	customer_id INTEGER, 
	sales_id INTEGER, 
	service_ticket_id INTEGER
);

create table parts(
	part_number SERIAL primary key, 
	price numeric, 
	mechanic_id INTEGER
);

