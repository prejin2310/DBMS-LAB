SQL> create table Marksheet(Rollno int,Sub1 int,Sub2 int,Sub3 int,constraint mark foreign key(Rollno
) references Student(Roll_no));

Table created.

SQL> desc Marksheet
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB2                                               NUMBER(38)
 SUB3                                               NUMBER(38)

SQL> insert into Marksheet(Rollno,Sub1,Sub2,Sub3) values(1,78,89,94);

1 row created.

SQL> insert into Marksheet(Rollno,Sub1,Sub2,Sub3) values(2,54,65,77);

1 row created.

SQL> insert into Marksheet(Rollno,Sub1,Sub2,Sub3) values(3,23,78,46);

1 row created.


SQL> select * from Marksheet;

    ROLLNO       SUB1       SUB2       SUB3
---------- ---------- ---------- ----------
         1         78         89         94
         2         54         65         77
         3         23         78         46


SQL> alter table Marksheet add Grade varchar(2);

Table altered.

SQL> desc Marksheet
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB2                                               NUMBER(38)
 SUB3                                               NUMBER(38)
 GRADE                                              VARCHAR2(2)


SQL>  alter table Marksheet drop column Sub2;

Table altered.

SQL> desc Marksheet
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 SUB1                                               NUMBER(38)
 SUB3                                               NUMBER(38)
 GRADE                                              VARCHAR2(2)

