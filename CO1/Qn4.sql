4a> select Sname,SAddress from Student where SAddress='Pattom';

4b> select sub1+sub3 from Marksheet,Student where Rollno=2 and  Student.Roll_no=Marksheet.Rollno;

4c> select Sname from Student where Roll_no=3;

SQL> update Student set Phone_no=9696912345 where Roll_no=1;
SQL>  update Student set Phone_no=9999912345 where Roll_no=2;
SQL> update Student set Phone_no=9895969798 where roll_no=3;
SQL> select * from Student;

4d> select Phone_no from Student where Sname='Sachin';



 O/P
-----

SNAME                SADDRESS
-------------------- --------------------
Rahul                Pattom


 SUB1+SUB3
----------
       131

SNAME
--------------------
Saurav


   ROLL_NO SNAME                SADDRESS               PHONE_NO
---------- -------------------- -------------------- ----------
         1 Rahul                Pattom               9696912345
         2 Sachin               Ambalam Mukku        9999912345
         3 Saurav               Nalanchira           9895969798



  PHONE_NO
----------
9999912345



