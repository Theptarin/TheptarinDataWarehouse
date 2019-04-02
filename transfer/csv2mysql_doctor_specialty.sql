use ttr_hims;

TRUNCATE TABLE doctor_specialty ;

LOAD DATA LOCAL INFILE 'doctor_specialty.csv'
REPLACE INTO TABLE `doctor_specialty`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
