#!/bin/bash
db_ip=10.1.99.2
table_name=$1

tb=`date '+%D %T'`
java Db2Csv $db_ip $table_name.sql $table_name.csv >> Db2.log
mysql< csv2mysql_$table_name.sql
te=`date '+%D %T'`
echo "$tb , Db2MySQL.sh transfer from $db_ip , $te , transfer to $table_name complete" >> Db2MySQL.log

#--------------------------------------------------------------------------------------------------------------------------------------------------#
# ตัวอย่างคำสั่งโอนข้อมูล สมมุติว่า AS400 ip 10.1.99.2 table MySQL ชื่อ patient
# sh Db2MySQL.sh 10.1.99.2 patient
#--------------------------------------------------------------------------------------------------------------------------------------------------#
