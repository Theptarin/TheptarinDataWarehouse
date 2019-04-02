use ttr_hims;

TRUNCATE TABLE lab_request ;

LOAD DATA LOCAL INFILE 'lab_request.csv'
REPLACE INTO TABLE `lab_request`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE lab_request SET update_time=NOW();

quit
