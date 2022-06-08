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