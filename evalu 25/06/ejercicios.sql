-- 1

SELECT department_name as nombreDeDepartamento, count(employee_id) cantidadEmpleados, sum(salary) as cantidadTotalDeSueldo FROM departments d
JOIN employees e on d.department_id = e.department_id
GROUP by department_name

-- 2

SELECT e.first_name, e.last_name, d.department_name,c.country_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE c.country_name = 'United States of America'

-- 3

SELECT e.first_name,e.last_name, e.email, e.phone_number, d.department_id FROM employees e
JOIN departments d on e.department_id = d.department_id
WHERE phone_number is NULL

UPDATE employees set phone_number = '111.222.3344'
WHERE phone_number is NULL

--  4 
UPDATE employees 
SET salary = salary + (salary * 0.2)
WHERE salary IN (
    SELECT salary FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    JOIN jobs j ON e.job_id = j.job_id
    WHERE salary <= 8000 AND (job_title = 'Programmer' OR job_title = 'Purchasing Clerk')
);

-- 5
INSERT INTO locations (street_address, city,state_province, country_id)
VALUES                ('147 Spadina Ave,','Toronto', 'Ontario', 'CA');

INSERT INTO departments (department_name, location_id)
VALUES                  ('development', '2701')

INSERT INTO employees (first_name,last_name, email, phone_number,hire_date,job_id, salary, manager_id)
             VALUES ('Matias', 'Gonzalez', 'mgonzales@gmail.com', '1.231.231.122', '2024-06-25','9','5000','100'),
			        ('Laura', 'Nievas', 'Inievas@gmail.com', '1.231.231.122', '2024-06-25','9','5000','100'),
					('Federico', 'Lopez', 'Inievas@gmail.com', '1.231.231.122', '2024-06-25','9','5000','100');

-- me slaio un error justo en lo ultimo 