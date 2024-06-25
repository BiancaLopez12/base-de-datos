Ejercicio 1:
SELECT e.first_name,  d.department_name, e.salary, l.state_province, j.job_title as 'Empleos', m.first_name FROM employees e 
JOIN  departments d  ON e.department_id = d.department_id 
JOIN jobs j ON e.job_id = e.job_id  
JOIN locations l ON d.location_id = l.location_id 
JOIN employees m ON m.manager_id = e.employee_id
ORDER BY salary ASC
Ejercicio 2:
