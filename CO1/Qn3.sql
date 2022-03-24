3a> alter table Marksheet add Grade varchar(2);
  > desc Marksheet

3b> alter table Marksheet drop column Sub2;
  > desc Marksheet

3c> alter table Student add phone_no int;
  > alter table Student add constraint phno check(length(phone_no)=10);
  > insert into Student values(4,'Prejin','Kallara',9833880838);
  > select * from Student;

 O/P
-----

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB2                                               NUMBER(38)
 SUB3                                               NUMBER(38)
 GRADE                                              VARCHAR2(2)



 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB3                                               NUMBER(38)
 GRADE                                              VARCHAR2(2)


   ROLL_NO SNAME                SADDRESS               PHONE_NO
---------- -------------------- -------------------- ----------
         1 Rahul                Pattom
         2 Sachin               Ambalam Mukku
         3 Saurav               Nalanchira
         4 Prejin               Kallara              9833880838

