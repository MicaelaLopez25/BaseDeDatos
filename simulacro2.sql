1)
SELECT department_name FROM departaments
ORDER BY department_name ASC;

2)
SELECT department_name FROM departaments
ORDER BY department_name ASC;

3)
SELECT job_title, min_salary as minimo_salario , max_salary as maximo_salario FROM jobs
WHERE job_title like '%manager%'
ORDER BY minimo_salario DESC, maximo_salario DESC;

4)
SELECT country_name, r.region_name FROM countries c
JOIN regions r on c.region_id = r.region_id
GROUP by c.country_id 

5)
SELECT first_name, last_name, d.department_name, salary  FROM employees e
JOIN departments d on e.department_id = d.department_id
WHERE salary BETWEEN 9000 and 17000
ORDER BY salary DESC;

6)
SELECT count(country_name) as paises_cantidad, region_name as nombre_region FROM countries c
JOIN regions r on c.region_id = r.region_id
GROUP BY r.region_id
HAVING paises_cantidad > 5

7) 
SELECT max(hire_date) as actual_ingreso, min(hire_date) as viejo_ingreso from employees

8)
SELECT e.first_name, e.last_name, count(d.first_name) from employees e
JOIN dependents d on e.employee_id = d.employee_id
GROUP BY e.employee_id 
ORDER BY e.employee_id DESC
LIMIT 5