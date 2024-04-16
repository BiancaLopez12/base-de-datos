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
Parte 1
SELECT p.name, i.transcript
FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name LIKE 'MORTY Schapiro'
Parte 2 
SELECT p.name, i.transcript
FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name LIKE 'Annabel Miller'

Ejercicio 4
