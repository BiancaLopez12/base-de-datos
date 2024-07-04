SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE country_name like 'United Kingdom' 