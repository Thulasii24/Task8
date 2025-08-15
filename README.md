# SQL Stored Procedures and Functions – Task 8

## Overview

This project demonstrates how to create and use **stored procedures** and **functions** in MySQL.
It uses a sample `employees` table to showcase:

* Fetching data using a stored procedure
* Performing calculations using a function

## Features

1. **Stored Procedure – `GetEmployeesByDepartment`**

   * Takes a department name as an input parameter.
   * Returns all employees from that department along with their salaries.

2. **Function – `AnnualSalary`**

   * Takes a monthly salary as input.
   * Returns the calculated annual salary.

## Database and Table Setup

The script:

* Creates a sample database `company_db`
* Creates an `employees` table
* Inserts sample employee data

## Usage

1. **Create and populate the database**
   Run the SQL script to create the database, table, and insert sample records.

2. **Create and test the stored procedure**

   ```sql
   CALL GetEmployeesByDepartment('IT');
   ```

3. **Create and test the function**

   ```sql
   SELECT emp_name, salary, AnnualSalary(salary) AS annual_salary
   FROM employees;
   ```

## Example Output

**Stored Procedure Call:**

```
emp_id | emp_name | salary
2      | Bob      | 65000.00
4      | David    | 60000.00
```

**Function Call:**

```
emp_name | salary  | annual_salary
Alice    | 50000.0 | 600000.0
Bob      | 65000.0 | 780000.0
...
```

## Tools Used

* MySQL Workbench
* SQL (MySQL syntax)

