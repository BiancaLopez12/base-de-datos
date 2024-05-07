Ejercicio 1
SELECT department_name AS Departamento 
FROM departments ORDER BY department_name ASC
Ejercicio 2
SELECT salary AS Salario 
FROM employees 
ORDER BY salary DESC
Ejercicio 3
SELECT job_title AS Puestos, min_salary AS Minimo, max_salary AS Maximo 
FROM jobs 
WHERE job_title like "%Manager%"
ORDER BY max_salary DESC, min_salary  DESC
Ejercicio 4
SELECT c.country_name AS Paises,r.region_name AS Regiones
FROM countries c JOIN regions r ON r.region_id = c.region_id
ORDER BY Regiones,Paises
Ejercicio 5
SELECT e.first_name AS Nombre, e.last_name AS Apellido, e.salary AS Salario, d.department_name AS Departamento
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE Salario >=9000 AND Salario <=17000
ORDER by Salario DESC
Ejercicio 6
SELECT COUNT(c.country_name) AS Paises,r.region_name AS Regiones
FROM countries c JOIN regions r ON r.region_id = c.region_id
GROUP BY c.region_id
HAVING COUNT(c.country_name) > 5
ORDER BY Regiones,Paises
Ejercicio 7
SELECT MIN(hire_date) AS Minimo,MAX (hire_date) AS Maximo
FROM employees
Ejercicio 8




Ejercicio 9




Ejercicio 10





