-- Employees who have reporters under them
SELECT
    m.emp_id,
    CONCAT(m.first_name, ' ', m.last_name) AS name,
    COUNT(e.emp_id) AS num_reporters
FROM emp_record_table m
JOIN emp_record_table e
    ON m.emp_id = e.manager_id
GROUP BY m.emp_id, m.first_name, m.last_name;


-- Maximum employee rating within each department
SELECT
    e2.emp_id,
    CONCAT(e2.first_name,' ', e2.last_name) AS Name,
    e2.emp_role,
    e2.dept,
    e2.emp_rating,
    (
        SELECT MAX(e1.emp_rating)
        FROM emp_record_table e1
        WHERE e2.dept = e1.dept
    ) AS max_dept_rating
FROM emp_record_table e2;


-- Minimum and maximum salary by role
SELECT
    emp_role,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary
FROM emp_record_table
GROUP BY emp_role;


-- Employees with more than 10 years of experience
SELECT
    emp_id,
    CONCAT(first_name, ' ', last_name) AS name,
    dept,
    exp
FROM emp_record_table
WHERE emp_id IN (
    SELECT emp_id
    FROM emp_record_table
    WHERE exp > 10
);


-- Average salary distribution by continent and country
SELECT
    continent,
    country,
    COUNT(emp_id) AS num_employees,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM emp_record_table
GROUP BY continent, country
ORDER BY continent, country;