SELECT name, Milliseconds,Composer FROM tracks
SELECT FirstName, LastName,City, Address FROM customers
SELECT name, Milliseconds FROM tracks WHERE Milliseconds >2900000 and Composer is NULL
SELECT LastName, FirstName, Company FROM customers WHERE Company IS NOT NULL