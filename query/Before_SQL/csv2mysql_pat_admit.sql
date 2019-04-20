use ttr_mse;


LOAD DATA LOCAL INFILE '/home/administrator/it_programs/transfer/pat_admit.csv'
REPLACE INTO TABLE `ipd_admit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE `ipd_admit` SET update_time=NOW();

quit
