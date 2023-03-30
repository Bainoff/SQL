create table employees (
id serial primary key,
employee_name varchar(50) not null
);

create table salary(
	id serial primary key,
	monthly_salary int not null
);

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

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values (3, 7);

insert into employee_salary (employee_id, salary_id)
values
(1, 4), (5, 9), (40, 13), (23, 4), (11, 2), (52, 10), (15, 13), (26, 4), (16, 1),
(33, 7), (2, 4), (4, 7), (6, 9), (7, 2), (8, 13), (9, 1), (10, 4), (12, 4), (13, 7),
(14, 13), (17, 10), (18, 4), (19, 7), (20, 9), (21, 2), (22, 13), (24, 1), (25, 4), (27, 4),
(28, 7), (29, 13), (30, 10), (31, 4), (32, 7), (34, 9), (35, 2), (36, 13), (37, 1), (38, 4);

create table roles(
	id serial primary key,
	role_name varchar(30) unique not null
);

alter table roles alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
    ('Java developer junior'),
    ('Java developer middle'),
    ('Java developer senior'),
    ('Junior JavaScript developer'),
    ('Middle JavaScript developer'),
    ('Senior JavaScript developer'),
    ('Junior Manual QA engineer'),
    ('Middle Manual QA engineer'),
    ('Senior Manual QA engineer'),
    ('Project manager'),
    ('Designer'),
    ('HR'),
    ('CEO'),
    ('Sales manager');
    ('Junior Automation QA engineer'),
    ('Middle Automation QA engineer'),
    ('Senior Automation QA engineer')
   ;

  create table roles_employee (
  id serial primary key,
  employee_id int not null unique,
  role_id int not null,
  foreign key (employee_id) references employees(id),
  foreign key (role_id) references roles(id)
  );
  
 INSERT into roles_employee (employee_id, role_id)
 values
(3, 9), (5, 13), (6, 7), (7, 2), (10, 9), (11, 2), (20, 4), (21, 3), (22, 13), (23, 4),
(34, 4), (1, 9), (2, 13), (4, 7), (8, 2), (9, 9), (12, 2), (13, 4), (14, 3), (15, 13),
(16, 4), (17, 4), (18, 9), (19, 13), (24, 7), (25, 2), (26, 9), (27, 2), (28,4), (29, 3),
(30, 13), (31, 4), (32, 4), (33, 9), (35, 13), (36, 7), (37, 2), (38, 9), (39, 2), (40, 1);
