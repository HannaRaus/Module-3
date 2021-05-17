--1. Добавить разработчикам поле (salary - зарплата). 

ALTER TABLE developers
ADD COLUMN salary int;

UPDATE developers
SET salary = 1000
WHERE last_name LIKE '%on';

UPDATE developers
SET salary = 3000
WHERE sex='female';

UPDATE developers
SET salary = 2500
WHERE sex<>'female' AND first_name LIKE 'W%';

UPDATE developers
SET salary = 500
WHERE developer_id BETWEEN 4 AND 6;

UPDATE developers
SET salary = 5000
WHERE salary IS NULL;
