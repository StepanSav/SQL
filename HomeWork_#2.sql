SQL_DDL
Первая часть.

Таблица employees

-- 1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
	);

-- 2)	Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Anna'),
('Sergey'),
('Olga'),
('Dmitry'),
('Ekaterina'),
('Igor'),
('Natalia'),
('Alexey'),
('Tatiana'),
('Vladimir'),
('Svetlana'),
('Konstantin'),
('Daria'),
('Nikolai'),
('Yulia'),
('Artyom'),
('Maria'),
('Alex'),
('Ksenia'),
('Pavel'),
('Irina'),
('Oleg'),
('Anastasia'),
('Boris'),
('Dmytro'),
('Elena'),
('Roman'),
('Victoria'),
('Andrey'),
('Lyudmila'),
('Denis'),
('Alina'),
('Kirill'),
('Valentina'),
('Mikhail'),
('Polina'),
('Anton'),
('Tatyana'),
('Leonid'),
('Yevgeny'),
('Nadezhda'),
('Dmitriy');

Таблица salary

-- 3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
)

-- 4)	Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

insert into salary(monthly_salary)
values(1000),
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


Таблица employee_salary

-- 5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null,
	foreign key(employee_id)
		references employees (id),
	foreign key(salary_id)
		references salary(id)
	);


-- 6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

id	employee_id	salary_id
1	3	7
2	1	4
3	5	9
4	40	13
5	23	4
6	11	2
7	52	10
8	15	13
9	26	4
10	16	1
11	33	7
...	...	...

insert into employee_salary(employee_id, salary_id)
values (3, 7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(22,15),
(24,14),
(48,1),
(69,12),
(47,12),
(19,6),
(68,9),
(34,1),
(52,14),
(8,7),
(29,2),
(60,11),
(4,6),
(39,10),
(21,4),
(66,15),
(10,8),
(44,1),
(37,2);

Таблица roles

-- 7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
	);

-- 8)	Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

-- 9)	Наполнить таблицу roles 20 строками:

id	role_name
1	Junior Python developer
2	Middle Python developer
3	Senior Python developer
4	Junior Java developer
5	Middle Java developer
6	Senior Java developer
7	Junior JavaScript developer
8	Middle JavaScript developer
9	Senior JavaScript developer
10	Junior Manual QA engineer
11	Middle Manual QA engineer
12	Senior Manual QA engineer
13	Project Manager
14	Designer
15	HR
16	CEO
17	Sales manager
18	Junior Automation QA engineer
19	Middle Automation QA engineer
20	Senior Automation QA engineer

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


Таблица roles_employee

-- 10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null,
	role_id int not null,
	foreign key(employee_id)
		references employees (id), 
	foreign key(role_id)
		references roles (id) 
	);

-- 11)	Наполнить таблицу roles_employee 40 строками:

id	employee_id	role_id
1	7	2
2	20	4
3	3	9
4	5	13
5	23	4
6	11	2
7	10	9
8	22	13
9	21	3
10	34	4
11	6	7
...	...	...

insert into roles_employee(employee_id, role_id)
values(23, 5),
(47, 12),
(15, 3),
(68, 9),
(34, 1),
(52, 14),
(8, 7),
(29, 2),
(60, 11),
(4, 6),
(39, 10),
(21, 4),
(66, 15),
(10, 8),
(5, 13),
(37, 2),
(44, 1),
(19, 6),
(32, 3),
(70, 12),
(25, 9),
(11, 10),
(53, 7),
(41, 14),
(14, 5),
(36, 8),
(30, 11),
(58, 4),
(2, 13),
(49, 15);

