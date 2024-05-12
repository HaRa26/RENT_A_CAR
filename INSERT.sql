INSERT INTO Klijent (Ime, Email, Telefon, Adresa) VALUES
( 'Adnan Adnanović', 'adnan@example.com', '987654321', 'Ul. Zagrebačka 25, Mostar'),
( 'Lejla Ljubović', 'lejla@example.com', '555444333', 'Ul. Maršala Tita 15, Tuzla'),
( 'Ahmed Ahmetović', 'ahmed@example.com', '777888999', 'Ul. Kralja Tomislava 20, Bihać'),
( 'Amra Amrić', 'amra@example.com', '111222333', 'Ul. Franjevaca 5, Zenica'),
( 'Denis Denić', 'denis@example.com', '444555666', 'Ul. Hercegovačka 30, Mostar'),
( 'Sara Sarić', 'sara@example.com', '888999000', 'Ul. Stjepana Radića 25, Sarajevo'),
( 'Mirza Mirzić', 'mirza@example.com', '222333444', 'Ul. Stara 1, Tuzla'),
( 'Nermina Nerminović', 'nermina@example.com', '666777888', 'Ul. Zelenih Beretki 10, Sarajevo'),
( 'Haris Hasić', 'haris@example.com', '555666777', 'Ul. Armije BiH 35, Sarajevo'),
( 'Lejla Ljubavić', 'lejla.ljubavic@example.com', '333444555', 'Ul. Behram begova 18, Sarajevo'),
( 'Dino Dinić', 'dino.dinic@example.com', '777888999', 'Ul. Ivana Cankara 3, Sarajevo'),
( 'Amina Aminčić', 'amina@example.com', '111222333', 'Ul. Safeta Zajke 12, Sarajevo'),
( 'Adis Adišić', 'adis@example.com', '888999000', 'Ul. Hamdije Ćemerlića 20, Sarajevo'),
( 'Selma Selmić', 'selma@example.com', '666777888', 'Ul. Patriotske Lige 5, Sarajevo'),
( 'Eldar Eldarić', 'eldar@example.com', '444555666', 'Ul. Hrasnička cesta 30, Sarajevo');

INSERT INTO Automobil (Marka, Model, Godina, Boja, Cijena, ID_Kategorije) VALUES
('Toyota', 'Corolla', 2018, 'Crvena', 50.00,'2'),
('Volkswagen', 'Golf', 2019, 'Plava', 60.00,'1'),
('Ford', 'Fiesta', 2017, 'Bijela', 55.00,'3'),
('Opel', 'Astra', 2016, 'Siva', 45.00,'4'),
('Honda', 'Civic', 2020, 'Crna', 65.00,'7'),
('Renault', 'Clio', 2019, 'Crvena', 55.00,'6'),
('Hyundai', 'i30', 2018, 'Siva', 60.00,'5'),
('Kia', 'Sportage', 2021, 'Plava', 70.00,'8'),
('Nissan', 'Qashqai', 2019, 'Bijela', 65.00,'2'),
('Peugeot', '208', 2020, 'Crvena', 55.00,'7'),
('Citroen', 'C3', 2017, 'Žuta', 50.00,'3'),
('Mazda', '3', 2018, 'Crna', 60.00,'1'),
('BMW', '3 Series', 2019, 'Plava', 75.00,'8'),
('Mercedes-Benz', 'A-Class', 2020, 'Siva', 80.00,'1'),
('Audi', 'A3', 2018, 'Crna', 70.00,'1');

INSERT INTO Zaposlenik ( Ime, Email, Telefon, Pozicija ) VALUES
( 'Amila Ahmetović', 'amila@example.com', '123456789', 'Administrator'),
( 'Adnan Adnanović', 'adnan@example.com', '987654321', 'Menadžer'),
( 'Lejla Ljubović', 'lejla@example.com', '555444333', 'Recepcioner'),
( 'Ahmed Ahmedić', 'ahmed@example.com', '777888999', 'Vozač'),
( 'Amir Amirčić', 'amir@example.com', '111222333', 'Recepcioner'),
( 'Emina Eminagić', 'emina@example.com', '444555666', 'Administrator'),
( 'Adisa Adisić', 'adisa@example.com', '888999000', 'Menadžer');

INSERT INTO Najam (ID_Klijenta ,ID_Automobila ,ID_Zaposlenika ,ID_Statusa, DatumPocetkaNajma, DatumZavrsetkaNajma, UkupnaCijena) VALUES
('1','1','1','1', '2024-05-01', '2024-05-05', 200.00),
( '2','2','2','2','2024-05-02', '2024-05-06', 240.00),
( '3','3','3','1','2024-05-03', '2024-05-07', 220.00),
('4','4','5','2', '2024-05-04', '2024-05-08', 260.00),
( '5','5','6','1','2024-05-05', '2024-05-09', 280.00),
('6','6','1','2','2024-05-06', '2024-05-10', 300.00),
('7','7','7','1','2024-05-07', '2024-05-11', 320.00),
('8','8','2','2', '2024-05-08', '2024-05-12', 340.00),
('9','9','3','1','2024-05-09', '2024-05-13', 360.00),
('10','10','5','2', '2024-05-10', '2024-05-14', 380.00),
('11','11','6','1', '2024-05-11', '2024-05-15', 400.00),
('12','12','3','2', '2024-05-12', '2024-05-16', 420.00),
('13','13','2','1', '2024-05-13', '2024-05-17', 440.00),
('14','14','7','3', '2024-05-14', '2024-05-18', 460.00),
('15','15','1','3','2024-05-15', '2024-05-19', 480.00);

INSERT INTO Plaćanje (ID_Najma, Iznos, DatumPlaćanja) VALUES
('1', 200.00, '2024-05-05'),
( '2',240.00, '2024-05-06'),
( '3',220.00, '2024-05-07'),
('4', 260.00, '2024-05-08'),
( '5',280.00, '2024-05-09'),
( '6',300.00, '2024-05-10'),
( '7',320.00, '2024-05-11'),
( '8',340.00, '2024-05-12'),
( '9',360.00, '2024-05-13'),
( '10',380.00, '2024-05-14'),
( '11',400.00, '2024-05-15'),
( '12',420.00, '2024-05-16'),
( '13',440.00, '2024-05-17'),
( '14',460.00, '2024-05-18'),
( '15',480.00, '2024-05-19');

INSERT INTO Oštećenja (ID_Najma, Opis, Trošak,  DatumPopravke) VALUES
('14', 'Oštećenje na zadnjem braniku', 200.00,  '2024-05-12'),
('15', 'Oštećenje na lijevim vratima', 240.00,  '2024-10-19');


INSERT INTO StatusNajma ( NazivStatusa) VALUES
( 'iznajmljen'),
( 'vraćen'),
( 'na popravci');


INSERT INTO KategorijaAutomobila ( NazivKategorije) VALUES
( 'Mali gradski automobil'),
( 'Luksuzni automobil'),
( 'Sportski automobil'),
( 'Krosover'),
( 'SUV'),
( 'Kabriolet'),
( 'EV'),
( 'Porodični automobil');