
DROP TABLE AutorzyKsiazki, Autorzy, Ksiazki

CREATE TABLE Autorzy(
	IDAutora INT PRIMARY KEY IDENTITY(1, 1),
	Imie VARCHAR(50) NOT NULL,
	Nazwisko VARCHAR(50) NOT NULL,
)

CREATE TABLE Ksiazki(
	IDKsiazki INT PRIMARY KEY IDENTITY(1, 1),
	Tytul VARCHAR(200) NOT NULL,
	DataWydania DATE
)

CREATE TABLE AutorzyKsiazki(
	IDAutora INT REFERENCES Autorzy,
	IDKsiazki INT REFERENCES Ksiazki
	PRIMARY KEY (IDAutora, IDKsiazki)
)

INSERT INTO Autorzy (Imie, Nazwisko)
VALUES('imie1', 'nazwisko1'),
('imie2', 'nazwisko2'),
('imie3', 'nazwisko3'),
('imie4', 'nazwisko4')

INSERT INTO Ksiazki (Tytul, DataWydania)
VALUES('ksiazka1', '1990-10-10'),
('ksiazka2', NULL),
('ksiazka3', NULL)

INSERT INTO AutorzyKsiazki (IDAutora, IDKsiazki)
VALUES(1, 1),
(2, 1),
(3, 1),
(1, 2),
(4, 3),
(2, 3)
