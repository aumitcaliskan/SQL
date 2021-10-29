SELECT *
FROM albums 

SELECT Title 
FROM albums

SELECT AlbumId,Title
FROM albums;

SELECT*
FROM invoices
WHERE Total > 10 AND BillingCountry == 'USA'
ORDER BY Total DESC 
LIMIT 5

SELECT FirstName, LastName, Country
FROM customers
WHERE Country == 'Brazil'
ORDER BY FirstName
LIMIT 10





