SELECT CustomerId, sum (total)
FROM invoices
GROUP BY CustomerId
ORDER BY sum (total) DESC

SELECT CustomerId, count(total)
FROM invoices
GROUP BY CustomerId
ORDER BY count (total) DESC

SELECT CustomerId, BillingCountry, sum (total)
FROM invoices
GROUP BY BillingCountry, CustomerId
ORDER BY BillingCountry

SELECT DATE(InvoiceDate),SUM (total)
FROM invoices
GROUP BY DATE (InvoiceDate)
ORDER BY SUM (total)

SELECT CustomerId,SUM(total)
FROM invoices
--WHERE CustomerId NOT IN (2,3,4)
GROUP BY CustomerId
HAVING sum(total)>30

SELECT BillingCountry, count(InvoiceDate)
FROM invoices
GROUP BY BillingCountry
HAVING count(InvoiceDate) > 20

