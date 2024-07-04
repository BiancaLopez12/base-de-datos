SELECT job_title, COUNT(e.employee_id) AS cantidad_personas,
    AVG(e.salary) AS sueldo_promedio,
    MIN(e.salary) AS sueldo_minimo,
    MAX(e.salary) AS sueldo_maximo
FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id
GROUP BY job_title
HAVING COUNT(e.employee_id) > 1;