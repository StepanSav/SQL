SQL HomeWork 3. Joins

Подключится к 
Host: 159.69.151.133
Port: 5557
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass:

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


-- 1.	Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary from employees as e
join salary as s
on e.id = s.id ; 

-- 2.	Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary from employees as e
join salary as s
on e.id = s.id 
where monthly_salary<2000;

-- 3.	Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary as s
left join employee_salary as e
on s.id = e.id 
where employee_id is null;

-- 4.	Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary as s
left join employee_salary as e
on s.id = e.id 
where employee_id is null and monthly_salary < 2000;

-- 5.	Найти всех работников кому не начислена ЗП.
select e.employee_name from employees as e
left join employee_salary as es
on e.id = es.id 
where salary_id is null;

-- 6.	Вывести всех работников с названиями их должности.
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id ;

-- 7.	Вывести имена и должность только Java разработчиков.
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id 
where role_name like '%Java developer';

-- 8.	Вывести имена и должность только Python разработчиков.
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id 
where role_name like '%Python developer';

-- 9.	Вывести имена и должность всех QA инженеров.
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id 
where role_name like '%QA engineer';

-- 10.	Вывести имена и должность ручных QA инженеров.
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id 
where role_name like '%Manual QA engineer';

-- 11.	Вывести имена и должность автоматизаторов QA
select e.employee_name,r.role_name from employees as e
join roles as r
on e.id = r.id 
where role_name like '%Automation  QA engineer';

-- 12.	Вывести имена и зарплаты Junior специалистов
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like '%Junior%'; (Чтоб понять что Junior добавить r.role_name )

-- 13.	Вывести имена и зарплаты Middle специалистов
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like '%Middle%';

-- 14.	Вывести имена и зарплаты Senior специалистов
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like '%Senior%';

-- 15.	Вывести зарплаты Java разработчиков
select s.monthly_salary,r.role_name from salary as s
join roles as r
on s.id =r.id 
where role_name like '%Java developer';




-- 16.	Вывести зарплаты Python разработчиков
select s.monthly_salary,r.role_name from salary as s
join roles as r
on s.id =r.id 
where role_name like '%Python developer';

-- 17.	Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like '%Junior Python developer%';

-- 18.	Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like 'Middle JavaScript developer'; (Чтоб понять что Middle JavaScript developer  r.role_name )

-- 19.	Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s 
on e.id = s.id 
where role_name like 'Senior Java developer';

-- 20.	Вывести зарплаты Junior QA инженеров
select s.monthly_salary,r.role_name from salary as s
join roles as r
on s.id =r.id 
where role_name like 'Junior%QA engineer';

-- 21.	Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like 'Junior%';

-- 22.	Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%JavaScript developer';

-- 23.	Вывести минимальную ЗП QA инженеров
select MIN(s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%QA engineer';



-- 24.	Вывести максимальную ЗП QA инженеров
select max (s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%QA engineer';

-- 25.	Вывести количество QA инженеров
select COUNT (s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%QA engineer';

-- 26.	Вывести количество Middle специалистов.
select COUNT (s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like 'Middle%';

-- 27.	Вывести количество разработчиков
select COUNT (s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%developer';

-- 28.	Вывести фонд (сумму) зарплаты разработчиков.
select SUM (s.monthly_salary)from salary as s
join roles as r
on s.id = r.id 
where role_name like '%developer';

-- 29.	Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name,r.role_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s
on e.id =s.id 
ORDER BY monthly_salary desc;

-- 30.	Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name,r.role_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s
on e.id =s.id
where monthly_salary between 1700 and 2300
ORDER BY monthly_salary desc;

-- 31.	Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name,r.role_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s
on e.id =s.id
where monthly_salary > 2300
ORDER BY monthly_salary desc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name,r.role_name,s.monthly_salary from employees as e
join roles as r
on e.id = r.id 
join salary as s
on e.id =s.id
where monthly_salary in (1100, 1500, 2000)
ORDER BY monthly_salary desc;

