select szallitas, cimek.nev, utca, hsz, ar
FROM rendelesek
INNER JOIN cimek ON rendelesek.cimid = cimek.id
INNER JOIN pizzak ON rendelesek.pizzaid = pizzak.id
ORDER BY szallitas;