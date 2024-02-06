#Kontsultak

select s.eguna, s.ordutegia, f.izena, sum(sr.prezioa) as dirukopurua
from saioa s join filma f
using (filma_id)
join sarrera sr using (saioa_id)
group by s.saioa_id, f.izena
order by SUM(sr.prezioa) desc
limit 5;

SELECT f.izena AS 'Filma', COUNT(sr.sarrera_id) AS 'Sarrera Kopurua'
FROM FILMA f
LEFT JOIN SAIOA s ON f.filma_id = s.filma_id
LEFT JOIN sr ON s.saioa_id = sr.saioa_id
GROUP BY f.izena
ORDER BY COUNT(sr.sarrera_id) DESC
LIMIT 5;

SELECT z.izena AS 'Cine', COUNT(DISTINCT b.Bezero_id) AS 'Bezero Kopurua'
FROM ZINEMA z
LEFT JOIN SAIOA s ON ZINEMA.zinema_id = SAIOA.zinema_id
LEFT JOIN SARRERA sr ON s.saioa_id = s.saioa_id
LEFT JOIN EROSKETAK e ON sr.Erosketak_id = e.erosketak_id
LEFT JOIN BEZEROA b ON e.Bezero_id = b.Bezero_id
GROUP BY z.izena
ORDER BY COUNT(DISTINCT b.Bezero_id) ASC;


SELECT z.izena AS 'Cine', a.izena AS 'Sala de Cine', AVG(f.Iraupena) AS 'Batez Besteko Iraupena'
FROM ZINEMA z
JOIN ARETOA a using (zinema_id)
JOIN SAIOA s ON a.zinema_id = SAIOA.zinema_id AND a.aretoa_id = s.aretoa_id
JOIN FILMA f using (filma_id)
GROUP BY z.izena, a.izena
ORDER BY AVG(f.Iraupena) DESC;

SELECT f.generoa AS 'Genero', COUNT(sr.sarrera_id) AS 'Sarrera Kopurua'
FROM FILMA f
LEFT JOIN SAIOA s ON f.filma_id = s.filma_id
LEFT JOIN SARRERA sr ON s.saioa_id = sr.saioa_id
GROUP BY f.generoa
ORDER BY COUNT(sr.sarrera_id) DESC;


SELECT f.generoa AS 'Genero', f.izena AS 'Película', COUNT(sr.sarrera_id) AS 'Sarrera Kopurua'
FROM FILMA f 
LEFT JOIN SAIOA s using (filma_id)
LEFT JOIN SARRERA sr using (saioa_id)
GROUP BY f.generoa, f.izena
ORDER BY COUNT(sr.sarrera_id) DESC;

SELECT b.izena AS 'Bezeroa', COUNT(e.erosketak_id) AS 'Erosketa Kopurua', s.saioa_id, f.generoa AS 'Generoa'
FROM BEZEROA b
LEFT JOIN EROSKETAK e using (Bezero_id)
LEFT JOIN SARRERA sr using (Erosketak_id)
LEFT JOIN SAIOA s using (saioa_id)
LEFT JOIN FILMA f using (filma_id)
GROUP BY b.Bezero_id, s.saioa_id, f.generoa
ORDER BY COUNT(e.erosketak_id) DESC, s.saioa_id ASC
LIMIT 3;