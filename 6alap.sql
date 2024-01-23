SELECT nev
FROM pizza
WHERE id IN ( … )
GROUP BY nev
HAVING Count(meret)=3; 