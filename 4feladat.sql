SELECT pizzakid, darab, nev, meret
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzakid = pizzak.id
HAVING COUNT(*) > 1
ORDER BY darab DESC;