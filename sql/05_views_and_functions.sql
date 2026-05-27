-- Create a view for employees with salary greater than 6000
CREATE VIEW HighSalary_Emp_ByCountry AS
SELECT
    emp_id,
    CONCAT(first_name,' ', last_name) AS Name,
    dept,
    salary,
    country
FROM emp_record_table
WHERE salary > 6000;


-- Stored function to validate employee roles based on experience
DELIMITER $$

CREATE FUNCTION get_standard_role(exp_years INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE std_role VARCHAR(100);

    IF exp_years <= 2 THEN
        SET std_role = 'JUNIOR DATA SCIENTIST';

    ELSEIF exp_years <= 5 THEN
        SET std_role = 'ASSOCIATE DATA SCIENTIST';

    ELSEIF exp_years <= 10 THEN
        SET std_role = 'SENIOR DATA SCIENTIST';

    ELSEIF exp_years <= 12 THEN
        SET std_role = 'LEAD DATA SCIENTIST';

    ELSEIF exp_years <= 16 THEN
        SET std_role = 'MANAGER';

    ELSE
        SET std_role = 'OUT OF STANDARD';
    END IF;

    RETURN std_role;
END$$

DELIMITER ;


-- Validate employee roles against organizational standards
SELECT
    emp_id,
    CONCAT(first_name, ' ', last_name) AS name,
    exp,
    emp_role AS assigned_role,
    get_standard_role(exp) AS standard_role,

    CASE
        WHEN emp_role = get_standard_role(exp)
        THEN 'MATCH'
        ELSE 'MISMATCH'
    END AS role_status

FROM emp_record_table

WHERE emp_role LIKE '%DATA SCIENTIST%'
   OR emp_role = 'MANAGER';


-- Calculate employee bonus
SELECT
    emp_id,
    CONCAT(first_name, ' ', last_name) AS name,
    salary,
    emp_rating,
    (salary * 0.05 * emp_rating) AS Bonus
FROM emp_record_table;