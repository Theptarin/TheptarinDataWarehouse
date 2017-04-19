cd /var/www/service/TheptarinDataWarehouse/script
tb=`date '+%D %T'`
java Db2Csv 10.1.99.2 lab_request.sql lab_request.csv
mysql< csv2mysql_lab_request.sql
te=`date '+%D %T'`
echo "$tb , mysql@lab_request.sh working transfer , $te , mysql@lab_request.sh complete transfer " >> /var/www/service/TheptarinDataWarehouse/script/csv_mysql.log
