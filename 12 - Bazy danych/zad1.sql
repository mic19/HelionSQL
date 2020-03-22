
/*
Ka¿da osoba musi podaæ imiê i nazwisko oraz adres e-mail i numer telefonu.
Wiêkszoœæ osób mieszka w Katowicach. Wiek i p³eæ, tak jak nazwa miasta s¹
informacjami opcjonalnymi. Osoby musz¹ siê rejestrowaæ podaj¹c niepowtarzalny
5-znakowy kod promocyjny.
*/

DROP TABLE Klienci;

CREATE TABLE Klienci(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Name VARCHAR(50) NOT NULL,
	Surname VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL CHECK (Email LIKE '%[@]%[.]%'),
	PhoneNumber VARCHAR(9) NOT NULL CHECK (PhoneNumber LIKE '_________'),
	City VARCHAR(50) DEFAULT 'Katowice',
	BirthDate DATE CHECK (BirthDate < DATEADD(YEAR, -18, GETDATE())),
	Sex VARCHAR(1) CHECK (Sex IN ('M', 'F')),
	Code VARCHAR(5) UNIQUE CHECK (Code LIKE '_____')
);

INSERT INTO Klienci (Name, Surname, Email, PhoneNumber, City, BirthDate, Sex, Code)
VALUES('Philip', 'Fry', 'fry@gmail.com', '222999333', 'New New York', '1980-10-10', 'M', '23120');

INSERT INTO Klienci (Name, Surname, Email, PhoneNumber, BirthDate, Sex, Code)
VALUES('Leela', 'Leela', 'leela@gmail.com', '123212121', NULL, 'F', '23121');

INSERT INTO Klienci (Name, Surname, Email, PhoneNumber, City, BirthDate, Sex, Code)
VALUES('Bojack', 'Horseman', 'horseman@gmail.com', '332000000', NULL, NULL, 'M', '12220');

/*
INSERT INTO Klienci (Name, Surname, Email, PhoneNumber, City, BirthDate, Sex, Code)
VALUES('Any', 'Any', 'aaa@gmailcom', '332000010', NULL, NULL, 'M', '12221');

INSERT INTO Klienci (Name, Surname, Email, PhoneNumber, City, BirthDate, Sex, Code)
VALUES('Any', 'Any', 'aaa@gmail.com', '332000010', NULL, NULL, 'M', '122');
*/

SELECT * FROM Klienci;