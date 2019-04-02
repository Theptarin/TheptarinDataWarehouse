use ttr_hims;

TRUNCATE TABLE masprice ;

LOAD DATA LOCAL INFILE 'masprice.csv'
REPLACE INTO TABLE `masprice`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE masprice SET update_time=NOW();

quit
