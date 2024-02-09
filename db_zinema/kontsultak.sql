#Kontsultak

#1-. Nahi dugu ikusi saioak eta gehien aportatu duten filmen izenak eta diru-kopurua, 
#gehien aportatzen duena gutxien aportatzen duenari ordenatu behar da, gainera bakarrik lehenengo bostak ikusi behar dira.
select s.eguna as 'data', s.ordutegia as 'saioa', f.izena as 'filma', sum(e.dirutotala) as 'dirukopurua'
from saioa s join filma f
using (filma_id)
join sarrera sr using (saioa_id)
join erosketak e using (erosketak_id)
group by s.saioa_id, f.izena
order by SUM(e.dirutotala) desc
limit 5;

#2- Erabiltzaileek gehien ikusi dituzten lehenengo bost filmak agertu behar dira eta  kalkulatu behar da zenbat sarrera erosi diren film bakoitzeko.
SELECT f.izena AS 'Filma', e.kant AS 'Sarrera Kopurua'
FROM FILMA f
LEFT JOIN SAIOA s using (filma_id)
LEFT JOIN sarrera sr using (saioa_id)
LEFT join erosketak e using (erosketak_id)
ORDER BY e.kant DESC
limit 5;


#3- Kalkulatu behar dugu zinema bakoitzaren bezero-kopurua eta erakutsi gutxien daukan bezero-kopurua.
SELECT z.izena AS 'Zinema', COUNT(DISTINCT b.Bezero_id) AS 'Bezero Kopurua'
FROM ZINEMA z
LEFT JOIN SAIOA s using (zinema_id)
LEFT JOIN SARRERA sr using (saioa_id)
LEFT JOIN EROSKETAK e using (erosketak_id)
LEFT JOIN BEZEROA b using (bezero_id)
GROUP BY z.izena
ORDER BY COUNT(DISTINCT b.Bezero_id) ASC
limit 1;

 #4-Erakutsi areto gehien dauzkaten zinemak eta horien artean proiektatzen dituzten filmen batez besteko iraupena. Iraupenaren arabera ordenatu. 
SELECT z.izena AS 'Zinema', a.izena AS 'Aretoa', AVG(f.Iraupena) AS 'Batez Besteko Iraupena'
FROM ZINEMA z
JOIN ARETOA a using (zinema_id)
JOIN SAIOA s ON a.zinema_id = s.zinema_id AND a.aretoa_id = s.aretoa_id
JOIN FILMA f using (filma_id)
GROUP BY z.izena, a.izena
ORDER BY AVG(f.Iraupena) DESC;

#5- Erakutsi genero bakoitzeko bataz bestekoa, sarreren kopurua kontuan hartuta.  Generoak handienetik txikienera ordenatu behar dira.
SELECT f.generoa AS 'Genero', sum(e.kant) AS 'Sarrera Kopurua'
FROM FILMA f
JOIN SAIOA s using (filma_id)
JOIN SARRERA sr using (saioa_id)
JOIN erosketak e using (erosketak_id)
group by f.generoa
ORDER BY sum(e.kant) DESC;

#6-  Genero bakoitzeko zein izan da gehien ikusi den filma, genero bakoitzeko bakarrik film bat erakutsi behar da gainera film bakoitzeko zenbat sarrera erosi diren.
SELECT f.generoa as "Generoa", f.izena AS "Filma", sum(kant_sr) AS "Sarrerak Erositako Kopurua"
FROM FILMA f JOIN SAIOA s using (filma_id)
JOIN Sarrera sr using (saioa_id)
GROUP BY f.generoa
ORDER BY sum(kant_sr) DESC;


#7- Adierazi zein da bezeroek gehien erosten dituzten saioak, bakarrik lehenengo hiru saioak eta saio bakoitzeko zein da gehien ikusten den generoa. 
SELECT b.izena AS 'Bezeroa', count(e.erosketak_id) AS 'Erosketa Kopurua', f.generoa AS 'Generoa'
FROM BEZEROA b
JOIN EROSKETAK e using (Bezero_id)
JOIN SARRERA sr using (Erosketak_id)
JOIN SAIOA s using (saioa_id)
JOIN FILMA f using (filma_id)
GROUP BY b.Bezero_id, s.saioa_id, f.generoa
ORDER BY COUNT(e.erosketak_id) DESC
LIMIT 4;
