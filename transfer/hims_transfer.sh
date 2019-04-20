#!/bin/bash
cd /var/www/service/TheptarinDataWarehouse/transfer/
sh Db2MySQL.sh patient
sh Db2MySQL.sh doctor_category
sh Db2MySQL.sh doctor_specialty
sh Db2MySQL.sh doctor_name
#sh Db2MySQL.sh masprice

sh Db2MySQL.sh opd_doctor_visit

sh Db2MySQL.sh xray_income
sh Db2MySQL.sh inv_patient

sh Db2MySQL.sh patient_discharge
