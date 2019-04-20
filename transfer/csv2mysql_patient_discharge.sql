use ttr_hims;

TRUNCATE TABLE patient_discharge ;

LOAD DATA LOCAL INFILE 'patient_discharge.csv'
REPLACE INTO TABLE `patient_discharge`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
