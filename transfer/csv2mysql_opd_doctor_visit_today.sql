use ttr_hims;

LOAD DATA LOCAL INFILE 'opd_doctor_visit_today.csv'
REPLACE INTO TABLE `opd_doctor_visit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
