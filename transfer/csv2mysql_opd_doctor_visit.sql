use ttr_hims;

TRUNCATE TABLE opd_doctor_visit ;

LOAD DATA LOCAL INFILE 'opd_doctor_visit.csv'
REPLACE INTO TABLE `opd_doctor_visit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
