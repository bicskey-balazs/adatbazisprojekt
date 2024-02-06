SELECT pizzakid, darab, nev, meret, szallitas
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzakid = pizzak.id
WHERE szallitas > "18:00:00" AND szallitas < "19:00:00"
ORDER BY nev, meret;