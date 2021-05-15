
INSERT INTO custumers (first_name, last_name)
VALUES
('Patsy', 'Russell'),
('Velma', 'Manning'),
('Marty', 'Jackson'),
('Alton', 'Alvarado'),
('Andre', 'Alexander'),
('Audrey', 'Blair'),
('Cathy', 'Luna'),
('Fannie', 'Stone'),
('Christine', 'Barber'),
('Lori', 'Copeland');

INSERT INTO companies (company_name)
VALUES
('EPAM'),
('SoftServe'),
('Luxoft'),
('Ciklum'),
('NIX');

INSERT INTO custumer_companies (company_id, custumer_id)
SELECT company_id, custumer_id
FROM companies, custumers;

INSERT INTO projects (project_name, company_id)
VALUES
('Titan', 1),
('Project Hanks', 1),
('Kodiak', 1),
('Code Talkers', 2),
('Project Blue Book', 2),
('X Lab', 2),
('Project 404', 2),
('Manhattan Project', 2),
('Durango', 3),
('Apollo', 3),
('ProjectManager.com', 4),
('Bikers Portal',5),
('College Enquiry Chat Bot', 5),
('Improved Data Leakage Detection', 5),
('Matrimonial Portal Project', 5),
(' Image Mining Project', 5),
('MLM Project', 5);

INSERT INTO developers (first_name, last_name, sex)
VALUES
('Rudolph', 'Hicks', 'male'),
('Tricia', 'Thornton', 'female'),
('Dianna', 'Floyd', 'female'),
('Delbert', 'Brock', 'male'),
('Fredrick', 'Cross', 'male'),
('Ernest', 'Jensen', 'male'),
('Bruce', 'Ferguson', 'male'),
('Stella', 'Joseph', 'female'),
('Curtis', 'Bass', 'male'),
('Marie', 'Hale', 'female'),
('Stephen', 'Lambert', 'male'),
('Micheal', 'Waters', 'male'),
('Vanessa', 'Alvarado', 'female'),
('Miranda', 'Davidson', 'female'),
('Alexander', 'Crawford', 'male'),
('Jacob', 'Mcbride', 'male'),
('Cecil', 'Dixon', 'male'),
('Woodrow', 'Carroll', 'male'),
('Bobbie', 'Jacobs', 'female'),
('Gilberto', 'Lawson', 'male'),
('Loretta', 'Bowers', 'female'),
('Delores', 'Garner', 'female'),
('Kyle', 'Ford', 'female'),
('Felix', 'Knight', 'male'),
('Stacy', 'Ward', 'female'),
('Walter', 'Scott', 'male'),
('Gina', 'Haynes', 'female'),
('Candace', 'Spencer', 'male'),
('Julius', 'Pratt', 'male'),
('Kirk', 'Clayton', 'male'),
('Laura', 'Goodwin', 'female'),
('Chelsea', 'Simpson', 'female'),
('Dominic', 'Perez', 'male'),
('Miriam', 'Lynch', 'female'),
('Frank', 'Grant', 'male'),
('Dan', 'Tran', 'male'),
('Abel', 'Walton', 'male'),
('Damon', 'Wise', 'male'),
('Tabitha', 'Hanson', 'male'),
('Teri', 'Kelly', 'female'),
('Alice', 'Bailey', 'female'),
('Edith', 'Santiago', 'female'),
('Rochelle', 'Goodman', 'female'),
('Gladys', 'Nguyen', 'female'),
('Pedro', 'Allen', 'male'),
('Mercedes', 'Rhodes', 'female'),
('Wilson', 'Taylor', 'male'),
('Monique', 'Hayes', 'female'),
('Wallace', 'Hammond', 'male'),
('Everett', 'Cannon', 'male');

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 1 AND 20
WHERE pr.project_id in (1,3,10);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 21 AND 28
WHERE pr.project_id in (2,6,7,15);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 29 AND 32
WHERE pr.project_id in (4,5,14,17);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 33 AND 45
WHERE pr.project_id in (8,9,11,16);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 46 AND 50
WHERE pr.project_id in (12,13);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 1 AND 7
WHERE pr.project_id in (9);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 40 AND 48
WHERE pr.project_id in (2,3,4,5);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 5 AND 10
WHERE pr.project_id in (17);

INSERT INTO project_developers
SELECT pr.project_id, d.developer_id
FROM projects pr
LEFT JOIN developers d
ON d.developer_id BETWEEN 30 AND 35
WHERE pr.project_id in (2,3);

INSERT INTO skills (branch, skill_level)
VALUES
('Java', 'Junior'),
('Java', 'Middle'),
('Java', 'Senior'),
('C++', 'Junior'),
('C++', 'Middle'),
('C++', 'Senior'),
('C#', 'Junior'),
('C#', 'Middle'),
('C#', 'Senior'),
('JS', 'Junior'),
('JS', 'Middle'),
('JS', 'Senior');

INSERT INTO developer_skills
SELECT s.skill_id, d.developer_id
FROM skills s
LEFT JOIN developers d
ON d.developer_id BETWEEN 1 AND 7
WHERE s.skill_id in (1,5);

INSERT INTO developer_skills
SELECT s.skill_id, d.developer_id
FROM skills s
LEFT JOIN developers d
ON d.developer_id BETWEEN 8 AND 23
WHERE s.skill_id in (2,3,5);

INSERT INTO developer_skills
SELECT s.skill_id, d.developer_id
FROM skills s
LEFT JOIN developers d
ON d.developer_id BETWEEN 24 AND 30
WHERE s.skill_id in (3,4,7,12);

INSERT INTO developer_skills
SELECT s.skill_id, d.developer_id
FROM skills s
LEFT JOIN developers d
ON d.developer_id BETWEEN 31 AND 35
WHERE s.skill_id in (3,8,11);

INSERT INTO developer_skills
SELECT s.skill_id, d.developer_id
FROM skills s
LEFT JOIN developers d
ON d.developer_id BETWEEN 36 AND 50
WHERE s.skill_id in (6,9,10);
