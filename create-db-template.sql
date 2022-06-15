CREATE DATABASE library_management_system;
CREATE TABLE Student(Stud_no int,Stud_name VARCHAR(45));
CREATE TABLE Membership(Mem_no int,Stud_no int PRIMARY KEY);
CREATE Table Book_(Book_no int,Book_name VARCHAR(56),author VARCHAR(45));
CREATE TABLE Iss_rec(Iss_no int , Iss_date DATE,Mem_no int,Book_no int);
INSERT into Student VALUES(1000,'Prashant');

INSERT into Student VALUES(1003,'Arav');

INSERT into Student VALUES(1004,'Priya');
INSERT into Student VALUES(1002,'Parth');
INSERT into Student VALUES(1001,'Parul');
INSERT into Student VALUES(1005,'Riya');
INSERT into Student VALUES(1006,'Rahul');
INSERT into Student VALUES(1007,'Rohan');
INSERT into Student VALUES(1008,'Raghav');
INSERT into Student VALUES(1009,'Varun');
INSERT into Student VALUES(1010,'Veer');
INSERT into Membership VALUES(101,1000);
INSERT into Membership VALUES(102,1001);
INSERT into Membership VALUES(103,1002);
INSERT into Membership VALUES(104,1003);
INSERT into Membership VALUES(105,1004);
INSERT into Membership VALUES(106,1005);
INSERT into Membership VALUES(107,1006);
INSERT into Membership VALUES(108,1007);
INSERT into Membership VALUES(109,1008);
INSERT into Membership VALUES(110,1009);
INSERT INTO Book_ VALUES (1111,'Three man in a boat','jerome k jerome');
INSERT INTO Book_ VALUES (1112,'The History of Tom Jones',' Henry Fielding');
INSERT INTO Book_ VALUES (1113,'Pride and Prejudice',' Jane Austen ');
delete from  Book_ where author='jane austen';

INSERT INTO Book_ VALUES (1114,'The Red and the Black',' Stendhal '); 
INSERT INTO Book_ VALUES (1115,'Le Père Goriot',' Honoré de Balzac '); 
INSERT INTO Book_ VALUES (1116,'David Copperfield','  Charles Dickens '); 
INSERT INTO Book_ VALUES (1117,'Madame Bovary',' Gustave Flaubert');
 INSERT INTO Book_ VALUES (1118,'Moby-Dick',' Herman Melville ');
  INSERT INTO Book_ VALUES (1119,'War and Peace ',' Tolstoy');
  INSERT INTO Book_ VALUES (1110,'The Diary ','Anne Frank');
INSERT INTO Iss_rec VALUES (11,'2019-01-03',101,1111);

INSERT INTO Iss_rec VALUES (12,'2019-01-04',102,1112);

INSERT INTO Iss_rec VALUES (13,'2019-01-05',103,1113);
INSERT INTO Iss_rec VALUES (14,'2019-02-15',104,1114);
INSERT INTO Iss_rec VALUES (15,'2019-02-20',106,1115);
INSERT INTO Iss_rec VALUES (16,'2019-03-08',107,1116);
INSERT INTO Iss_rec VALUES (17,'2019-04-03',105,1117);
INSERT INTO Iss_rec VALUES (18,'2019-06-21',108,1118);
INSERT INTO Iss_rec VALUES (19,'2019-06-23',109,1119);
INSERT INTO Iss_rec VALUES (20,'2019-08-05',110,1110);
SELECT *from student;
SELECT *from Membership;
SELECT *from Book_;
SELECT *from iss_rec;
SELECT *from student UNION SELECT *from Membership;
SELECT stud_name,mem_no from student ,  membership ;
select s.stud_name, m.mem_no from student s, membership m where m.stud_no=s.stud_no;
 select i.iss_no, s.stud_name, b.book_name from iss_rec i, membership m, student s, book_ b where i.mem_no=m.mem_no and m.stud_no=s.stud_no and  i.iss_date=curdate();
select *from student where stud_no in(select stud_no from membership where mem_no in (select mem_no from iss_rec where book_no in(select book_no from book_ where author="Anne frank")));
 select s.stud_no, count(i.book_no) from student s, membership m, book_ b,  iss_rec i where s.stud_no=m.stud_no and b.book_no=i.book_no group by s.stud_no;
select book_name from book_ where book_no in (select book_no from iss_rec where mem_no in(select mem_no from membership where stud_no in(select stud_no from student where stud_no=1005)));
delete from book_ where book_no in (select book_no from iss_rec where iss_date=curdate());
create view view_ as select i.iss_no ,i.iss_date , s.stud_name , b.book_name  from iss_rec i , student s, book_ b , membership m where s.stud_no=m.stud_no and  b.book_no=i.book_no and  m.mem_no=i.mem_no;





  

  



