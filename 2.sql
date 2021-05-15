--2. Найти самый дорогой проект (исходя из salary всех разработчиков). 

--Варіант з тільки одним результатом, виводить тільки 1 рядок з максимальною сумою
SELECT p.project_name , SUM (d.salary)  AS total_cost
FROM projects p
INNER JOIN project_developers pd ON p.project_id = pd.project_id
INNER JOIN developers d ON d.developer_id=pd.developer_id
GROUP BY p.project_name
ORDER BY total_cost DESC
LIMIT 1;

--Варіант, що може вивести декілька проектів, якщо сумма у них однакова
SELECT p.project_name, total_cost
FROM projects p
JOIN 
(	SELECT p.project_id, SUM (d.salary)  AS total_cost
	FROM projects p
	INNER JOIN project_developers pd ON p.project_id = pd.project_id
	INNER JOIN developers d ON d.developer_id=pd.developer_id
	GROUP BY p.project_id
)	AS calculated_cost
ON calculated_cost.project_id=p.project_id
WHERE total_cost =
	(SELECT MAX(calculated_cost.total_cost) AS max_cost
	FROM 
	(	SELECT p.project_id, SUM (d.salary)  AS total_cost
		FROM projects p
		INNER JOIN project_developers pd ON p.project_id = pd.project_id
		INNER JOIN developers d ON d.developer_id=pd.developer_id
		GROUP BY p.project_id
	) 	AS calculated_cost
);