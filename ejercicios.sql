Ejercicio 1
SELECT name, Milliseconds,Composer FROM tracks
Ejercicio  2
SELECT FirstName, LastName,City, Address FROM customers
Ejercicio  3
SELECT name, Milliseconds FROM tracks WHERE Milliseconds >2900000 and Composer is NULL
Ejercicio  4
SELECT LastName, FirstName, Company FROM customers WHERE Company IS NOT NULL
Ejercicio  5
SELECT DISTINCT BillingCity FROM invoices WHERE BillingState IS NOT NULL  ORDER  by BillingCity DESC
Ejercicio  6
SELECT title FROM albums WHERE title like "%OF%" ORDER by title ASC
Ejercicio  7
SELECT g.name as genero, t.name as cancion FROM genres g JOIN tracks t ON g.GenreId = t.GenreId
Ejercicio  8
SELECT name, title FROM tracks t JOIN albums a ON t.AlbumId = a.AlbumId
