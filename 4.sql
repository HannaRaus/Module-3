--4. Добавить поле (cost - стоимость) в таблицу Projects .

ALTER TABLE projects
ADD COLUMN cost int;

UPDATE projects proj SET cost = 
(	SELECT SUM (d.salary)  AS total_cost
	FROM projects p
	INNER JOIN project_developers pd ON p.project_id = pd.project_id
	INNER JOIN developers d ON d.developer_id=pd.developer_id
 	GROUP BY p.project_id
	HAVING p.project_id = proj.project_id
 );
