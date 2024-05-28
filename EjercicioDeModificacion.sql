/*
SELECT FROM WHERE
INSERT INTO VALUES
UPDATE SET WHERE
DELETE FROM WHERE (OR si quiero hablar de dos filas)
*/

/*INSERT*/

Insertar artista:
INSERT INTO artists(name)
VALUES ("Anuel AA");

/*Insertar disco del mismo artista:*/
INSERT INTO albums(Title,ArtistId)
VALUES ("Real Hasta La Muerte","276");

/*Insertar tres canciones del disco de ese artista:*/
INSERT INTO tracks(name,MediaTypeId, Milliseconds,UnitPrice)
VALUES ("Amanece",5,500000,0.99),
       ("Espina",3,210000,0.99),
       ("Tu No Lo Amas",4,510000,0.99); 

/*UPDATE*/

/*Modificar las tres canciones para completar o modificar:*/
UPDATE tracks
SET GenreId = 4
WHERE GenreId  is null;

/*DELETE*/
/*Borrar las canciones:*/
DELETE FROM tracks 
WHERE name = "Amanece" OR name = "Espina" OR name = "Tu No Lo Amas";

/*Borrar el album*/
DELETE FROM albums
WHERE Title = "Real Hasta La Muerte";

/*Borrar el artista*/
DELETE FROM artists
WHERE name = "Anuel AA";












