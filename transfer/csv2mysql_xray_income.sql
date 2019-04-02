use ttr_hims;

TRUNCATE TABLE xray_income ;

LOAD DATA LOCAL INFILE 'xray_income.csv'
REPLACE INTO TABLE `xray_income` FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE `xray_income` SET update_time=NOW();

quit