create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

insert into employees(employee_name)
values ('Август'), ('Августин'), ('Авраам'), ('Аврора'), 
('Агата'), ('Агафон'), ('Агнесса'), ('Агния'), ('Ада'), ('Аделаида'), 
('Аделина'), ('Адонис'), ('Акайо'), ('Акулина'), ('Алан'), ('Алевтина'), 
('Александр'), ('Александра'), ('Алексей'), ('Алена'), ('Алина'), 
('Алиса'), ('Алла'), ('Алсу'), ('Альберт'), ('Альбина'), ('Альфия'), 
('Альфред'), ('Амалия'), ('Амелия'), ('Анастасий'), ('Анастасия'), 
('Анатолий'), ('Ангелина'), ('Андрей'), )'Анжела'(, ('Анжелика'), 
('Анисий'), ('Анна'), ('Антон'), ('Антонина'), ('Анфиса'), ('Аполлинарий'), 
('Аполлон'), ('Ариадна'), ('Арина'), ('Аристарх'), ('Аркадий'), ('Арсен'), 
('Арсений'), ('Артем'), ('Артемий'), ('Артур'), ('Архип'), ('Ася'),
('Беатрис'), ('Белла'), ('Бенедикт'), ('Берта'), ('Богдан'), ('Божена'), 
('Болеслав'), ('Борис'), ('Борислав'), ('Бронислав'), ('Бронислава'), 
('Булат'), ('Вадим'), ('Валентин'), ('Валентина'), ('Влад');

create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000), (1100), (1200),
	(1300), (1400), (1500),
	(1600), (1700), (1800),
	(1900), (2000), (2100),
	(2200), (2300), (2400),
	(2500);

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary
values (1,2,8),
(2,11,5),
(3,7,3),
(4,9,11),
(5,5,11),
(6,20,7),
(7,14,2),
(8,10,9),
(9,22,15),
(10,29,3);

create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles
rename role_title to role_name;

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

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

insert into roles_employee
values(1,2,17),
(2,40,7), (3,39,9), (4,38,3), (5,37,2),
(6,36,8), (7,35,14), (8,34,9), (9,33,1),
(10,32,4), (11,31,18), (12,30,7), (13,29,9),
(14,28,3), (15,27,2), (16,26,8), (17,25,1),
(18,24,12), (19,23,1), (20,22,4), (21,21,18),
(22,20,18), (23,19,7), (24,18,9), (25,17,3),
(26,16,2), (27,15,8), (28,14,1), (29,13,16),
(30,12,15), (31,11,17), (32,10,18), (33,9,7),
(34,8,9), (35,7,3), (36,6,2), (37,5,8),
(38,4,13), (39,3,9), (40,1,19);

