use ttr_hims;

TRUNCATE TABLE doctor_name ;

LOAD DATA LOCAL INFILE 'doctor_name.csv'
REPLACE INTO TABLE `doctor_name`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
