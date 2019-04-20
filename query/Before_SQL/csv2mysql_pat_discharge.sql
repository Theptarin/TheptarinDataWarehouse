use ttr_mse;


LOAD DATA LOCAL INFILE '/home/administrator/it_programs/transfer/pat_discharge.csv'
REPLACE INTO TABLE `ipd_admit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

UPDATE  `ipd_admit` SET `length_of_stay` = IF(`discharge_date` = 0 , (UNIX_TIMESTAMP(concat(NOW())) - UNIX_TIMESTAMP(concat(`admit_date` , ' ' , `admit_time`))) / 60 ,(UNIX_TIMESTAMP(concat(`discharge_date` ,' ', `discharge_time`)) - UNIX_TIMESTAMP(concat(`admit_date` ,' ' , `admit_time`))) / 60)  , `update_time`=NOW() ;

quit
