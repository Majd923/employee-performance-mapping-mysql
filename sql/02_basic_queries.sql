SELECT emp_id, first_name, last_name, gender, dept
FROM emp_record_table;

SELECT * FROM emp_record_table
WHERE emp_rating < 2;

SELECT * FROM emp_record_table
WHERE emp_rating > 4;

SELECT * FROM emp_record_table
WHERE emp_rating BETWEEN 2 AND 4;

SELECT CONCAT(first_name, ' ', last_name) AS Name, dept
FROM emp_record_table
WHERE dept = 'FINANCE';