/* 1) Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
*/
create table employees_64 (
id serial primary key,
employee_name varchar(50) not null
);

/* 2) Наполнить таблицу employee 70 строками.*/
insert into employees_64 (employee_name)
values ('Jacob'),
('Jacob'),
('Michael'),
('Joshua'),
('Matthew'),
('Ethan'),
('Andrew'),
('Daniel'),
('William'),
('Joseph'),
('Christopher'),
('Anthony'),
('Ryan'),
('Nicholas'),
('David'),
('Alexander'),
('Tyler'),
('James'),
('John'),
('Dylan'),
('Nathan'),
('Jonathan'),
('Brandon'),
('Samuel'),
('Christian'),
('Benjamin'),
('Zachary'),
('Logan'),
('Jose'),
('Noah'),
('Justin'),
('Elijah'),
('Gabriel'),
('Caleb'),
('Kevin'),
('Austin'),
('Emily'),
('Emma'),
('Madison'),
('Olivia'),
('Hannah'),
('Abigail'),
('Isabella'),
('Ashley'),
('Samantha'),
('Elizabeth'),
('Alexis'),
('Sarah'),
('Grace'),
('Alyssa'),
('Sophia'),
('Lauren'),
('Brianna'),
('Kayla'),
('Natalie'),
('Anna'),
('Jessica'),
('Taylor'),
('Chloe'),
('Hailey'),
('Ava'),
('Jasmine'),
('Sydney'),
('Victoria'),
('Ella'),
('Mia'),
('Morgan'),
('Julia'),
('Kaitlyn'),
('Kaitlyn');

-- 3)Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary_64 (
id serial primary key,
monthly_salary int not null
);

/*4) Наполнить таблицу salary 15 строками:*/
insert into salary_64 (monthly_salary)
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

/* 5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/
create table employee_salary_64(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

/* 6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

insert into employee_salary_64 (employee_id, salary_id)
values (3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(72, 17),
(73, 18),
(74, 19),
(75, 20),
(76, 21),
(77, 22),
(78, 23),
(79, 24),
(80, 25),
(81, 26),
(82, 27),
(83, 28),
(84, 29),
(85, 30),
(86, 31),
(87, 32),
(88, 33),
(89, 34),
(90, 35),
(91, 36),
(92, 37),
(93, 38),
(94, 39),
(95, 40),
(96, 41),
(97, 42),
(98, 43),
(99, 44),
(100, 45);

/* 7) Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
*/
create table roles_64(
id serial primary key,
role_name int not null unique);

/* 8) Поменять тип столба role_name с int на varchar(30)*/
alter table roles_64
alter column role_name TYPE varchar (30);

/* 9) Наполнить таблицу roles 20 строками:*/
insert into roles_64 (role_name)
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

/* 10) Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/
create table roles_employee_64(
id serial primary key,
employee_id int not null unique,
role_id int not null,
FOREIGN KEY (employee_id) REFERENCES employees_64 (Id),
foreign key (role_id) references roles_64(id));  

-- 11) Наполнить таблицу roles_employee 40 строками:
insert into roles_employee_64 (employee_id, role_id)
values (7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(36,1),
(37,2),
(38,3),
(39,4),
(40,5),
(41,6),
(42,7),
(43,8),
(44,9),
(45,10),
(46,11),
(47,12),
(48,13),
(49,14),
(50,15),
(51,16),
(52,17),
(53,18),
(54,19),
(55,20),
(56,19),
(57,18),
(58,17),
(59,16),
(60,15),
(61,14),
(62,13),
(63,12),
(64,11);