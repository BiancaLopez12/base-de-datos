Ejercicio 1
SELECT *
   FROM crime_scene_report 
WHERE date = "20180115" AND city = "SQL City" AND type = "murder"


Ejercicio 2
Parte 1
SELECT max(address_number)
FROM person
  WHERE address_street_name = "Northwestern Dr"
Parte 2
SELECT name, id 
FROM person
  WHERE address_street_name = "Northwestern Dr" and address_number = " 4919"

Parte 1
SELECT name
FROM person
WHERE name LIKE '%Annabel%'
LIMIT 1
Parte 2
SELECT name,address_number,address_street_name 
FROM person
WHERE name LIKE '%Annabel%'
LIMIT 1

Ejercicio 3
SELECT p.name, i.transcript
FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name LIKE 'Morty Schapiro'

Ejercicio 4
SELECT p.name, i.transcript
FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name LIKE 'Annabel Miller'

Ejercicio 5
SELECT p.name AS nombre, i.transcript
FROM person p JOIN drivers_license d ON license_id = d.id
WHERE patente LIKE  "%H42W%"

Ejercicio 6
SELECT p.name AS nombre, d.plate_number AS patente, membership_status
FROM person p JOIN drivers_license d ON p.license_id = d.id
JOIN get_fit_now_nember g ON g.person_id = p.id
WHERE patente LIKE  "%H42W%" AND membership_status= "gold"

Ejercicio 7
INSERT INTO soluction VALUES(1, 'Jeremy Bowers');

      SELECT value FROM soluction;



