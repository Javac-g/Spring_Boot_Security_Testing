CREATE TABLE roles(
	id serial PRIMARY KEY,
	name varchar(20)

);
CREATE TABLE customers(
	id serial PRIMARY KEY,
	first_name varchar(25) NOT NULL,
	last_name varchar(25) NOT NULL,
	login varchar(30) UNIQUE NOT NULL,
	password varchar(50) NOT NULL,
	email varchar(59) NOT NULL,
	 role_id integer NOT NULL, CONSTRAINT fk_constraint FOREIGN KEY(role_id) REFERENCES roles(id)
	
);
