cd /home/administrator/it_programs/transfer
tb=`date '+%D %T'`
java Db2Csv 10.1.0.1 pat_discharge.sql pat_discharge.csv
mysql< csv2mysql_pat_discharge.sql
te=`date '+%D %T'`
echo "$tb , mysql@pat_discharge.sh working transfer , $te , mysql@pat_discharge.sh complete transfer " >> /home/administrator/it_programs/transfer/csv_mysql.log
