create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('OOLo lolol')


select * from employees;

create table salary (
	id serial primary key,
	monthly_salary varchar(50) not null
)

select * from salary;

insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);



create table roles (
	id serial primary key,
	rol_name int unique not null
)

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

select * from employee_salary;

select * from roles

ALTER TABLE roles ALTER COLUMN rol_name type VARCHAR(30);

insert into roles (rol_name)
values ('Middle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),('Junior Javascript developer'),
('Middle Javascript developer'),('Senior Javascript developer'),('Junior Manual QA Engineer'),
('Middle Manual QA Engineer'),('Senior Manual QA Engineer'),('Project Manager'),
('Designer'),('HR'),('CEO'),('Sales manager'),
('Junior Automation QA Engineer'),('Middle Automation QA Engineer'),
('Senior Automation QA Engineer')


create table roles_employee (
	id serial primary key,
	employees_id int not null unique,
	role_id int not null,
	foreign key (employees_id)
		references employees(id),
	foreign key (role_id) 
		references roles(id)
)

select * from roles_employee;

