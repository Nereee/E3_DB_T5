#Kontsultak

select s.eguna, s.ordutegia, f.izena, sum(e.dirutotala) as dirukopurua
from saioa s join filma f
using (filma_id)
join sarrera sr using (saioa_id)
join erosketak e using (erosketak_id)
group by s.saioa_id, f.izena
order by SUM(e.dirutotala) desc
limit 5;

SELECT f.izena AS 'Filma', e.kant AS 'Sarrera Kopurua'
FROM FILMA f
LEFT JOIN SAIOA s using (filma_id)
LEFT JOIN sarrera sr using (saioa_id)
LEFT join erosketak e using (erosketak_id)
ORDER BY e.kant DESC
limit 5;

SELECT z.izena AS 'Zinema', COUNT(DISTINCT b.Bezero_id) AS 'Bezero Kopurua'
FROM ZINEMA z
LEFT JOIN SAIOA s using (zinema_id)
LEFT JOIN SARRERA sr using (saioa_id)
LEFT JOIN EROSKETAK e using (erosketak_id)
LEFT JOIN BEZEROA b using (bezero_id)
GROUP BY z.izena
ORDER BY COUNT(DISTINCT b.Bezero_id) ASC
limit 1;


SELECT z.izena AS 'Zinema', a.izena AS 'Aretoa', AVG(f.Iraupena) AS 'Batez Besteko Iraupena'
FROM ZINEMA z
JOIN ARETOA a using (zinema_id)
JOIN SAIOA s ON a.zinema_id = s.zinema_id AND a.aretoa_id = s.aretoa_id
JOIN FILMA f using (filma_id)
GROUP BY z.izena, a.izena
ORDER BY AVG(f.Iraupena) DESC;

SELECT f.generoa AS 'Genero', sum(e.kant) AS 'Sarrera Kopurua'
FROM FILMA f
JOIN SAIOA s using (filma_id)
JOIN SARRERA sr using (saioa_id)
JOIN erosketak e using (erosketak_id)
group by f.generoa
ORDER BY sum(e.kant) DESC;


SELECT f.generoa AS 'Genero', f.izena AS 'Filma', e.kant AS 'Sarrera Kopurua'
FROM FILMA f 
LEFT JOIN SAIOA s using (filma_id)
LEFT JOIN SARRERA sr using (saioa_id)
LEFT JOIN erosketak e using (erosketak_id)
GROUP BY f.generoa, f.izena
ORDER BY e.kant DESC;

SELECT b.izena AS 'Bezeroa', count(e.erosketak_id) AS 'Erosketa Kopurua', f.generoa AS 'Generoa'
FROM BEZEROA b
JOIN EROSKETAK e using (Bezero_id)
JOIN SARRERA sr using (Erosketak_id)
JOIN SAIOA s using (saioa_id)
JOIN FILMA f using (filma_id)
GROUP BY b.Bezero_id, s.saioa_id, f.generoa
ORDER BY COUNT(e.erosketak_id) DESC
LIMIT 4;


