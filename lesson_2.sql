SELECT FirstName, LastName, Country
FROM customers 
WHERE Country ='USA' OR Country='Canada'
WHERE Country IN ('USA', 'Canada')
WHERE Country NOT IN ('USA') 

SELECT*
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2012-01-02' --(not included, date is writen string format)
ORDER BY InvoiceDate DESC 

SELECT*
FROM invoices
WHERE total BETWEEN 1.98 AND 3.96
ORDER BY InvoiceDate ASC

--wildcard

SELECT *
FROM tracks
WHERE Composer LIKE '%bach'
WHERE Composer LIKE 'Ch___ Be%' --( _ is one character )

SELECT COUNT(Composer) 
FROM tracks

SELECT COUNT (DISTINCT Composer) AS 'besteci sayısı' -- (if you want to use space you need to write it in string format)
FROM tracks

SELECT avg(Milliseconds) --MIN MAX sum (avg ignores NULL)
FROM tracks
-- 
SELECT max(Milliseconds) AS longest
FROM tracks

SELECT *
FROM tracks
WHERE name LIKE '%love%'
ORDER BY TrackId DESC
LIMIT 5

SELECT BillingCountry,SUM(total) 
FROM invoices
-- WHERE BillingCountry = 'Argentina'
GROUP BY BillingCountry
-- ORDER BY
HAVING SUM(total) > 50 --(to use filtering aggregate function) 
-- LIMIT



