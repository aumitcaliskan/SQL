SELECT *
FROM employees

SELECT FirstName
FROM employees

SELECT DISTINCT BillingCountry (unique country names)
FROM invoices

SELECT COUNT (*) FROM invoices

SELECT COUNT (DISTINCT BillingCity) FROM invoices 

SELECT * FROM invoices
WHERE BillingCity = 'Stuttgart'

SELECT * FROM invoice_items
WHERE UnitPrice > 1 AND OR NOT = != <> 

SELECT*
FROM invoices
WHERE Total > 10 AND BillingCountry == 'USA'
ORDER BY Total DESC 

SELECT*
FROM invoices
WHERE Total > 10 AND BillingCountry == 'USA'
ORDER BY Total, BillingCity DESC

SELECT*
FROM employees
-- LIMIT 1 (To see the table content)

--BETWEEN operator value >= low AND value <= high (inclusive)
--NOT BETWEEN value < low OR value > high (not inclusive)
--Date format BETWEEN '2000-10-25' AND '2001-01-17'

SELECT * 
FROM employees
WHERE hire_date BETWEEN '2018-12-01' AND '2020-12-01'

SELECT count(*)
FROM invoices
WHERE total IN (1.98, 8.91)
ORDER BY total

SELECT count(*)
FROM invoices
WHERE total NOT IN (1.98, 8.91)
ORDER BY total

SELECT *
FROM customers
WHERE FirstName IN ('John', 'Mark')

--wildcard

--LIKE % matches any sequence of characters
--LIKE _ matches any single character
--ILIKE insensitive CASE

SELECT *
FROM customers
WHERE FirstName LIKE 'J%' AND LastName LIKE 'S%'

SELECT *
FROM customers
WHERE FirstName NOT LIKE '_na' AND LastName NOT LIKE 'B%'
ORDER BY LastName DESC
