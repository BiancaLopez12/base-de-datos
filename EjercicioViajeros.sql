Ejercicio 1:
/*Mostrar la cantidad de estaciones totales*/
SELECT count(DISTINCT NOMBRE_ESTACION) FROM barcelona_viajeros_por_franja_xlsx
Ejercicio 2:
/*Mostrar un listado de estaciones único.*/
SELECT DISTINCT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
Ejercicio 3:
/*Al listado obtenido adicionar una columna con el total de pasajeros 
subidos y otra con el total de pasajeros que bajaron.*/
SELECT NOMBRE_ESTACION, sum(DISTINCT VIAJEROS_BAJADOS), sum(DISTINCT VIAJEROS_SUBIDOS) FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
Ejercicio 4:
/*A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que 
subieron y bajaron.*/
SELECT NOMBRE_ESTACION,(VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS), sum(DISTINCT VIAJEROS_BAJADOS), sum(DISTINCT VIAJEROS_SUBIDOS) FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
Ejercicio 5:
/*Mostrar cuál fue la estación que más pasajeros subieron por tramo horario*/
SELECT NOMBRE_ESTACION,max(VIAJEROS_SUBIDOS) AS subidos, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER by subidos DESC
limit 1
··SI NO ES SUM ES COUNT 
Ejercicio 6:
/*Mostrar cuál fue la estación que más pasajeros subieron en el dia*/
SELECT NOMBRE_ESTACION,sum(VIAJEROS_SUBIDOS) AS subidos FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER by subidos DESC
limit 1
Ejercicio 7:
/*Mostrar cuál fue la estación que más pasajeros bajaron por tramo horario*/
SELECT NOMBRE_ESTACION,sum(VIAJEROS_BAJADOS) AS bajados, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO
ORDER by bajados DESC
limit 1
Ejercicio 8:
/*Mostrar cuál fue la estación que más pasajeros bajaron en el dia*/
SELECT NOMBRE_ESTACION,sum(VIAJEROS_BAJADOS) AS bajados, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION
ORDER by bajados DESC
limit 1
Ejercicio 9:
/*Mostrar cuál fue la estación que  tuvo la mayor diferencia entre pasajeros que subieron y bajaron por tramo
 horario en el dia*/

