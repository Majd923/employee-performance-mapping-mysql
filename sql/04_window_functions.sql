SELECT 
emp_id,
CONCAT(first_name,' ', last_name) AS Name,
exp,
RANK() OVER (ORDER BY exp DESC) AS Emp_Ranking
FROM emp_record_table;