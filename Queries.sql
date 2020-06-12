--*********************************************** To create the datebase **************************************************

--create database hospital management system;

/*use hospital management system
create table doctor (
	doctor_id int primary key,
	name nvarchar (max) ,
	age int,
	doctor_type varchar(max), 
	address nvarchar(max),
	doctor_no nvarchar(max),
	);
create table Patient (
	patient_id int primary key,
	patient_name nvarchar (max) ,
	patient_no nvarchar(max),
	age int,
	patient_type nvarchar(max),
	disease nvarchar(max),
 	doctor_id int foreign key references Doctor(doctor_id),
 	room_No int foreign key references Room(room_No),
	);
create table Room(
        room_NO int primary key,
	room_type nvarchar(max),
        );
create table Bill(
        bill_no int primary key,
 	patient_id int foreign key references Patient(Patient_id),
	patient_name  nvarchar(max),
	patient_No nvarchar(max),
        );
create table Laboratory (
       lab_no int primary key,
	patient_id int foreign key references Patient(Patient_id),
 	doctor_id int foreign key references Doctor(doctor_id),
	date date,
	amunt nvarchar(max),
	);
        */


/*
use hospital management system

-- *******************************************************insertion **************************************************
--_______________________________to insert the doctor___________________________________

INSERT INTO doctor VALUES(1, 'mahmoud' , 34 ,'male' ,'cairo' ,010348459677 )
INSERT INTO doctor VALUES(2, 'mosa' , 54 ,'ةmale' ,'cairo' ,01443645877 )
INSERT INTO doctor VALUES(3, 'ali' , 22 ,'male' ,'Alex' ,012343545634)
INSERT INTO doctor VALUES(4, 'aya' , 35 ,'female' ,'cairo' ,01053745678)
INSERT INTO doctor VALUES(5, 'omar' , 32 ,'male' ,'tanta' ,01035467586)
INSERT INTO doctor VALUES(6, 'naha' , 22 ,'female' ,'Alex' ,010205367845 )
INSERT INTO doctor VALUES(7, 'osamaa' , 22 ,'male' ,'Zagazig' ,01020433564 )
INSERT INTO doctor VALUES(8, 'Omnia' , 35 ,'female' ,'cairo' ,01053455677)
INSERT INTO doctor VALUES(9, 'ahmed' , 35 ,'male' ,'kafr elshiehk' ,01045789877)
INSERT INTO doctor VALUES(10, 'ali' , 35 ,'male' ,'kafr elshiehk' ,01053455677)
INSERT INTO doctor VALUES(11, 'Omnia' , 27 ,'female' ,'kafr elshiehk' ,01052334557)
INSERT INTO doctor VALUES(12, 'Omnia' , 44 ,'female' ,'cairo' ,01053455677)
INSERT INTO doctor VALUES(13, 'ahmed' , 35 ,'male' ,'kafr elshiehk' ,01045789877)
INSERT INTO doctor VALUES(14, 'ali' , 45 ,'male' ,'kafr elshiehk' ,01053455677)
INSERT INTO doctor VALUES(15, 'Omnia' , 37 ,'female' ,'kafr elshiehk' ,01052334557)

--_______________________________insert into Room ___________________________________

INSERT INTO Room VALUES(1,'first')
INSERT INTO Room VALUES(2,'second ')
INSERT INTO Room VALUES(3,'first ')
INSERT INTO Room VALUES(4,'second')
INSERT INTO Room VALUES(5,'second')
INSERT INTO Room VALUES(6,'third')
INSERT INTO Room VALUES(7,'third')
INSERT INTO Room VALUES(8,'first')
INSERT INTO Room VALUES(9,'first')
INSERT INTO Room VALUES(10,'third')

--_______________________________insert into patient ___________________________________

INSERT INTO Patient VALUES(1,'hend hatem',01023847567,23,'female','Cancer',3,3)
INSERT INTO patient VALUES(2,'aya mohamed',01123447567,23,'female','Cancer',4,3)
INSERT INTO patient VALUES(3,'ahmed mohamed',0102383457,25,'male','Heart Disease',5,3)
INSERT INTO patient VALUES(4,'ali hashem',010238345667,23,'male','Heart Disease',13,8)
INSERT INTO patient VALUES(5,'ahmed ali',0102345445,28,'male','Infectious Diseases',10,9)
INSERT INTO patient VALUES(6,'ahmed ali',010233456,22,'male','Allergies & Asthma',12,6)
INSERT INTO patient VALUES(7,'asmaa sabry',01023847567,12,'female','colon',2,10)
INSERT INTO patient VALUES(8,'hend hashem',010238234457,30,'female','Colon',14,2)
INSERT INTO patient VALUES(9,'hatem hashem',01023447567,23,'male','Cancer',3,7)
INSERT INTO patient VALUES(10,'mohamed hashem',01022344567,27,'male','Liver disease',6,4)
INSERT INTO patient VALUES(11,'aya ali',010234544512,21,'female','Arthritis',15,5)
INSERT INTO patient(patient_id,patient_name,patient_no,age,patient_type,disease,doctor_id) 
VALUES(13,'aya ahmed',010234544512,21,'female','Cancer',15)
INSERT INTO patient VALUES(14,'hend hashem',010238234457,30,'female','Colon',14,2)
INSERT INTO patient VALUES(15,'hatem hashem',01023447567,23,'male','Cancer',3,7)

--_______________________________insert into Laboratory ___________________________________

INSERT INTO Laboratory VALUES (1,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (2,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (3,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (4,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (5,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (6,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (7,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (8,5,10,'04-12-2020',2)
INSERT INTO Laboratory VALUES (9,8,14,'04-12-2011',3)
INSERT INTO Laboratory VALUES (10,10,6,'03-01-2010',7)
INSERT INTO Laboratory VALUES (11,5,11,'04-12-2007',4)
INSERT INTO Laboratory VALUES (12,4,13,'04-12-2000',3)
INSERT INTO Laboratory VALUES (14,9,4,'07-05-2000',3)
INSERT INTO Laboratory VALUES (15,7,12,'05-11-2000',2)

--_______________________________insert into Bill ___________________________________

INSERT INTO Bill VALUES(1,1,'hend hatem',1023847567)
INSERT INTO Bill VALUES(2,5,'ahemd ali',102345445)
INSERT INTO Bill VALUES(3,11,'aya ali',10234544512)
INSERT INTO Bill VALUES(5,6,'ahmed ali',	010233456)
INSERT INTO Bill VALUES(6,12,'doaa hatem',0123523465)
INSERT INTO Bill VALUES(7,1,'hend hatem',01023847567)
INSERT INTO Bill VALUES(8,2,'aya mohamed',01123447567)
INSERT INTO Bill VALUES(9,5,'ahmed ali',	0102345445)
INSERT INTO Bill VALUES(10,1,'hend hatem',01023847567)
INSERT INTO Bill VALUES(11,10,'mohamed hashem',01022344567)


-- *********************************************************************************************************

--_______________________________20 different function________________________________________

SELECT min(age) AS mingeAge FROM Patient;
SELECT max(age) AS maxAge FROM Patient;
select date from Laboratory where year(date) = 2019;
SELECT date from Laboratory where MONTH(date)  = 5; 
SELECT date from Laboratory where day(date) = 10;
SELECT DATEPART(year, date) AS DatePartInt  from Laboratory;
SELECT DATEPART(DAY, date) AS DatePartInt  from Laboratory;
SELECT DATEPART(MONTH, date) AS DatePartInt  from Laboratory;
SELECT DATENAME(year, date) AS DatePartString from Laboratory;
SELECT DATENAME(MONTH, date) AS DatePartString from Laboratory;
SELECT DATENAME(DAY, date) AS DatePartString from Laboratory;
SELECT UPPER(Patient_name) from Patient;
SELECT lower(Patient_type) from Patient;
SELECT difference(Patient_name,patient_no) from Patient;
SELECT LEN(name) from doctor;
SELECT REVERSE(name) from doctor;
SELECT STR(doctor_id) from doctor;
SELECT concat(Patient_name,disease) from Patient;
SELECT ISNULL(Null, room_No) from Patient;
SELECT DISTINCT bill_no FROM Bill;


--********************************************************************************************************



--____________________ 3 types of subquery ___________________________

--___________________ using ( EXPRESSION ) in the impelemntation of sub query__________________

select patient_id from Patient 
	where patient_name = 'aya mohamed';

--___________________ using ( IN ) in the impelemntation of sub query__________________

select patient_id from Patient where patient_name = 'aya mohamed';
          select patient_id from Patient
          where doctor_id in (
          select patient_id from Patient
          where patient_id > 6000);

--___________________ using ( ANY ) in the impelemntation of sub query__________________
select patient_id from Patient
          where doctor_id = any (
          select patient_id from Patient
          where patient_id < 6000);


--****************************************************************************************************

--________________________________ Select Statements using Count and Group Functions )________________________________ 
select patient_name , count(Patient_id) as patientCount
       from (select distinct patient_name, patient_id from Bill) as a
       group by patient_name
       having count(patient_id)>1;

select doctor_id , count(Patient_id) as patientCount
       from (select distinct doctor_id, patient_id from Patient) as a
       group by doctor_id
       having count(patient_id)>1;


--****************************************************************************************************
--__________________________________5 DIFFERENT TYPE OF JOINS ______________________________________________

SELECT patient.patient_id, doctor.name, doctor.address
       FROM patient
       INNER JOIN doctor
	   ON doctor.doctor_id=patient.patient_id;

SELECT *
       FROM Patient
       LEFT JOIN doctor
       ON doctor.doctor_id=patient.patient_id;


SELECT Laboratory.doctor_id,Laboratory.lab_no,Laboratory.date ,Patient.patient_name,Patient.patient_type
       FROM Laboratory
       LEFT JOIN Patient ON Laboratory.lab_no = Patient.patient_id
       ORDER BY Laboratory.lab_no;


SELECT A.name AS name1, B.name AS name2, A.address
       FROM doctor A, doctor B
       WHERE A.doctor_id <> B.doctor_id
       AND A.address = B.address
       ORDER BY A.address;

SELECT Patient.patient_id, doctor.name, doctor.address
       FROM Patient
       RIGHT JOIN doctor ON Patient.doctor_id = doctor.doctor_id
       ORDER BY Patient.patient_id;


--*************************************************************************************************************

--________________________________ UPDATES _____________________________

UPDATE doctor
SET name = 'Alfred Schmidt',address = 'kafr elshiehk'
WHERE doctor_id = 1;

UPDATE Patient
SET patient_name = 'Alfred Schmidt',disease = 'cancer'
WHERE patient_id = 5;

UPDATE Bill
SET patient_name= 'Alfred Schmidt'
WHERE bill_no = 1;

UPDATE doctor
SET name = 'ahmed Schmidt',address = 'tanta'
WHERE doctor_id = 8;

UPDATE Laboratory
SET patient_id = 24,date= '07-11-2015'
WHERE lab_no=8;

--________________________________ DELETE STATEMENT____________________________
DELETE FROM Patient WHERE patient_name='Alfreds Futterkiste';
DELETE FROM doctor WHERE name='Alfred Schmidt';
DELETE FROM Patient WHERE patient_name='tanta';
DELETE FROM Laboratory WHERE date='2000-04-12';
DELETE FROM Bill WHERE patient_name='mohamed hashem';



























 