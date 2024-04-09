-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 2. feladat:
INSERT INTO pizzak VALUES
( 118,"5 sajtos",22,1200);

-- 3. feladat:
UPDATE pizzak
SET ar = ar + 500
WHERE nev LIKE '%5%';

-- 4. feladat:
DELETE FROM pizzak WHERE ar > 5000;

-- 5. feladat:
ALTER TABLE pizzak MODIFY ar varchar(100);
UPDATE pizzak
SET ar = CONCAT(ar, ' Ft');
SELECT * FROM pizzak;

-- 6. feladat:
SELECT ar, nev, meret
FROM pizzak
WHERE ar < 1500
ORDER BY meret DESC, nev;

-- 7. feladat:
SELECT pizzaid, darab, nev, meret
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzaid = pizzak.id
ORDER BY darab DESC
LIMIT 1;

-- 8. feladat:
SELECT pizzaid, darab, nev, meret, szallitas
FROM rendelesek
INNER JOIN pizzak ON rendelesek.pizzaid = pizzak.id
WHERE szallitas > "18:00:00" AND szallitas < "19:00:00"
ORDER BY nev, meret;

-- 9. feladat:
SELECT nev
FROM pizzak
WHERE id IN ( SELECT pizzaid FROM rendelesek )
GROUP BY nev
HAVING Count(meret)=3;

-- 10. feladat:
select szallitas, nev, utca, hsz
FROM rendelesek
INNER JOIN cimek ON rendelesek.cimid = cimek.id
WHERE darab > 3;

-- 11. feladat:
select szallitas, cimek.nev, utca, hsz, ar
FROM rendelesek
INNER JOIN cimek ON rendelesek.cimid = cimek.id
INNER JOIN pizzak ON rendelesek.pizzaid = pizzak.id
ORDER BY szallitas;