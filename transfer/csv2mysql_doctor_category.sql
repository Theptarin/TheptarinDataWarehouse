use ttr_hims;

TRUNCATE TABLE doctor_category ;

LOAD DATA LOCAL INFILE 'doctor_category.csv'
REPLACE INTO TABLE `doctor_category`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
