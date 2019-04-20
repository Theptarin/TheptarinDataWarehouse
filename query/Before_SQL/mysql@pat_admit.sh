cd /home/administrator/it_programs/transfer
tb=`date '+%D %T'`
java Db2Csv 10.1.0.1 pat_admit.sql pat_admit.csv
mysql< csv2mysql_pat_admit.sql
te=`date '+%D %T'`
echo "$tb , mysql@pat_admit.sh working transfer , $te , mysql@pat_admit.sh complete transfer " >> /home/administrator/it_programs/transfer/csv_mysql.log
