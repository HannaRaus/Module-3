--6. Вычислить среднюю ЗП программистов в самом дешевом проекте.

SELECT p.project_name, ROUND(AVG(d.salary)) AS Average_Salary
FROM projects p, project_developers pd, developers d
WHERE p.project_id=pd.project_id AND pd.developer_id=d.developer_id AND p.project_id IN
(	SELECT p.project_id
	FROM projects p
	WHERE cost = (SELECT MIN(cost)	FROM projects)
	--LIMIT 1 
 )
GROUP BY p.project_id;
