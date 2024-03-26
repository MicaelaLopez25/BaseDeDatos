1) 
 SELECT name, Composer, milliseconds  from tracks t
join albums a ON t.AlbumId = a.AlbumId
2)
 SELECT FirstName, LastName, Address, City  from  customers
3)
  SELECT name, Milliseconds  from  tracks
where Composer is NULL and Milliseconds > 2900000
4)
 SELECT  LastName, FirstName,Company  from  customers
where Company is NOT NULL
5)
SELECT DISTINCT BillingCity FROM invoices 
WHERE BillingState is not NULL 
ORDER BY BillingCity DESC;
6)
SELECT Title FROM albums
WHERE Title LIKE "%of%"
ORDER BY Title ASC ;
7)
SELECT t.name, g.name FROM tracks t
JOIN genres g on t.GenreId = g.GenreId
8)
SELECT t.name, g.title FROM tracks t
JOIN albums g on t.name = g.title
ORDER BY t.name, g.Title ASC ;