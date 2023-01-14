--insert data into tables
insert into clients(
	customer_id,
	first_name,
	last_name,
	contact_into,
	billing_info
)VALUES(
	1,
	'Doe',
	'Jane',
	'(512) 784-2119',
	'3434-3312-5541-4094 613 03/14'
);

insert into clients(
	customer_id,
	first_name,
	last_name,
	contact_into,
	billing_info
)VALUES(
	2,
	'Smith',
	'Johny',
	'(512) 399-2822',
	'3124-2442-3241-4324 393 02/25'
);

select * from clients;


insert into salespeople(
	sales_id,
	first_name,
	last_name
)VALUES(
	001,
	'Greg',
	'Cameron'
);

insert into salespeople(
	sales_id,
	first_name,
	last_name
)VALUES(
	002,
	'Char',
	'Tate'
);

insert into cars(
	car_id, 
	make, 
	model,
	_year,
	color
)VALUES(
	200,
	'Ford',
	'Raptor',
	'2021',
	'red'
);
	
insert into cars(
	car_id, 
	make, 
	model,
	_year,
	color
)VALUES(
	201,
	'VW',
	'Beetle',
	'2020',
	'blue'
);

insert into mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1001,
	'Jerry',
	'Cook'
);

insert into mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1002,
	'Randy',
	'Vansas'
);

insert into service(
	service_ticket_id,
	car_id,
	customer_id,
	mechanic_id
)VALUES(
	242,
	201,
	2,
	1001
);

insert into service(
	service_ticket_id,
	car_id,
	customer_id,
	mechanic_id
)VALUES(
	241,
	200,
	1,
	1002
);

insert into invoice(
	invoice_number,
	car_id,
	customer_id,
	sales_id,
	service_ticket_id
)VALUES(
	77,
	200,
	1,
	002,
	241
);

insert into invoice(
	invoice_number,
	car_id,
	customer_id,
	sales_id,
	service_ticket_id
)VALUES(
	88,
	201,
	2,
	001,
	242
);

insert into parts(
	part_number,
	price,
	mechanic_id
)VALUES(
	2000,
	$2000,
	1002
);


CREATE OR REPLACE FUNCTION add_part (_part_number INTEGER, _price numeric, _mechanic_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO parts(part_number,price,mechanic_id)
	VALUES(_part_number,_price,_mechanic_id);
END;
$MAIN$
LANGUAGE plpgsql;

select add_part(2001,2000,1001);
select add_part(2003,2000,1001);

select * from parts;