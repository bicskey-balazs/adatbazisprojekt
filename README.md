## **3. Pizzafutár**

   Egy kisvárosi pizzafutár-vállalkozásnál a telefonos rendelések alapján adatbázist hoznak 
létre. A választható pizzák és egy adott nap megrendeléseinek néhány adata áll rendelkezésre 
a *pizza.txt,* a *rendeles.txt* és a *cim.txt* állományban.

**1.** Készítsen  új  adatbázist  pizzeria  néven!  A  mellékelt  állományokat  importálja 
az adatbázisba  a  fájlnévvel  azonos  táblanéven!  Az  állományok  tabulátorral  tagolt, 
UTF-8 kódolású szövegfájlok, az első soruk a mezőneveket tartalmazza. A létrehozás során 
állítsa be a megfelelő típusokat és a kulcsokat!

### **Táblák:**
**pizza** (id, nev, meret, ar) 
- id  A pizza azonosítója (szám), ez a kulcs 
- nev  A pizza neve (szöveg) 
- meret  A pizza mérete centiméterben (szám) 
- ar  A pizza ára forintban (szám)

**rendeles** (id, pizzaid, darab, cimid, szallitas) 
- id  A rendelés azonosítója (szám), ez a kulcs – egy rendelésben egy fajta 
- pizza szerepel 
- pizzaid  A pizza azonosítója (szám) 
- darab  Adott pizzából rendelt mennyiség (szám) 
- cimid  A rendelő személy azonosítója (szám) 
- szallitas  A rendelés teljesítésére kért időpont (idő)

**cim** (id, nev, utca, hsz) 
- id  A rendelő személy azonosítója (szám), ez a kulcs 
- nev  A személy neve (szöveg) – azonos nevűek lehetségesek 
- utca  A rendelési cím utcája (szöveg) 
- hsz  A rendelési cím házszáma (szöveg)

**2.**  Állítsa be, hogy a *pizza* tábla ar mezője tizedesjegyek nélkül, „==Ft==” mértékegységgel jelenjen 
meg! 
A következő feladatok megoldásánál a lekérdezéseket és a jelentést a zárójelben olvasható 
néven mentse! Ügyeljen arra, hogy a lekérdezésekben pontosan a kívánt mezők szerepeljenek, 
felesleges mezőt ne jelenítsen meg!

**3.**  Készítsen lekérdezést, amely megadja az 1500 Ft-nál olcsóbb pizzák nevét, méretét és árát! 
A lista méret szerint csökkenően, és azon belül név szerint ábécésorrendben jelenjen meg! 
(**3olcso**) 

**4.**  Milyen nevű és milyen méretű pizzából kellett a legtöbbet sütni az összes megrendelés 
alapján?  Adja  meg  lekérdezés  segítségével  a  pizza  nevét,  méretét  és  a  darabszámát! 
(**4nepszeru**)

**5.**  Sorolja fel lekérdezés segítségével, hogy a pizzák neve és mérete szerint 18 és 19 óra közötti 
szállításra (az időhatárokat is beleértve) hány darab pizzára vettek fel rendelést! (**5esti**)

**6.**  Egészítse ki a zárójelben a lekérdezést úgy, hogy azoknak a pizzáknak a nevét adja meg, 
amelyekből  mindhárom  méretben  volt  rendelés!  A  kiegészített  lekérdezést  mentse! 
(**6jolfogy**)

> *SELECT nev*

> *FROM pizza*

> *WHERE id IN ( ... )*

> *GROUP BY nev*

>*HAVING Count(meret)=3;*

A fenti lekérdezés szövege a források között a *6alap.sql* fájlban megtalálható.

**7.**  Ha egy időpontban háromnál több darab pizzát szállít egy címre a futár, akkor a cég egy 
ajándék üdítőitallal lepi meg a rendelőt. Lekérdezés segítségével sorolja fel a szállítási idő, 
név, utca és házszám adatokat, ahova a futárnak üdítőitalt is vinnie kell! (**7reklam**)

**8.** Készítsen  jelentést  amely  megadja,  hogy  a  rendelési  címeken  mennyit  kell  fizetni 
a kiszállítás  időpontjában!  Vegye  figyelembe,  hogy  ha  egy  adott  szállítási  időpontban 
a rendelő személye azonos, akkor az összeget egyszerre fizetik ki! A jelentés létrehozását 
lekérdezéssel készítse elő! A jelentés elkészítésekor a mintából a mezők sorrendjét, a címet 
és a mezőnevek megjelenítését vegye figyelembe! A jelentés formázásában a mintától 
eltérhet. (**8osszeg**)