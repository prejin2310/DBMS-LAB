SQL> create table Student(Roll_no int,Sname varchar(20),SAddress varchar(20),constraint stu primary 
key(Roll_no));

Table created.

SQL> desc Student

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(38)
 SNAME                                              VARCHAR2(20)
 SADDRESS                                           VARCHAR2(20)


SQL> insert into Student(Roll_no,Sname,SAddress) values(1,'Rahul','Pattom');

1 row created.

SQL> insert into Student(Roll_no,Sname,SAddress) values(2,'Sachin','Ambalam Mukku');

1 row created.

SQL> insert into Student(Roll_no,Sname,SAddress) values(3,'Saurav','Nalanchira');

1 row created.

SQL> select * from Student;

   ROLL_NO SNAME                SADDRESS
---------- -------------------- --------------------
         1 Rahul                Pattom
         2 Sachin               Ambalam Mukku
         3 Saurav               Nalanchira

SQL> alter table Student add phone_no int;

Table altered.

SQL> alter table Student add constraint phno check(length(phone_no)=10);

Table altered.

SQL> insert into Student values(4,'Prejin','Kallara',98338);
insert into Student values(4,'Prejin','Kallara',98338)
*
ERROR at line 1:
ORA-02290: check constraint (SCOTT.PHNO) violated


SQL> insert into Student values(4,'Prejin','Kallara',9833880838);

1 row created.

SQL> select * from Student;

   ROLL_NO SNAME                SADDRESS               PHONE_NO
---------- -------------------- -------------------- ----------
         1 Rahul                Pattom
         2 Sachin               Ambalam Mukku
         3 Saurav               Nalanchira
         4 Prejin               Kallara              9833880838



SQL> select * from Student where SAddress='Pattom';

   ROLL_NO SNAME                SADDRESS               PHONE_NO
---------- -------------------- -------------------- ----------
         1 Rahul                Pattom


