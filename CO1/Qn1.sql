SQL> create table Student(Roll_no int,Sname varchar(20),SAddress varchar(20),constraint stu primary key(Roll_no));
SQL> create table Marksheet(Rollno int,Sub1 int,Sub2 int,Sub3 int,constraint mark foreign key(Rollno) references Student(Roll_no));

SQL> desc Student;
SQL> desc Marksheet;



 O/P
-----

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 SNAME                                              VARCHAR2(20)
 SADDRESS                                           VARCHAR2(20)


Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB2                                               NUMBER(38)
 SUB3                                               NUMBER(38)

