-- Nos informa que la empresa dejará de prestar operaciones en Canadá, por lo que 
--nos solicitan que eliminemos todos los empleados, departamentos y locaciones pertenecientes
-- a Canadá junto con el país.
DELETE from employees where employee_id = '201' or employee_id = '202'
DELETE from departments WHERE department_id = '2'
DELETE from locations WHERE location_id = '1800'
DELETE from countries WHERE country_id = 'CA'

-- 2 Nos solicitan un listado que contenga nombre, apellido,
--  departamento y país de todos los elementos que trabajan en United Kingdom.

SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
JOIN departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
where c.country_id = 'UK'

-- 3 Eliminar todos los trabajos que no posean empleados asociados, la query tiene
-- que tener la capacidad de eliminar los jobs que no posean empleados de una sola ejecución 
-- sin indicar de manera manual el número de jobs_id a eliminar.

DELETE FROM jobs 
WHERE job_id IN (  SELECT j.job_id FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id 
WHERE e.job_id IS NULL
);

--Calcular la cantidad de personas, el sueldo promedio, mínimo y máximo de todos los puestos laborales
--  (job_title), descartando aquellos que tengan un sólo empleado.

SELECT j.job_title as puestosLaborales, count(e.employee_id) as empleado ,avg(e.salary) as sueldo,
                       j.min_salary as salarioMinimo, j.max_salary as salarioMaximo FROM jobs j
JOIN employees e on j.job_id = e.job_id
GROUP by puestosLaborales
HAVING empleado > 1;