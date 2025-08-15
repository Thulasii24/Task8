-- Creating a sample database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Creating a sample table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Inserting sample data
INSERT INTO employees (emp_name, department, salary) VALUES
('Alice', 'HR', 50000),
('Bob', 'IT', 65000),
('Charlie', 'Finance', 70000),
('David', 'IT', 60000),
('Eva', 'HR', 55000);

-- STORED PROCEDURE: Get employees by department

DROP PROCEDURE IF EXISTS GetEmployeesByDepartment;
DELIMITER //
CREATE PROCEDURE GetEmployeesByDepartment(IN dept_name VARCHAR(50))
BEGIN
    SELECT emp_id, emp_name, salary
    FROM employees
    WHERE department = dept_name;
END //
DELIMITER ;

-- Test the procedure
CALL GetEmployeesByDepartment('IT');

-- FUNCTION: Calculate annual salary

DROP FUNCTION IF EXISTS AnnualSalary;
DELIMITER //
CREATE FUNCTION AnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE annual DECIMAL(10,2);
    SET annual = monthly_salary * 12;
    RETURN annual;
END //
DELIMITER ;

-- Test the function
SELECT emp_name, salary, AnnualSalary(salary) AS annual_salary
FROM employees;
