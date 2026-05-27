CREATE INDEX idx_emp_first_name
ON emp_record_table (first_name(20));

SELECT *
FROM emp_record_table
WHERE first_name = 'Eric';