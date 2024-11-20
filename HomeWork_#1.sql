SQL_HW_1
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

.sql файл выгружайте на гит и скидывайте ссылки на проверку.

-- 1.	Вывести все поля и все строки.
SELECT * FROM Customers;

-- 2.	Вывести всех студентов в таблице
SELECT student FROM Customer;

-- 3.	Вывести только Id пользователей
SELECT id FROM Customer;

-- 4.	Вывести только имя пользователей
SELECT name FROM Customer;

-- 5.	Вывести только email пользователей
SELECT email FROM Customer;

-- 6.	Вывести имя и email пользователей
SELECT name, email FROM Customer;

-- 7.	Вывести id, имя, email и дату создания пользователей
SELECT id, name, email , date FROM Customer;

-- 8.	Вывести пользователей где password 12333
SELECT name FROM Customer
WHERE password = 12333;

-- 9.	Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT name FROM Customer
WHERE date =  2021-03-26 00:00:00;

-- 10.	Вывести пользователей где в имени есть слово Анна
SELECT * FROM Customer
WHERE name = ’Анна’;

-- 11.	Вывести пользователей где в имени в конце есть 8
SELECT * FROM Customer
WHERE name like ‘%8’;

-- 12.	Вывести пользователей где в имени в есть буква а
SELECT * FROM Customer
WHERE name luck ‘%а%’;

-- 13.	Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * FROM Customer
WHERE date = 2021-07-12 00:00:00;

-- 14.	Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * FROM Customer
WHERE date = 2021-07-12 00:00:00 and password = ‘1m313’;

-- 15.	Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
SELECT * FROM Customer
WHERE date = 2021-07-12 00:00:00 and name = ‘Andrey’;

-- 16.	Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT name FROM Customer
WHERE date = 2021-07-12 00:00:00 and name like ‘%8%’;

-- 17.	Вывести пользователя у которых id равен 110
SELECT name FROM Customer
WHERE id = 110;

-- 18.	Вывести пользователя у которых id равен 153
SELECT name FROM Customer
WHERE id = 153;

-- 19.	Вывести пользователя у которых id больше 140
SELECT name FROM Customer
WHERE id > 140;

-- 20.	Вывести пользователя у которых id меньше 130
SELECT name FROM Customer
WHERE id < 140;

-- 21.	Вывести пользователя у которых id меньше 127 или больше 188
SELECT name FROM Customer
WHERE id < 127 OR id >180;

-- 22.	Вывести пользователя у которых id меньше либо равно 137
SELECT name FROM Customer
WHERE id <= 137;

-- 23.	Вывести пользователя у которых id больше либо равно 137
SELECT name FROM Customer
WHERE id >= 137;

-- 24.	Вывести пользователя у которых id больше 180 но меньше 190
SELECT name FROM Customer
WHERE id > 180 AND id < 190;

-- 25.	Вывести пользователя у которых id между 180 и 190
SELECT name FROM Customer
WHERE id BETWEEN 180 AND 190;

-- 26.	Вывести пользователей где password равен 12333, 1m313, 123313
SELECT name FROM Customer
WHERE password IN (‘12333’, ‘1m313’, ‘123313’);

-- 27.	Вывести пользователей где created равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT name FROM Customer
WHERE date IN (‘2020-10-03 00:00:00’, ‘2021-05-19 00:00:00’, ‘2021-03-26 00:00:00’);

-- 28.	Вывести минимальный id 
SELECT MIN(id) FROM Customer;

-- 29.	Вывести максимальный.
SELECT MAX (id) FROM Customer;

-- 30.	Вывести количество пользователей
SELECT COUNT(id) FROM Customer;

-- 31.	Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
SELECT id, name, date Customer
ORDER BY date;

-- 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
SELECT id, name, date Customer
ORDER BY date DESC;

