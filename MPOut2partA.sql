# Marco Picchillo - 13/02/2019

INSERT INTO patient
VALUES('F123','Jane Eyre','1959-09-10','123 Thornfield Avenue','Edinburgh','EH21 3RF','0131-123 4567');

INSERT INTO patient
VALUES('F124','Gordon Arthur','1986-07-22','36 Victoria Terrace','Glenrothes','KY13 0LZ','01592-730110');

INSERT INTO patient
VALUES('F125','George Harrison','1942-04-11','88 Krishna View','Rosyth','KY33 9FF','01383-813299');

INSERT INTO patient
VALUES('F126','Marco Picchillo','1986-02-18','3 Netherton Place','Edinburgh','EH47 8JG','07706-000111');


INSERT INTO invoice
VALUES('18732','F123','2009-10-03','G.Cormack',242.00);

INSERT INTO invoice
VALUES('17790','F125','2009-11-12','I.Fraser',38.50);

#PatientID is the key for the table patient and it is not possible
#to leave it blank. Adding an unique PatientID
#and INSERT value into the table patient.

INSERT INTO patient
VALUES('F127','Sophie Berry','1932-10-03','4 Mount Pleasant Terrace','Kirkcadly','','');

INSERT INTO patient
VALUES('F128','Jon Anderssen','1966-11-30','2 Spring gardens','Edinburgh','','0131-6392654');

UPDATE patient
SET PatientName = 'Jane Rochester'
WHERE PatientID = 'F123';

UPDATE patient
SET PatientPostcode = 'EH37 9BC'
WHERE PatientID = 'F128';

UPDATE patient
SET PatientTelNo = '01592-231094'
WHERE PatientID = 'F127';

UPDATE invoice
SET total = 138.50
WHERE InvoiceNo = '17790';