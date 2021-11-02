SELECT p.name,t.TrackId,t.AlbumId, t.name
FROM tracks as t
JOIN playlist_track as pt
ON t.TrackId = pt.TrackId
JOIN playlists as p
ON pt.PlaylistId = p.PlaylistId

--ülkelerden 5 taneden fazla müşterisi olanları büyükten küçüğe

SELECT Country, COUNT(*) AS num_of_customers
FROM customers
GROUP BY Country
HAVING num_of_customers > 5
ORDER BY num_of_customers DESC

--Şehirlere göre müşteri sayısı büyükten küçüğe, ülkeler kendi içinde toplu olacak

SELECT Country,City, COUNT(*) AS num_of_customers
FROM customers
GROUP BY Country, City
ORDER BY num_of_customers DESC

--M ile başlayan a ile biten 10 haneli şarkılar

SELECT *
FROM tracks
WHERE name LIKE 'M________a'
ORDER BY TrackId DESC