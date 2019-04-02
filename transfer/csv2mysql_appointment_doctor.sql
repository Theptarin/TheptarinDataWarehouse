use ttr_hims;

TRUNCATE TABLE appointment_doctor ;

LOAD DATA LOCAL INFILE 'appointment_doctor.csv'
REPLACE INTO TABLE `appointment_doctor`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE appointment_doctor SET update_time=NOW();

quit
