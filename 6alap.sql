SELECT nev
FROM pizzak
WHERE id IN ( SELECT pizzaid FROM rendelesek )
GROUP BY nev
HAVING Count(meret)=3; 