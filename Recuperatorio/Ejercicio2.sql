/*Nos solicita un listado que contenga nombre, apellido, tipo de trabajo
 y departamento de todos los empleados y la ciudad.*/
SELECT 
    e.first_name AS Nombre,
    e.last_name AS Apellido,
    j.job_title AS Tipo_de_Trabajo,
    d.department_name AS Departamento,
    l.city AS Ciudad
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;