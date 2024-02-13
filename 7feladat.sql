SELECT pizzaid, darab, nev, meret
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzaid = pizzak.id
ORDER BY darab DESC
LIMIT 1;