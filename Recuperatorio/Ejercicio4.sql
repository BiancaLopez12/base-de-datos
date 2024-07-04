/*Nos informa que la empresa dejará de prestar operaciones en Canadá,
 por lo que nos solicitan que eliminemos todos los empleados, 
 departamentos y locaciones pertenecientes a Canadá junto con el país.
*/
Elimina los empleados:
DELETE FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments WHERE location_id IN (
        SELECT location_id FROM locations  WHERE country_id = (
            SELECT country_id FROM countries WHERE country_name = 'Canada'
        )
    )
);

ELimina los departamentos de canada:
DELETE FROM departments
WHERE location_id IN (
    SELECT location_id FROM locations WHERE country_id = (
        SELECT country_id  FROM countries WHERE country_name = 'Canada'
    )
);
Elimina las locaciones de canada:
DELETE FROM locations
WHERE country_id = (
SELECT country_id FROM countries WHERE country_name = 'Canada'
);
Elimina el pais de canada:
DELETE FROM countries
WHERE country_name = 'Canada';

