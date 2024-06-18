1: AGREGAR DOS REGIONES
Africa:
INSERT INTO regions(region_name)
VALUES ("Africa");
Middle east:
INSERT INTO regions(region_name)
VALUES ("Middle east");
2: MODIFICAR / PASAR LOS PAISES A LAS NUEVAS REGIONES
Africa:
UPDATE countries
SET region_id = 6
WHERE  country_name  like 'Israel' OR country_name like 'Kuwait';
Middle East:
UPDATE countries
SET region_id = 6
WHERE  country_name  like 'Egypt' OR country_name like 'Nigeria' OR country_name like 'Zambia' OR country_name like 'Zimbabwe';
3: BORRAR LA REGION "Middle East" 
DELETE FROM regions
WHERE region_name = "Middle East and Africa";
4: AGREGAR DOS PAISES MAS A CADA UNA DE LAS NUEVAS REGIONES
MARRUECOS:
INSERT INTO countries(country_id,country_name, region_id)
VALUES ("MA","Marruecos", 5);
UGANDA:
INSERT INTO countries(country_id,country_name, region_id)
VALUES ("UG","Uganda", 5);
IRAK:
INSERT INTO countries(country_id,country_name, region_id)
VALUES ("IR","Irak", 6);
LIBIA:
INSERT INTO countries(country_id,country_name, region_id)
VALUES ("LI","Libia", 6);
5: VOLVER A CREAR LA REGÍON "MIDDLE EAST AND AFRICA"
INSERT INTO regions(region_name)
VALUES ("Maddle East and Africa");
6: UTILIZANDO IN Y SUBQUERY PASAR LOS PAISES QUE SE ENCUENTRAN 
EN LA REGION AFRICA Y MIDDLE EAST (5 Y 6) A LA NUEVA REGION.
UPDATE countries
SET region_id = 7
WHERE  country_name  in (SELECT country_name FROM countries
WHERE region_id in (5,6)) 



