--3. Вычислить общую ЗП только Java разработчиков. 

SELECT  SUM(d.salary) AS total_cost
FROM developers d
INNER JOIN developer_skills ds ON d.developer_id=ds.developer_id
INNER JOIN skills s ON ds.skill_id=s.skill_id
WHERE s.branch = 'Java';