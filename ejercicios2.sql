Ejercicio 1
SELECT first_name, last_name, salary FROM employees WHERE salary < "6000"
Ejercicio 2
SELECT e.first_name, e.last_name, d.department_id, city, state_province FROM employees e 
JOIN  departments d  ON e.department_id = d.department_id 
JOIN locations l  ON d.location_id= l.location_id 
Ejercicio 3
SELECT e.first_name "Empleado", m.first_name "Manager" FROM employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER  by "Manager"
Ejercicio 4
SELECT e.first_name "Nombre de Empleado ", e.last_name "Apellido de Empleado", d.first_name "Nombre de hijo/a", d.last_name "Apellido de hijo/a"
FROM  dependents d JOIN employees e ON e.employee_id = d.employee_id 
ORDER BY e.first_name, e.last_name,d.first_name, d.last_name ASC 
Ejercicio 5
SELECT e.first_name "Nombre de empleado", j.max_salary "Salario", j.job_title "Puesto de trabajo" FROM employees e JOIN jobs j ON e.job_id = j.job_id  
ORDER BY max_salary DESC
Ejercicio 6
SELECT e.first_name As Nombre, e.last_name As Apellido, d.department_name As Departamento, e.salary As Salario FROM employees e JOIN departments d 
ON e.department_id = d.department_id
 ORDER BY Nombre ASC, Departamento 
 /* Para renombrar usar el As y luego cuando las ordenas llamarlas por el nuevo nombre*/
Ejercicio 7
SELECT e.first_name As Nombre, l.state_province As Estado  FROM employees e 
JOIN departments d ON  e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id 
ORDER BY Nombre, Estado ASC
Ejercicio 8
SELECT e.first_name As Nombre, e.last_name As Apellido, c.country_name As Pais, r.region_name As Region  FROM employees e JOIN departments d 
ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
JOIN regions r ON c.region_id = r.region_id 
ORDER BY Nombre ASC
Ejercicio 9 
SELECT c.country_name As Pais, r.region_name As Region  FROM countries c
JOIN regions r ON c.region_id = r.region_id 
ORDER BY Pais DESC, Region DESC
Ejercicio 10
SELECT e.first_name As Nombre,j.job_title As Empleo, j.min_salary As Salario FROM employees e JOIN jobs j ON e.job_id = j.job_id  
ORDER BY min_salary ASC