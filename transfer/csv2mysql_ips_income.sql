use ttr_hims;

TRUNCATE TABLE ips_income ;

LOAD DATA LOCAL INFILE 'ips_income.csv'
REPLACE INTO TABLE `ips_income`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

quit
