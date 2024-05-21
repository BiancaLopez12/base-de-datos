Ejercicio1
SELECT DISTINCT type FROM crime_scene_report
WHERE city like "SQL City"
ORDER by city ASC
Ejercicio2
SELECT p.name, d.car_make, d.car_model, d.plate_number, d.height FROM drivers_license d JOIN person p ON p.license_id = d.id
WHERE gender like "male" or  height like  "<=40"
ORDER by height DESC
Ejercicio3
SELECT p.name, g.name FROM person p  LEFT JOIN  get_fit_now_member g ON p.id = g.person_id
WHERE membership_status is NULL
Ejercicio4
SELECT name, address_number, address_street_name FROM person
WHERE address_street_name like "Franklin Ave"
ORDER BY address_number
LIMIT 1 OFFSET 2	
Ejercicio5
SELECT MAX(age),MIN(age),  AVG(age) FROM drivers_license
WHERE gender LIKE "male"
Ejercicio6
SELECT DISTINCT  car_make ,COUNT(car_make) FROM drivers_license
GROUP BY car_make 
HAVING COUNT(car_make) > 100
ORDER BY COUNT(car_make) DESC
Ejercicio7
SELECT p.name, p.ssn, c.membership_id, m.membership_status, count(c.check_in_date) as cantidad_veces FROM person p 
JOIN get_fit_now_member m ON p.id = m.person_id
JOIN get_fit_now_check_in c ON m.id = c.membership_id
WHERE check_in_date like "2017%"
GROUP BY c.membership_id 
HAVING cantidad_veces > 1
ORDER BY membership_status ASC, p.ssn ASC
Ejercicio8
SELECT DISTINCT event_name FROM facebook_event_checkin f
JOIN person p ON f.person_id = p.id
JOIN income i ON p.ssn = i.ssn 
WHERE annual_income >35000
LIMIT 5;


