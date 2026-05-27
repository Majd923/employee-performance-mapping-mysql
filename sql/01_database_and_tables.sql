create database if not exists CS_Employee_DB;

CREATE TABLE IF NOT EXISTS project_table (
    project_id varchar(10) NOT NULL,
    project_name varchar(100),
    domain varchar(100),
    start_date varchar(100),
    closure_date varchar(100),
    dev_qtr varchar(100),
    project_status varchar(100),
    PRIMARY KEY (project_id)
);

create table if not exists emp_record_table (
emp_id varchar(100) not null,
first_name varchar(100),
last_name varchar(100),
gender varchar(100),
emp_role varchar(100),
dept varchar(100),
exp int,
country varchar(100),
continent varchar(100),
salary int,
emp_rating int,
manager_id varchar(100),
project_id varchar(100),
primary key (emp_id),
FOREIGN KEY (project_id)
REFERENCES project_table(project_id)
);

create table if not exists Data_science_team (
emp_id varchar(10) not null,
first_name varchar(100),
last_name varchar(100),
gender varchar(100),
emp_role varchar(100),
dept varchar(100),
exp int,
country varchar(100),
continent varchar(100)
);