-- Ortalama satışı Almanyanın ortalama satışından fazla olan 3 ülke

SELECT BillingCountry, avg(total) as ortalama_satis
FROM invoices
GROUP BY BillingCountry
HAVING ortalama_satis > (SELECT avg(total)
FROM invoices
WHERE BillingCountry = 'Germany')
ORDER BY ortalama_satis
LIMIT 3

SELECT AlbumId, sum(Milliseconds)
FROM tracks
GROUP BY AlbumId
HAVING sum(Milliseconds)>200000

SELECT*
FROM tracks

SELECT*
FROM genres 

SELECT tracks.TrackId, tracks.name, genres.Name
FROM tracks
INNER JOIN genres 
ON tracks.GenreId = genres.GenreId

SELECT *
FROM albums

SELECT *
FROM artists

SELECT albums.AlbumId, albums.Title, artists.Name
FROM albums
INNER JOIN artists
ON albums.ArtistId = artists.ArtistId

SELECT *
FROM customers

SELECT *
FROM invoices

SELECT c.FirstName, c.LastName, i.InvoiceDate, c.Country, i.total
FROM customers as c
JOIN invoices as i
ON  c.CustomerId = i.CustomerId

--EmployeeId LastName FirstName Title ReportsTo LastName FirstName Title

SELECT  r.LastName, r.FirstName, r.title, e.LastName, e.FirstName, e.title
FROM employees as e
LEFT JOIN employees as r
ON  e.ReportsTo = r.EmployeeId