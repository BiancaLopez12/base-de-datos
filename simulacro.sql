Ejercicio 1
SELECT title AS Pelicula
FROM film 
ORDER BY title ASC
Ejercicio 2
SELECT DISTINCT rating AS Ratings
FROM film_list 
GROUP BY rating
ORDER BY rating ASC 
Ejercicio 3
SELECT DISTINCT title AS peliculas, rental_rate AS Alquiler
FROM film WHERE rating LIKE "PG%"
ORDER BY alquiler DESC, title ASC
Ejercicio 4
SELECT DISTINCT city AS cuidad , country AS Pais 
FROM customer_list
ORDER BY  Pais, cuidad
Ejercicio 5
SELECT country AS Pais, COUNT(city) AS cuidad
FROM customer_list
GROUP BY pais
ORDER BY cuidad DESC
Ejercicio 6
SELECT COUNT(city) AS cuidad, country AS Pais
FROM customer_list
GROUP BY pais
HAVING COUNT(city) > 2;
Ejercicio 7


