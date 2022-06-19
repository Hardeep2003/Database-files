SELECT `Name`,usn,phone,address FROM record;
INSERT INTO record VALUES('hardeep',5,778888,'avantika');
SELECT *from record;
INSERT INTO record VALUES('ankush',6,778889,'avantika');
INSERT INTO record VALUES('himesh',7,77888546,'avantika');
INSERT INTO record VALUES('rahul',8,966566669,'shadra');
INSERT INTO record VALUES('gaurav',9,778544555,'avantika');
SELECT *from record; 
INSERT INTO record VALUES('gulshan',10,778544523,'avantika'); 
INSERT INTO record VALUES('kanika',11,778544551,'begumpur');
INSERT INTO record VALUES('Aman',12,888544555,'shiv vihar');
INSERT INTO record VALUES('khushi',13,778544475,'avantika');
INSERT INTO record VALUES('parul',14,778544571,'shiv vihar');
ALTER TABLE record RENAME COLUMN id to usn;
SELECT count(name) from record;
SELECT avg(usn) from record;
SELECT SUM(usn) from record;
SELECT name as verify from record;
SELECT *from record as bca;
SELECT *from record order by name asc;
ALTER TABLE record ADD last_name VARCHAR(34);
ALTER TABLE record MODIFY last_name VARCHAR(34);
SELECT *from record WHERE usn between 1 AND 10 and usn NOT in(4,5,6);
ALTER TABLE record drop lastname;
ALTER TABLE record drop last_name;
SELECT *from record;
SELECT `Name`,usn,phone,address FROM record;
SELECT `D_No`,`Name`,`SSN`,`Address`,`Sex`,`Salary`,`Super_ssn` FROM employee;

SELECT `Name`,usn,phone,address FROM record;
desc record;
ALTER Table record add PRIMARY KEY (usn);

SELECT `Name`,usn,phone,address FROM record; 
SELECT `Name`,usn,phone,address FROM record;
INSERT INTO record VALUES('hardeep',5,778888,'avantika');
SELECT *from record;
INSERT INTO record VALUES('ankush',6,778889,'avantika');
INSERT INTO record VALUES('himesh',7,77888546,'avantika');
INSERT INTO record VALUES('rahul',8,966566669,'shadra');
INSERT INTO record VALUES('gaurav',9,778544555,'avantika');
SELECT *from record; 
INSERT INTO record VALUES('gulshan',10,778544523,'avantika'); 
INSERT INTO record VALUES('kanika',11,778544551,'begumpur');
INSERT INTO record VALUES('Aman',12,888544555,'shiv vihar');
INSERT INTO record VALUES('khushi',13,778544475,'avantika');
INSERT INTO record VALUES('parul',14,778544571,'shiv vihar');
ALTER TABLE record RENAME COLUMN id to usn;
SELECT count(name) from record;
SELECT avg(usn) from record;
SELECT SUM(usn) from record;
SELECT name as verify from record;
SELECT *from record as bca;
SELECT *from record order by name asc;
ALTER TABLE record ADD last_name VARCHAR(34);

ALTER TABLE record MODIFY last_name VARCHAR(34);
SELECT *from record WHERE usn between 1 AND 10 and usn NOT in(4,5,6);
ALTER TABLE record drop lastname;
ALTER TABLE record drop last_name;
SELECT *from record;

SELECT `Name`,usn,phone,address FROM record;


SELECT `D_No`,`Name`,`SSN`,`Address`,`Sex`,`Salary`,`Super_ssn` FROM employee;

SELECT `Name`,usn,phone,address FROM record;
desc record;
ALTER Table record add PRIMARY KEY (usn);

SELECT `Name`,usn,phone,address FROM record;

CREATE DATABASE  Insurance_company;
use Insurance_company;
CREATE TABLE PERSON(driver_id int PRIMARY KEY,Name VARCHAR(50),Address VARCHAR(160));
SELECT * FROM PERSON;
CREATE TABLE CAR(regno VARCHAR(54) PRIMARY KEY, model VARCHAR(99), year int);
SELECT * FROM CAR;
CREATE TABLE accident(report_number  int, acc_date  date, location VARCHAR(56));
CREATE TABLE OWNS(driver_id INT PRIMARY KEY, regno VARCHAR(54));
SELECT * FROM owns;
CREATE Table PARTICIPATED(driver_id int UNIQUE KEY , regno VARCHAR(54), report_number int PRIMARY KEY, damage_amount BIGINT );
SELECT * FROM participated;
ALTER TABLE  accident ADD FOREIGN KEY (report_number) REFERENCES participated(report_number);
UPDATE participated SET damage_amount=damage_amount+1000  WHERE report_number BETWEEN 12 AND 25000 AND regno = 06734;
INSERT INTO accident VALUES(28000,'2021-01-13',"Rohini sector-11 Delhi");
INSERT INTO person VALUES(121,'Shehbaz','Rohini sec-21');
INSERT INTO person VALUES(122,'Shakshi','Rohini sec-18');
INSERT INTO person VALUES(123,'Simran','Rohini sec-21');
INSERT INTO person VALUES(124,'Rahul','Rani Bagh');
INSERT INTO person VALUES(125,'Ankit','Rohini');
INSERT INTO car VALUES(2231,'Alto',2015);
INSERT INTO car VALUES(2232,'Seltas',2015);
INSERT INTO car VALUES(2233,'Aura',2014);
INSERT INTO car VALUES(2234,'Ertiga',2019);
INSERT INTO car VALUES(2235,'Sonet',2018);
INSERT INTO accident VALUES(451,'2020-02-01','karol bagh');
INSERT INTO accident VALUES(452,'2020-12-03','karol bagh');
INSERT INTO accident VALUES(453,'2020-02-11','kamla market');
INSERT INTO accident VALUES(454,'2021-05-21','Avantika');
INSERT INTO owns VALUES(121,2231);
INSERT INTO owns VALUES(122,2232);
INSERT INTO owns VALUES(123,2233);
INSERT INTO owns VALUES(124,2234);
INSERT INTO owns VALUES(125,2235);

SELECT COUNT(report_number) FROM accident WHERE acc_date =2002; 
Select count(report_number) as accident_ from ACCIDENT  where  report_number  IN (select report_number from car where model='seltas ' OR model="Alto");












