cd /home/administrator/it_programs/transfer
tb=`date '+%D %T'`
java Db2Csv 10.1.0.1 pat_admit.sql pat_admit.csv
java Db2Csv 10.1.0.1 pat_discharge.sql pat_discharge.csv
mysql< csv2mysql_ipd_admit.sql
te=`date '+%D %T'`
echo "$tb , mysql@ipd_admit.sh working transfer , $te , mysql@ipd_admit.sh complete transfer " >> /home/administrator/it_programs/transfer/csv_mysql.log
