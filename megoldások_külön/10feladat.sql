select szallitas, nev, utca, hsz
FROM rendelesek
INNER JOIN cimek ON rendelesek.cimid = cimek.id
WHERE darab > 3;
