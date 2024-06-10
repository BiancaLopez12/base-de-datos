Ejercicio 1:
UPDATE employees SET Phone = Fax, 
                     Fax = Phone;
Ejercicio 2:
DELETE FROM genres  WHERE GenreId ( = IN) (SELECT count(t.TrackId) as cant_cancion FROM tracks t JOIN genres g ON t.GenreId = g.GenreId
GROUP by g.GenreId
HAVING cant_cancion < 50);

Ejercicio 3:
UPDATE employees SET ReportsTo  = 8
WHERE EmployeeId = 1;

Ejercicio 4:
DELETE FROM invoice_items WHERE InvoiceId in (SELECT InvoiceId FROM invoices
WHERE BillingState IS NULL)

DELETE FROM invoices WHERE InvoiceId in (SELECT InvoiceId FROM invoices
WHERE BillingState IS NULL)
