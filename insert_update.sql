INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email,
	phone_number,
	billing_info
)VALUES(
	101,
	'Oliver',
	'Queen',
	'thehoodguy@gmail.com',
	'(256) 783-1211',
	'4242-4242-4242-4242 623 05/20'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email,
	phone_number,
	billing_info
)VALUES(
	102,
	'John',
	'Diggle',
	'greatsidekick@gmail.com',
	'(256) 783-1215',
	'4242-4242-4242-4242 623 05/20'
);

INSERT INTO sales_person(
	sales_id,
	first_name,
	last_name,
	email,
	phone_number,
	address
)VALUES(
	102,
	'Dexter',
	'Morgan',
	'bayharborbutcher@gmail.com',
	'(256) 783-1220',
	'345 Main St, Miami FL 56876'
);

INSERT INTO sales_person(
	sales_id,
	first_name,
	last_name,
	email,
	phone_number,
	address
)VALUES(
	101,
	'Debra',
	'Morgan',
	'bestcop@gmail.com',
	'(256) 783-1225',
	'570 Main St, Miami FL 56876'
);

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	phone_number,
	address
)VALUES(
	101,
	'Dean',
	'Winchester',
	'familybusiness@gmail.com',
	'(256) 783-1230',
	'891 Hidden Bunker, Lebanon KS 36877'
);

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	phone_number,
	address
)VALUES(
	102,
	'Sam',
	'Winchester',
	'familybusiness_sammie@gmail.com',
	'(256) 783-1235',
	'891 Hidden Bunker, Lebanon KS 36877'
);

INSERT INTO customer_car(
	repair_car_id,
	customer_id
) VALUES(
	501,
	101
);

INSERT INTO customer_car(
	repair_car_id,
	customer_id
) VALUES(
	502,
	102
);


INSERT INTO part_inventory(
	upc,
	quantity,
	part_cost
) VALUES(
	677876543,
	25,
	109.99
);

INSERT INTO part_inventory(
	upc,
	quantity,
	part_cost
) VALUES(
	799876587,
	5,
	56.99
);

UPDATE part_inventory
SET mechanic_id = 102
WHERE upc = 677876543
;

INSERT INTO service_part(
	part_id,
	part_description,
	part_price,
	upc
) VALUES(
	701,
	'DURALAST PREMIUM BATTERY',
	159.99,
	677876543
);

INSERT INTO service_part(
	part_id,
	part_description,
	part_price,
	upc
) VALUES(
	702,
	'Premium Struts',
	95.99,
	799876587
);


INSERT INTO service_ticket(
	ticket_id,
	customer_id,
	total_amount,
	part_id,
	repair_car_id
) VALUES(
	201,
	101,
	250,
	701,
	501
);

INSERT INTO service_ticket(
	ticket_id,
	customer_id,
	total_amount,
	part_id,
	repair_car_id
) VALUES(
	202,
	102,
	125,
	702,
	502
);

INSERT INTO car_inventory(
	car_inventory_id,
	vin,
	quantity,
	car_cost,
	inventory_description,
	sales_id
) VALUES(
	3001,
	'4GC546387TGFJ12736899',
	1,
	30000,
	'2022 Toyota 4Runner',
	101
);

INSERT INTO car_inventory(
	car_inventory_id,
	vin,
	quantity,
	car_cost,
	inventory_description,
	sales_id
) VALUES(
	3002,
	'4GC546387TGFJ12579117',
	1,
	40000,
	'2022 Toyota Tundra',
	102
);

INSERT INTO car(
	car_id,
	description,
	car_price,
	total_amount,
	car_inventory_id
) VALUES(
	8001,
	'2022 Toyota Tundra',
	50000,
	54999,
	3002
);

INSERT INTO car(
	car_id,
	description,
	car_price,
	total_amount,
	car_inventory_id
) VALUES(
	8002,
	'2022 Toyota 4Runner',
	40000,
	43999,
	3001
);


INSERT INTO invoice(
	invoice_id,
	total_amount,
	customer_id,
	car_id
) VALUES(
	1001,
	57000,
	101,
	8001
);

INSERT INTO invoice(
	invoice_id,
	total_amount,
	customer_id,
	car_id
) VALUES(
	1002,
	46500,
	102,
	8002
);
SELECT*
FROM service_ticket