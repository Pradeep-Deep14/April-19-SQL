CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (employee_id, employee_name, salary, department_id) VALUES
(1, 'Ravi', 60000, 1),
(2, 'Aisha', 50000, 1),
(3, 'Rajesh', 80000, 2),
(4, 'Sita', 70000, 2),
(5, 'Vikram', 55000, 1);

SELECT * FROM EMPLOYEES


/*
Write a SQL query to find the employee names and their salaries along with the average salary in their department.
*/

--Method 1 Pradeep
	
SELECT EMPLOYEE_NAME,
       SALARY,
       AVG(SALARY)OVER(PARTITION BY DEPARTMENT_ID) AS AVERAGE_SALARY
FROM EMPLOYEES

--Method 2 
	
SELECT e.employee_name, e.salary, a.average_salary
FROM employees e
JOIN (
    SELECT department_id, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
) a ON e.department_id = a.department_id;