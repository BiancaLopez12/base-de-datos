consulta:
select first_name, phone_number FROM employees where phone_number is not null
cambio:
UPDATE employees
SET phone_number = '111.222.3344' 
WHERE phone_number  is null;