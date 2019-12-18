#Marco Picchillo

DROP TABLE IF EXISTS consultation_session;
DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS treatment;

CREATE TABLE treatment
(
  procedureCode char(6) NOT NULL,
  procedureDescription char(20),
  procudereCost decimal(2) NOT NULL,

  PRIMARY KEY(procedureCode)
);

CREATE TABLE patient
(
  patientID char(4) NOT NULL,
  patientName char(20),
  patientAddress1 char(20),
  patientAddress2 char(20),
  patientPostcode char(8) NOT NULL,
  patientTelNo char(20),

  PRIMARY KEY(patientID)
);

CREATE TABLE invoice
(
  invoiceNo int(6) AUTO_INCREMENT,
  patientID char(4),
  consultationDate date,
  doctorName char(20) NOT NULL,
  total decimal(2),

  PRIMARY KEY(invoiceNo),
  FOREIGN KEY(patientID)REFERENCES patient(patientID)
);

CREATE TABLE consultation_session
(
  invoiceNo int(6),
  procedureCode char(6),

  PRIMARY KEY(invoiceNo, procedureCode),
  FOREIGN KEY(invoiceNo)REFERENCES invoice(invoiceNo),
  FOREIGN KEY(procedureCode)REFERENCES treatment(procedureCode)
);