-- 1) Listar el nombre de todos los empleados junto al nombre de departamento que pertenece, 
-- el estado o provincia, su sueldo y el nombre de su manager, ordenarlo por sueldo

SELECT e.first_name, d.department_name, l.state_province, e.salary, e.manager_id as mananger, m.first_name as name_mananger from employees e 
LEFT JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN employees m on e.employee_id = m.manager_id
ORDER by e.salary DESC

-- 2) reducir el salario mínimo y máximo de cada trabajo un 25%.

UPDATE jobs set min_salary =  min_salary - (min_salary * 0.25)

-- 3) Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo.

DELETE from employees in (SELECT s.max_salary FROM employees e
                          JOIN jobs s on e.job_id = s.job_id
						  WHERE s.max_salary < e.salary )
                          