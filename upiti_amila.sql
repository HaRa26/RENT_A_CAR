#Broj najmova po kategoriji automobila.
SELECT KategorijaAutomobila.NazivKategorije, COUNT(Najam.ID_Najma) AS BrojNajmova
FROM Najam
INNER JOIN Automobil ON Najam.ID_Automobila = Automobil.ID_Automobila
INNER JOIN KategorijaAutomobila ON Automobil.ID_Kategorije = KategorijaAutomobila.ID_Kategorije
GROUP BY KategorijaAutomobila.NazivKategorije;

#Prikaz automobila s cijenom iznad prosjeka.
SELECT Marka, Model, Cijena 
FROM Automobil 
WHERE Cijena > (SELECT AVG(Cijena) FROM Automobil);

#Upit će prikazati ime svakog zaposlenika i broj najmova koje su izvršili uključujući i one zaposlenike koji nisu izvršili nijedan najam.
SELECT 
    Zaposlenik.Ime AS ImeZaposlenika, 
    COUNT(Najam.ID_Najma) AS BrojNajmova
FROM 
    Zaposlenik
LEFT JOIN 
    Najam ON Zaposlenik.ID_Zaposlenika = Najam.ID_Zaposlenika
GROUP BY 
    Zaposlenik.Ime;

#Prikaz ukupnog broja oštećenja po automobilu.
SELECT Automobil.Marka, Automobil.Model, COUNT(*) AS BrojOštećenja
FROM Oštećenja
JOIN Najam ON Oštećenja.ID_Najma = Najam.ID_Najma
JOIN Automobil ON Najam.ID_Automobila = Automobil.ID_Automobila
GROUP BY Automobil.Marka, Automobil.Model;

#Prikaz prosječne cijene najma automobila po kategorijama.
SELECT KategorijaAutomobila.NazivKategorije AS Kategorija, AVG(Automobil.Cijena) AS ProsječnaCijena
FROM Automobil
JOIN KategorijaAutomobila ON Automobil.ID_Kategorije = KategorijaAutomobila.ID_Kategorije
GROUP BY KategorijaAutomobila.NazivKategorije;