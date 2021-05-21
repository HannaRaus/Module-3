--5. Найти самый дешевый проект (исходя из cost всех проектов).

SELECT *
FROM projects p
WHERE cost = (SELECT MIN(cost)	FROM projects)
LIMIT 1;
