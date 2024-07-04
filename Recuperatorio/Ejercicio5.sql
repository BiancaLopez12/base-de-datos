/*Nos solicitan actualizar el número de teléfono de los gerentes 
de ventas que no tengan un numero de telefono asociado, se debe
registrar el número ‘333.444.555’
*/
UPDATE employees 
SET phone_number = '333.444.555'
WHERE phone_number IS NULL AND job_id IN (
        SELECT j.job_id FROM jobs j WHERE j.job_title = 'Sales Manager'
    );