#!/bin/bash
cd /var/www/service/TheptarinDataWarehouse/transfer/
sh Db2MySQL.sh patient
sh Db2MySQL.sh lab_request
sh Db2MySQL.sh appointment_doctor
