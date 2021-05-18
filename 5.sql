--5. Найти самый дешевый проект (исходя из cost всех проектов).

SELECT *
FROM projects p
GROUP BY p.project_id
HAVING cost = (SELECT MIN(cost)	FROM projects)
LIMIT 1;
