
CREATE SCHEMA Produkcja;

CREATE TABLE Produkcja.Towary(
	ID INT IDENTITY,
	Nazwa VARCHAR(50),
	Cena MONEY,
	DataZakupu DATE
);

/*
ALTER TABLE Produkcja.Towary
ADD Model VARCHAR(5) CONSTRAINT CK_TowaryModel CHECK (Model IN ('B1', 'A3', 'X54'));
*/

CREATE TABLE Produkcja.Model(
	IDModelu INT PRIMARY KEY IDENTITY(1, 1),
	Nazwa VARCHAR(10)
);

INSERT INTO Produkcja.Model (Nazwa)
VALUES ('B1'), ('A3'), ('X54');

ALTER TABLE Produkcja.Towary
ADD IDModelu INT REFERENCES Produkcja.Model;



