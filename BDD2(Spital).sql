CREATE DATABASE spital;
​
CREATE TABLE spital.pacientii (
	id numeric PRIMARY KEY,
    nume text(30) NOT NULL,
    prenume text(30) NOT NULL,
    adresa text(50),
    telefon text(10),
    email text(30));
    
    INSERT INTO spital.pacientii VALUES (
	1, 'Rotaru', 'Cristy', 'Chisinau', '01234567', 'cristy@gmail.com');
     INSERT INTO spital.pacientii VALUES (
	2, 'Babei', 'Alexandru', 'Balti', '012784567', 'alexandru@gmail.com');
     INSERT INTO spital.pacientii VALUES (
	3, 'Condrea', 'Alexia', 'Iasi', '056234567', 'alexia@gmail.com');
     INSERT INTO spital.pacientii VALUES (
	4, 'Kovalski', 'Daria', 'Cahul', '078234567', 'daria@gmail.com');
     INSERT INTO spital.pacientii VALUES (
	5, 'Lupu', 'Cosmin', 'Timisoara', '09244537', 'cosmin@gmail.com');
    
CREATE TABLE spital.doctorii (
	id numeric PRIMARY KEY,
    nume text(30) NOT NULL,
    prenume text(30) NOT NULL,
    departament text(50),
    telefon text(10),
    email text(30));
    
	INSERT INTO spital.doctorii VALUES (
	1, 'Volna', 'Cristian', 'neurologie', '01222527', 'cristian@gmail.com');
    INSERT INTO spital.doctorii VALUES (
	2, 'Balan', 'Lucian', 'cardiologie', '07794527', 'lucian@gmail.com');
    INSERT INTO spital.doctorii VALUES (
	3, 'Ciugureanu', 'Stefan', 'traumatologie', '013334527', 'stefan@gmail.com');
     INSERT INTO spital.doctorii VALUES (
	4, 'David', 'Andreea', 'ginecologie', '013356877', 'andreea@gmail.com');
    
DELETE FROM spital.doctorii
WHERE id = 1;
    
UPDATE spital.doctorii
SET departament = 'neurologie'
WHERE departament = 'chirurgie';

CREATE TABLE spital.inscrieri (
	id numeric PRIMARY KEY,
    pacient_id numeric,
    doctor_id numeric);
    
ALTER TABLE spital.inscrieri
ADD CONSTRAINT FOREIGN KEY (pacient_id) 
REFERENCES spital.pacientii(id);

ALTER TABLE spital.inscrieri
ADD CONSTRAINT FOREIGN KEY (doctor_id) 
REFERENCES spital.doctorii(id);
    
    
CREATE TABLE spital.departamentele (
	id numeric PRIMARY KEY,
    denumire text(30) NOT NULL,
    locatie text(30) NOT NULL,
    nrDePaturi text(50),
    telefon text(10));
    
    INSERT INTO spital.departamentele VALUES (
	1, 'neurologie', 'Bloc-A,etaj-1', '35', '01234527');
    INSERT INTO spital.departamentele VALUES (
	2, 'cardiologie', 'Bloc-A,etaj-2', '28', '07739927');
    INSERT INTO spital.departamentele VALUES (
	3, 'traumatologie', 'Bloc-B,etaj-1', '34', '05532629');
    INSERT INTO spital.departamentele VALUES (
	4, 'ginecologie', 'Bloc-B,etaj-2', '25', '07834787');
    INSERT INTO spital.departamentele VALUES (
	5, 'gastrologie', 'Bloc-A,etaj-3', '18', '01564556');
    
    describe spital.pacientii;
    select * from spital.departamentele;
     select * from spital.pacientii;
     select * from spital.doctorii;
SELECT nume, prenume, departament FROM spital.doctorii
WHERE departament = 'neurologie';