/*Nos informan de la creación de un nuevo departamento dentro 
de la empresa que tendrá el nombre consultants, este está en 
la locación ubicada en ‘2004 Charade Rd’ de Seattle y un nuevo 
tipo de trabajo de nombre ‘consultant’. adicionalmente nos envió 
la información de estos 3 consultores que deben cargarse 
perteneciendo a este nuevo departamento y tipo de trabajo:
*/
Nueva locacion:
INSERT INTO locations (location_id, street_address, city, country_id)
VALUES (1001, '2004 Charade Rd', 'Seattle', 'US');
Nuevo departamento:
INSERT INTO departments (department_id, department_name, location_id)
VALUES (300, 'Consultants', 1001);
Nuevo tipo de trabajo:
INSERT INTO jobs (job_id, job_title,min_salary, max_salary)
VALUES (500, 'Consultant',400,8000);
Nuevos empleados:
INSERT INTO employees ( first_name, last_name, email, phone_number,hire_date, salary,manager_id, department_id, job_id)
VALUES 
('Raul', 'Lopez', 'rlopez@gmail.com', '334-445-556', '2024-04-01',5000, 105,300,500),
('Andres', 'Gonzalez', 'agonzalez@gmail.com', '334-445-556','2024-04-01',6000, 106,300,500),
('Laura', 'Fernandez','lfernandez' , '334-445-556','2024-04-01',7500,107,300,500);