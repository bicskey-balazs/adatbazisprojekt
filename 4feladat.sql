SELECT pizzakid, darab, nev, meret
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzakid = pizzak.id
ORDER BY darab DESC
LIMIT 1;