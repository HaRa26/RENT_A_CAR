#Ovaj upit će prikazati ime klijenta i broj najmova koje je svaki klijent izvršio, sortirano od najviše do najmanje.
SELECT 
Klijent.Ime,
COUNT(Najam.ID_Najma) AS BrojNajmova
FROM 
Klijent
LEFT JOIN 
Najam ON Klijent.ID_Klijenta = Najam.ID_Klijenta
GROUP BY 
Klijent.Ime
ORDER BY 
COUNT(Najam.ID_Najma) DESC;


#Prikaz automobila sortiranih po godini proizvodnje.
SELECT Marka, Model, Godina, Boja, Cijena 
FROM Automobil 
ORDER BY Godina DESC;


#Ovaj upit će prikazati informacije o aktivnim najmovima automobila.
SELECT 
    Klijent.Ime,
    Klijent.Adresa,
    Automobil.Marka,
    Automobil.Model,
    Najam.DatumPocetkaNajma,
    Najam.DatumZavrsetkaNajma,
    Najam.UkupnaCijena
FROM 
    Klijent, Najam, Automobil
WHERE 
    Klijent.ID_Klijenta = Najam.ID_Klijenta
    AND Najam.ID_Automobila = Automobil.ID_Automobila
    AND Najam.ID_Statusa = 1; 


# Prikaz najpopularnijih kategorija automobila po broju najmova.
 SELECT KategorijaAutomobila.NazivKategorije AS Kategorija, COUNT(Najam.ID_Najma) AS BrojNajmova
FROM Automobil
JOIN KategorijaAutomobila ON Automobil.ID_Kategorije = KategorijaAutomobila.ID_Kategorije
JOIN Najam ON Automobil.ID_Automobila = Najam.ID_Automobila
GROUP BY KategorijaAutomobila.NazivKategorije
ORDER BY BrojNajmova DESC
LIMIT 5;  


#Ovaj upit će izlistati tri zaposlenika sa najvećim brojem najmova koje su izvršili.
SELECT 
    Zaposlenik.Ime AS ImeZaposlenika,
    COUNT(Najam.ID_Najma) AS BrojNajmova
FROM 
    Zaposlenik
JOIN 
    Najam ON Zaposlenik.ID_Zaposlenika = Najam.ID_Zaposlenika
GROUP BY 
    Zaposlenik.Ime
ORDER BY 
    BrojNajmova DESC
LIMIT 3;