# Marco Picchillo - 13/02/2019

#Task1
SELECT UPPER(PatientName) from patient
WHERE PatientAddress2 = 'Edinburgh';

#Task2
SELECT InvoiceNo, DoctorName FROM invoice
WHERE Total >= 62 AND Total <=140;

#Task3
SELECT InvoiceNo, DoctorName FROM invoice
WHERE Total >= 62 AND Total <=140
ORDER BY Total DESC;

#Task4
SELECT PatientID, SUM(Total) AS 'BALANCE, £'
FROM invoice
WHERE PatientID = 'F129'
GROUP BY PatientID;

#Task5
SELECT COUNT(PatientID) AS 'Dunfermline Numbers'
FROM patient
WHERE PatientAddress2 = 'Dunfermline'
GROUP BY PatientAddress2;

#Task6
SELECT FORMAT(AVG(Total),2) AS 'Average Charges, £'
FROM invoice;

#Task7
SELECT DISTINCT DoctorName FROM invoice;

#Task8
SELECT PatientName FROM patient
WHERE PatientTelNo LIKE '01592%';

#Task9
SELECT DoctorName, SUM(Total) AS 'Tretment Revenue' FROM invoice
GROUP BY DoctorName ASC;

#Task10
SELECT patient.PatientName AS 'Patient', FORMAT(SUM(invoice.Total),2) AS 'Balance, £'
FROM patient, invoice
WHERE patient.PatientID = 'F125' AND invoice.PatientID = 'F125'
GROUP BY patient.PatientName;
