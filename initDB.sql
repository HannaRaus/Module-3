CREATE TABLE custumers
(custumer_id SERIAL PRIMARY KEY,
 first_name VARCHAR(100) NOT NULL,
 last_name VARCHAR(100) NOT NULL);

CREATE TABLE companies
(company_id SERIAL PRIMARY KEY,
company_name VARCHAR(100) NOT NULL);

CREATE TABLE custumer_companies
(custumer_id int NOT NULL,
company_id int NOT NULL,
FOREIGN KEY (custumer_id) REFERENCES custumers(custumer_id),
FOREIGN KEY (company_id) REFERENCES companies(company_id),
UNIQUE (custumer_id, company_id));

CREATE TABLE projects 
(project_id SERIAL PRIMARY KEY,
project_name VARCHAR(100)) NOT NULL,
company_id int NOT NULL,
FOREIGN KEY (company_id) REFERENCES companies(company_id);


1CREATE TYPE sex AS ENUM ('male', 'female');
CREATE TABLE developers 
(developer_id SERIAL PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
sex sex);

CREATE TABLE project_developers
(project_id int NOT NULL,
developer_id int NOT NULL,
FOREIGN KEY (project_id) REFERENCES projects(project_id),
FOREIGN KEY (developer_id) REFERENCES developers(developer_id),
UNIQUE (project_id, developer_id));

CREATE TYPE level AS ENUM ('Junior', 'Middle', 'Senior');
CREATE TABLE skills
(skill_id SERIAL PRIMARY KEY,
branch VARCHAR(100) NOT NULL,
skill_level level);

CREATE TABLE developer_skills
(skill_id int NOT NULL,
developer_id int NOT NULL,
FOREIGN KEY (skill_id) REFERENCES skills(skill_id),
FOREIGN KEY (developer_id) REFERENCES developers(developer_id),
UNIQUE (skill_id, developer_id));

















