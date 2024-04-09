1)
SELECT first_name, last_name, salary  from employees
WHERE salary < 6000 
2)
SELECT first_name, last_name, b.state_province,b.city FROM employees t
join departments a ON t.department_id = a.department_id
JOIN locations b on a.location_id = b.location_id
3)
SELECT e.first_name, m.first_name  FROM employees e JOIN employees m ON e.employee_id = m.manager_id
ORDER BY e.first_name, m.first_name ASC ;
4)
SELECT e.first_name, e.last_name, d.first_name  FROM employees e join dependents d on e.employee_id = d.employee_id
ORDER BY e.first_name, d.first_name ASC ;
5)
SELECT e.first_name, e.last_name, j.job_title, j.max_salary FROM employees e join jobs j on e.job_id = j.job_id
ORDER BY j.max_salary DESC;
6) 
SELECT e.first_name AS Nombre, e.last_name, d.department_name AS Departamento, e.salary FROM employees e join departments d on e.department_id = d.department_id
ORDER BY Nombre, Departamento
7)


