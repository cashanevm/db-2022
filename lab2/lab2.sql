-- Лабораторна робота № 2
-- З дисципліни Бази даних та інформаційні системи
-- Студента групи МІТ-31 Невмержицького Олександра

-- 1 Обрати всі значення елементи з таблиці cloth
SELECT * FROM cloth;
-- 2  Обрати всі значення стовпчиків full_name і color з таблиці cloth
SELECT full_name, color FROM cloth
-- 3 Обрати всі значення стовпчика full_name з таблиці cloth із заголовком "Full name"
SELECT full_name AS "Full name" FROM cloth
-- 4 Обрати всі значення стовпчиків full_name і color з таблиці cloth де created_at рівно '9999-01-01'
SELECT full_name, color FROM cloth WHERE created_at='9999-01-01';
-- 5 Обрати всі значення стовпчиків full_name і color або brand з таблиці cloth
SELECT full_name, color || brand FROM cloth;
-- 6 Обрати всі значення стовпчика id та значення суми full_name та color з таблиці cloth
SELECT id, concat(full_name, color) FROM cloth;
-- 7 Обрати максимальне значення price з таблиці cloth
SELECT max(price) FROM cloth;
-- 8 Обрати середнє значення price з таблиці cloth
SELECT avg(price) FROM cloth;
-- 9 Обрати мінімальне значення price з таблиці cloth
SELECT min(price) FROM cloth;
-- 10 Обрати кількість price з таблиці cloth
SELECT count(price) FROM cloth;
-- 11 Обрати всі значення стовпчика price які менші за 90000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000;
-- 12 Обрати всі значення стовпчика price які більше за 90000 з таблиці cloth
SELECT price FROM cloth WHERE price>90000;
-- 13 Обрати всі значення стовпчика price які менші за 90000 і більші за 80000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000 AND price>80000;
-- 14 Обрати всі значення стовпчика price які менші за 90000 або більші за 122000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000 OR price>122000;
-- 15 Обрати всі значення стовпчика price які менші за 90000 або більші за 100000 з таблиці cloth де created_at більше '2001-01-01'
SELECT price FROM cloth WHERE price<90000 AND salary>100000 OR created_at > '2001-01-01';
-- 16 Обрати всі значення стовпчика price які менші за 90000 і created_at менше '2001-01-01' або price більші за 100000 і created_at більше '2001-01-01' з таблиці cloth
SELECT price FROM cloth WHERE (price<90000 AND created_at<'2000-01-01') OR (price>100000 AND created_at > '2001-01-01');
-- 17 Обрати всі значення елементи з таблиці cloth де full_name не 'M'
SELECT * FROM cloth WHERE NOT full_name = 'M';
-- 18 Обрати всі значення елементи з таблиці cloth де created_at між '1930-01-01' і '1971-01-01'
SELECT * FROM cloth WHERE created_at BETWEEN '1930-01-01' AND '1971-01-01'
-- 19 Обрати всі місяць поля created_at кожного елемента з таблиці cloth
SELECT extract (MONTH FROM created_at) FROM cloth;
-- 20 Обрати 1,2,3 місяць поля created_at кожного елемента з таблиці cloth з заголовком "month"
SELECT extract (MONTH FROM created_at) AS "month" FROM cloth WHERE extract (MONTH FROM created_at) IN (1,2,3);
-- 21 Обрати всі значення елементи з таблиці cloth де full_name має другий сhar a
SELECT * FROM cloth WHERE full_name LIKE '_a%';
-- 22 Обрати всі значення елементи з таблиці cloth де full_name має перший сhar g
SELECT * FROM cloth WHERE full_name LIKE 'g%';
-- 23 Обрати created_at як text з таблиці cloth
SELECT created_at :: text FROM cloth;
-- 24 Обрати всі унікальні значення full_name з таблиці cloth
SELECT DISTINCT full_name FROM cloth;
-- 25 Обрати всі рядки з таблиці cloth сортовано по full_name
SELECT * FROM cloth ORDER BY full_name;
-- 26 Обрати всі рядки з таблиці cloth сортовано по color по DESC
SELECT * FROM cloth ORDER BY color DESC;
-- 27 Обрати всі рядки з таблиці cloth сортовано по price, size по DESC
SELECT * FROM cloth ORDER BY price,size DESC;
-- 28 Обрати всі значення елементи з таблиці cloth де full_name має другий сhar a
SELECT full_name, created_at, is_sold FROM cloth JOIN color c ON (e.color = c.id);
-- 29 Обрати всі рядки з таблиці cloth сортовано по full_name
SELECT full_name, created_at, is_sold FROM cloth e LEFT JOIN color c ON (e.color = c.id);
-- 30 Обрати 1,2,3 місяць поля created_at кожного елемента з таблиці cloth з заголовком "month"
SELECT full_name, created_at, is_sold FROM cloth e Right JOIN color c ON (e.color = c.id);
-- 31 Обрати всі значення елементи з таблиці cloth де full_name має перший сhar g
SELECT full_name, created_at, is_sold FROM cloth e FULL OUTER JOIN salaries c ON (e.color = c.id);
-- 32 Обрати created_at як text з таблиці cloth
SELECT full_name, created_at, is_sold FROM cloth e JOIN color c USING (color);
-- 33 Обрати всі значення стовпчика name з таблиці brand із заголовком "Name"
SELECT DISTINCT e.full_name, e.color, e2.name FROM cloth e JOIN color e2 ON (e.color = e2.id);
-- 34 Обрати всі значення елементи з таблиці cloth
SELECT * FROM brand;
-- 35 Обрати всі значення елементи з таблиці cloth
SELECT * FROM size;
-- 36 Обрати всі значення елементи з таблиці cloth
SELECT * FROM distributor;
-- 37 Обрати всі значення елементи з таблиці cloth
SELECT * FROM color;
-- 38  Обрати всі значення стовпчиків name і id з таблиці brand
SELECT name, id FROM brand
-- 39  Обрати всі значення стовпчиків name і size з таблиці size
SELECT name, size FROM size
-- 40  Обрати всі значення стовпчиків name і brand з таблиці distributor
SELECT name, brand FROM distributor
-- 41  Обрати всі значення стовпчиків red і green з таблиці color
SELECT red, green FROM cloth
-- 42 Обрати всі значення стовпчика name з таблиці brand із заголовком "Name"
SELECT name AS "Name" FROM brand
-- 43 Обрати всі значення стовпчика name з таблиці size із заголовком "Name"
SELECT name AS "Name" FROM size
-- 44 Обрати всі значення стовпчика brand з таблиці distributor із заголовком "Brand"
SELECT brand AS "Brand" FROM distributor
-- 45 Обрати всі значення стовпчика transparency з таблиці color із заголовком "Transparency"
SELECT transparency AS "Transparency" FROM color
-- 46 Обрати всі значення стовпчиків name або id з таблиці brand
SELECT name || id FROM brand;
-- 47 Обрати всі значення стовпчиків id і name або size з таблиці size
SELECT id, name || size FROM size;
-- 48 Обрати всі значення стовпчиків id і name або brand з таблиці distributor
SELECT id, name || brand FROM distributor;
-- 49 Обрати всі значення стовпчиків id і name або transparency з таблиці color
SELECT id, name || transparency FROM color;
-- 50 Обрати всі значення суми id та name з таблиці brand
SELECT concat(id, name) FROM brand;
-- 51 Обрати всі значення стовпчика id та значення суми name та brand з таблиці distributor
SELECT id, concat(name, brand) FROM distributor;
-- 52 Обрати всі значення стовпчика id та значення суми name та size з таблиці size
SELECT id, concat(name, size) FROM size;
-- 53 Обрати всі значення стовпчика id та значення суми name та transparency з таблиці color
SELECT id, concat(name, transparency) FROM color;
-- 54 Обрати максимальне значення id з таблиці brand
SELECT max(id) FROM brand;
-- 55 Обрати максимальне значення brand з таблиці distributor
SELECT max(brand) FROM distributor;
-- 56 Обрати максимальне значення size з таблиці size
SELECT max(size) FROM size;
-- 57 Обрати максимальне значення price з таблиці cloth
SELECT max(transparency) FROM color;
-- 58 Обрати середнє значення id з таблиці brand
SELECT avg(id) FROM brand;
-- 59 Обрати середнє значення brand з таблиці distributor
SELECT avg(brand) FROM distributor;
-- 60 Обрати середнє значення size з таблиці size
SELECT avg(size) FROM size;
-- 61 Обрати середнє значення transparency з таблиці color
SELECT avg(transparency) FROM color;
-- 62 Обрати мінімальне значення id з таблиці brand
SELECT min(id) FROM brand
-- 63 Обрати мінімальне значення size з таблиці size
SELECT min(size) FROM size
-- 64 Обрати мінімальне значення brand з таблиці distributor
SELECT min(brand) FROM distributor
-- 65 Обрати мінімальне значення transparency з таблиці color
SELECT min(transparency) FROM color
-- 66 Обрати кількість id з таблиці brand
SELECT count(id) FROM brand;
-- 67 Обрати кількість sizesize з таблиці size
SELECT count(size) FROM size;
-- 68 Обрати кількість brand з таблиці distributor
SELECT count(brand) FROM distributor;
-- 69 Обрати кількість transparency з таблиці color
SELECT count(transparency) FROM color;
-- 70 Обрати всі значення стовпчика id які менші за 90000 з таблиці brand
SELECT id FROM brand WHERE id<90000;
-- 71 Обрати всі значення стовпчика size які менші за 90000 з таблиці size
SELECT size FROM size WHERE size<90000;
-- 72 Обрати всі значення стовпчика brand які менші за 90000 з таблиці distributor
SELECT brand FROM distributor WHERE brand<90000;
-- 73 Обрати всі значення стовпчика transparency які менші за 90000 з таблиці color
SELECT transparency FROM color WHERE transparency<90000;
-- 74 Обрати всі значення стовпчика id які більше за 90000 з таблиці brand
SELECT id FROM brand WHERE id>90000;
-- 75 Обрати всі значення стовпчика size які більше за 90000 з таблиці size
SELECT size FROM size WHERE size>90000;
-- 76 Обрати всі значення стовпчика brand які більше за 90000 з таблиці distributor
SELECT brand FROM distributor WHERE brand>90000;
-- 77 Обрати всі значення стовпчика price які більше за 90000 з таблиці cloth
SELECT transparency FROM color WHERE transparency>90000;
-- 78 Обрати всі значення стовпчика id які менші за 90000 і більші за 80000 з таблиці brand
SELECT id FROM brand WHERE id<90000 AND id>80000;
-- 79 Обрати всі значення стовпчика size які менші за 90000 і більші за 80000 з таблиці size
SELECT size FROM size WHERE size<90000 AND size>80000;
-- 80 Обрати всі значення стовпчика brand які менші за 90000 і більші за 80000 з таблиці distributor
SELECT brand FROM distributor WHERE brand<90000 AND brand>80000;
-- 81 Обрати всі значення стовпчика transparency які менші за 90000 і більші за 80000 з таблиці color
SELECT transparency FROM color WHERE transparency<90000 AND transparency>80000;
-- 82 Обрати всі значення стовпчика id які менші за 90000 або більші за 122000 з таблиці brand
SELECT id FROM brand WHERE id<90000 OR id>122000;
-- 83 Обрати всі значення стовпчика size які менші за 90000 або більші за 122000 з таблиці size
SELECT size FROM size WHERE size<90000 OR size>122000;
-- 84 Обрати всі значення стовпчика brand які менші за 90000 або більші за 122000 з таблиці distributor
SELECT brand FROM distributor WHERE brand<90000 OR brand>122000;
-- 85 Обрати всі значення стовпчика price які менші за 90000 або більші за 122000 з таблиці cloth
SELECT transparency FROM color WHERE transparency<90000 OR transparency>122000;
-- 86 Обрати всі значення елементи з таблиці brand де name не 'M'
SELECT * FROM brand WHERE NOT name = 'M';
-- 87 Обрати всі значення елементи з таблиці size де name не 'M'
SELECT * FROM size WHERE NOT name = 'M';
-- 88 Обрати всі значення елементи з таблиці distributor де name не 'M'
SELECT * FROM distributor WHERE NOT name = 'M';
-- 89 Обрати всі значення елементи з таблиці color де name не 'M'
SELECT * FROM color WHERE NOT name = 'M';
-- 90 Обрати всі значення елементи з таблиці brand де name має другий сhar a
SELECT * FROM brand WHERE name LIKE '_a%';
-- 91 Обрати всі значення елементи з таблиці size де name має другий сhar a
SELECT * FROM size WHERE name LIKE '_a%';
-- 92 Обрати всі значення елементи з таблиці distributor де name має другий сhar a
SELECT * FROM distributor WHERE name LIKE '_a%';
-- 93 Обрати всі значення елементи з таблиці color де name має другий сhar a
SELECT * FROM color WHERE name LIKE '_a%';
-- 94 Обрати всі значення елементи з таблиці brand де name має перший сhar g
SELECT * FROM brand WHERE name LIKE 'g%';
-- 95 Обрати всі значення елементи з таблиці size де name має перший сhar g
SELECT * FROM size WHERE name LIKE 'g%';
-- 96 Обрати всі значення елементи з таблиці distributor де name має перший сhar g
SELECT * FROM distributor WHERE name LIKE 'g%';
-- 97 Обрати всі значення елементи з таблиці color де name має перший сhar g
SELECT * FROM color WHERE name LIKE 'g%';
-- 98 Обрати всі унікальні значення name з таблиці size
SELECT DISTINCT name FROM size;
-- 99 Обрати всі унікальні значення name з таблиці distributor
SELECT DISTINCT name FROM distributor;
-- 100 Обрати всі унікальні значення name з таблиці color
SELECT DISTINCT name FROM color

-- Висновки: В результаті виконання даної лабораторної роботи було створино 100 SQL запитів
