# **3. Pizzafutár**

   Egy kisvárosi pizzafutár-vállalkozásnál a telefonos rendelések alapján adatbázist hoznak 
létre. A választható pizzák és egy adott nap megrendeléseinek néhány adata áll rendelkezésre 
a `*pizza.txt,*` a `*rendeles.txt*` és a `*cim.txt*` állományban.

## **1.feladat**
 Készítsen  új  adatbázist  `pizzeria`  néven!  A  mellékelt  állományokat  importálja 
 az adatbázisba  a  fájlnévvel  azonos  táblanéven!  Az  állományok  tabulátorral  tagolt, 
 UTF-8 kódolású szövegfájlok, az első soruk a mezőneveket tartalmazza. A létrehozás során 
 állítsa be a megfelelő típusokat és a kulcsokat!

## **Táblák:**
#### 1. `pizza` (id, nev, meret, ar) 

|Id|Típus|Leírás|Kulcs|
|---|---|---|---|
| id | int | A pizza azonosítója | PK |
| nev | string | A pizza neve ||
| meret | int | A pizza mérete centiméterben ||
| ar | int | A pizza ára forintban ||


#### 2. `rendeles` (id, pizzaid, darab, cimid, szallitas)

|Id|Típus|Leírás|Kulcs|
|---|---|---|---|
| id | int | A rendelés azonosítója | PK |
| pizza_Id | int | A pizza azonosítója | FK |
| darab | int | Adott pizzából rendelt mennyiség ||
| cim_Id | int | A rendelő személy azonosítója | FK |
| szallitas | date | A rendelés teljesítésére kért időpont ||

#### 3. `cim` (id, nev, utca, hsz) 

|Id|Típus|Leírás|Kulcs|
|---|---|---|---|
| id | int | A rendelő személy azonosítója | PK |
| nev | string | A személy neve ||
| utca | string | A rendelési cím utcája ||
| hsz | string | A rendelési cím házszáma ||

## **2.feladat**
  Állítsa be, hogy a `*pizza*` tábla ar mezője tizedesjegyek nélkül, „==Ft==” mértékegységgel jelenjen 
meg! 
A következő feladatok megoldásánál a lekérdezéseket és a jelentést a zárójelben olvasható 
néven mentse! Ügyeljen arra, hogy a lekérdezésekben pontosan a kívánt mezők szerepeljenek, 
felesleges mezőt ne jelenítsen meg!

## **3.feladat**
  Készítsen lekérdezést, amely megadja az 1500 Ft-nál olcsóbb pizzák nevét, méretét és árát! 
A lista méret szerint csökkenően, és azon belül név szerint ábécésorrendben jelenjen meg! 
**(3olcso)** 

## **4.feladat**
  Milyen nevű és milyen méretű pizzából kellett a legtöbbet sütni az összes megrendelés 
alapján?  Adja  meg  lekérdezés  segítségével  a  pizza  nevét,  méretét  és  a  darabszámát! 
**(4nepszeru)**

## **5.feladat** 
 Sorolja fel lekérdezés segítségével, hogy a pizzák neve és mérete szerint 18 és 19 óra közötti 
szállításra (az időhatárokat is beleértve) hány darab pizzára vettek fel rendelést! **(5esti)**

## **6.feladat** 
 Egészítse ki a zárójelben a lekérdezést úgy, hogy azoknak a pizzáknak a nevét adja meg, 
amelyekből  mindhárom  méretben  volt  rendelés!  A  kiegészített  lekérdezést  mentse! 
**(6jolfogy)**

```sql
SELECT nev

FROM pizza

WHERE id IN ( ... )

GROUP BY nev

HAVING Count(meret)=3;
```

A fenti lekérdezés szövege a források között a `*6alap.sql*` fájlban megtalálható.

## **7.feladat**
  Ha egy időpontban háromnál több darab pizzát szállít egy címre a futár, akkor a cég egy 
ajándék üdítőitallal lepi meg a rendelőt. Lekérdezés segítségével sorolja fel a szállítási idő, 
név, utca és házszám adatokat, ahova a futárnak üdítőitalt is vinnie kell! **(7reklam)**

## **8.feladat**
 Készítsen  jelentést  amely  megadja,  hogy  a  rendelési  címeken  mennyit  kell  fizetni 
a kiszállítás  időpontjában!  Vegye  figyelembe,  hogy  ha  egy  adott  szállítási  időpontban 
a rendelő személye azonos, akkor az összeget egyszerre fizetik ki! A jelentés létrehozását 
lekérdezéssel készítse elő! A jelentés elkészítésekor a mintából a mezők sorrendjét, a címet 
és a mezőnevek megjelenítését vegye figyelembe! A jelentés formázásában a mintától 
eltérhet. **(8osszeg)**