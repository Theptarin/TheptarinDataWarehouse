use ttr_hims;

TRUNCATE TABLE inv_patient ;

LOAD DATA LOCAL INFILE 'inv_patient.csv'
REPLACE INTO TABLE `inv_patient`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
