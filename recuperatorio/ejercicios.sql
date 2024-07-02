--1)Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta en salarios, 
--para esto nos solicita que creemos un listado de tres columnas donde indiquemos el nombre del tipo
-- de trabajador, la cantidad de empleados y el gasto total en sueldos de empleados por tipo de trabajo
-- y necesita tenerla ordenada por cantidad de empleados.

SELECT j.job_title as nombreDeTrabajo, count(e.employee_id) cantidadEmpleados, sum(e.salary) as cantidadTotalDeSueldo FROM jobs j
JOIN employees e on j.job_id = e.job_id
GROUP by nombreDeTrabajo

--2) Nos solicita un listado que contenga nombre, apellido, tipo de trabajo y departamento de todos los 
-- empleados y la ciudad.
SELECT e.first_name, e.last_name, j.job_title, d.department_name, l.city FROM employees e
JOIN jobs j on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id =l.location_id 

--3) Debido a una política de mejora de sueldos nos solicitan que incrementemos un 55% el salario de todos
-- los empleados que cobren menos de 7500 y pertenezcan al departamento de IT o Financiero (finance)
UPDATE employees 
SET salary = salary + (salary * 1.55)
WHERE salary IN (
    SELECT salary FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    WHERE salary <= 7500 AND department_name = 'IT' OR department_name = 'Finance')
    
--4) Nos informa que la empresa dejará de prestar operaciones en Canada, por lo que nos solicitan que 
-- eliminemos todos los empleados, departamentos y locaciones pertenecientes a Canada junto con el país.
DELETE from employees where employee_id = '201' or employee_id = '202'
DELETE from departments WHERE department_id = '2'
DELETE from locations WHERE location_id = '1800'
DELETE from countries WHERE country_id = 'CA'

--5)Nos solicitan actualizar el número de teléfono de los gerentes de ventas que no tengan un numero 
-- de telefono asociado, se debe registrar el numero ‘333.444.555’
UPDATE employees 
SET phone_number = '333.444.555'
WHERE employee_id IN (
    SELECT e.employee_id 
    FROM jobs j
    JOIN employees e ON j.job_id = e.job_id
    WHERE j.job_title = 'Sales Manager'
);					   

-- 6) Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre 
-- consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle y un nuevo tipo de trabajo
--  de nombre ‘consultant’. adicionalmente nos envió la información de estos 3 consultores que deben cargarse 
-- perteneciendo a este nuevo departamento y tipo de trabajo:

INSERT INTO locations (street_address, city,state_province, country_id)
VALUES                ('2004 Charade Rd','Washington', 'Seattle', 'US');

INSERT INTO departments (department_name, location_id)
VALUES                  ('consultants', '2701')

INSERT INTO jobs (job_title,min_salary,max_salary)
VALUES ('consultants', '5000','7500')


INSERT INTO employees (first_name,last_name, email, phone_number,hire_date,job_id, salary, manager_id, department_id)
             VALUES ('Raul', 'Lopez', 'rlopez@gmail.com', '334.445.556', '2024-07-01','20','5000','105','12'),
			        ('Andres', 'Gonzales', 'angonzalez@gmail.com', '334.445.556', '2024-07-01','20','6000','107','12'),
					('Laura', 'Fernandez', 'ifernandez@gmail.com', '334.445.556', '2024-07-01','20','7500','107','12');