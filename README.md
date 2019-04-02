# TheptarinDataWarehouse
ระบบเพื่อโอนข้อมูลจาก HIMS V5 เข้าฐานข้อมูลเพื่อจัดทำรายงานของโรงพยาบาล

#โครงสร้างโฟลเดอร์ที่เก็บไฟล์
var/www/service/TheptarinDataWarehouse
- transfer สำหรั้บเก็บไฟล์ .sh .sql และ Db2Csv.class
--- Db2MySQL.sh ไฟล์คำสั่งโอนข้อมูลจาก AS400 ไปที่ MySQL ตัวอย่างคำสั่งโอนข้อมูล สมมุติว่า AS400 ip 10.1.99.2 table MySQL ชื่อ patient คำสั่งคือ "sh Db2MySQL.sh 10.1.99.2 patient"
--- Db2Csv.class ไฟล์โปรแกรม JAVA เพื่อใช้ในการแปลงข้อมูลเป็นไฟล์ CSV

- query สำหรับเก็บไฟล์ odb ที่ใช้ช่วยเขียน SQL คัดข้อมูล
