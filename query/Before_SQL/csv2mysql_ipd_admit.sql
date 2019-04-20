use ttr_mse;

DELETE FROM ipd_admit ;

LOAD DATA LOCAL INFILE '/home/administrator/it_programs/transfer/pat_admit.csv'
REPLACE INTO TABLE `ipd_admit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/administrator/it_programs/transfer/pat_discharge.csv'
REPLACE INTO TABLE `ipd_admit`FIELDS TERMINATED BY ';'
ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n';

#UPDATE `ipd_admit` SET update_time=NOW();
#เริ่ม length_of_stay = 0 เพื่อกำหนดค่าให้ถูกต้อง
UPDATE  `ipd_admit` SET `length_of_stay` = 0;
#ตรวจสอบวันเวลา admit discharge ให้ถูกต้อง
UPDATE  `ipd_admit` SET `length_of_stay` = ((UNIX_TIMESTAMP(`discharge_date`) + TIME_TO_SEC(`discharge_time`)) - (UNIX_TIMESTAMP(`admit_date`) + TIME_TO_SEC(`admit_date`))) / 60 , `update_time`=NOW() WHERE `pat_status` = '9' AND  ((UNIX_TIMESTAMP(`discharge_date`) + TIME_TO_SEC(`discharge_time`)) - (UNIX_TIMESTAMP(`admit_date`) + TIME_TO_SEC(`admit_date`))) / 60 > 0  ;
UPDATE  `ipd_admit` SET `length_of_stay` = (UNIX_TIMESTAMP(NOW()) - (UNIX_TIMESTAMP(`admit_date`) + TIME_TO_SEC(`admit_date`))) / 60 , `update_time`=NOW() WHERE `pat_status` != '9';
#ลบข้อมูลที่ length_of_stay เป็น 0 เนื่องจาก Error ของ MSE
DELETE FROM `ipd_admit` WHERE `length_of_stay` = 0;
#ปัด length_of_stay เป็น 1440 สำหรับรายการที่เกิน 6 ชม.
UPDATE  `ipd_admit` SET `length_of_stay` = 1440 , `update_time`=NOW() WHERE `length_of_stay` BETWEEN 360 AND 1440;

DELETE FROM `ipd_readmit`;
INSERT INTO `ipd_readmit`
SELECT i.`hn`, i.`discharge_date`, DATE_ADD(`discharge_date`,INTERVAL 28 DAY) AS `re_date`, i.`admit_date`, now() FROM ipd_admit i ;

DELETE FROM `ipd_readmit_icu`;
INSERT INTO `ipd_readmit_icu`
SELECT i.`hn`, i.`out_date`, DATE_ADD(`out_date`,INTERVAL 2 DAY) AS `re_date`, i.`in_date`, now() FROM ipd_transfer i WHERE `room_no` LIKE '3%';

DELETE FROM `ipd_admit_first`;
INSERT INTO `ipd_admit_first`
SELECT `an`, COUNT( `room_no` ) AS `count_room`,(SELECT room_no ORDER BY `in_date` ASC, `in_time` ASC LIMIT 1 ) AS `first_room`, `in_date`, `in_time` , now() FROM `ttr_mse`.`ipd_transfer` AS `ipd_transfer` GROUP BY `an` ORDER BY `an` ASC, `in_date` ASC, `in_time` ASC;

#use theptarin;
#DELETE FROM mse_ipd_admit ;
#use ttr_mse;
#REPLACE INTO `theptarin`.`mse_ipd_admit` 
#SELECT * 
#FROM `ttr_mse`.`ipd_admit` ;
quit
