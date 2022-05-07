create table department(depid int primary key,name varchar(20));
create table company(cmpid int primary key,name varchar(20),city varchar(20),no_emp int);
create table employee(empid int primary key,name varchar(20),cmpid int,desig varchar(25),salary int,city varchar(20),foreign key(cmpid) references company(cmpid));
create table staff(stfid int primary key,name varchar(20),depid int, desig varchar(20),salary int,city varchar(20),foreign key(depid) references department(depid));
create table students(stdid int,name varchar(20),class varchar(20),city varchar(20),tmarks int,per int,depid int,foreign key(depid) references department(depid));

desc department;

 Field  Type         Null  Key  Default  Extra 
-----------------------------------------------
 depid  int          NO    PRI  NULL           


 desc company;

 Field   Type         Null  Key  Default  Extra 
------------------------------------------------
 cmpid   int          NO    PRI  NULL           
 name    varchar(20)  YES        NULL           
 city    varchar(20)  YES        NULL           
 no_emp  int          YES        NULL           


 desc employee;

 Field   Type         Null  Key  Default  Extra 
------------------------------------------------
 empid   int          NO    PRI  NULL           
 name    varchar(20)  YES        NULL           
 cmpid   int          YES   MUL  NULL           
 desig   varchar(25)  YES        NULL           
 salary  int          YES        NULL           
 city    varchar(20)  YES        NULL           


 desc staff;

 Field   Type         Null  Key  Default  Extra 
------------------------------------------------
 stfid   int          NO    PRI  NULL           
 name    varchar(20)  YES        NULL           
 depid   int          YES   MUL  NULL           
 desig   varchar(20)  YES        NULL           
 salary  int          YES        NULL           
 city    varchar(20)  YES        NULL           


 desc student;

 Field   Type         Null  Key  Default  Extra 
------------------------------------------------
 stdid   int          YES        NULL           
 name    varchar(20)  YES        NULL           
 class   varchar(20)  YES        NULL           
 city    varchar(20)  YES        NULL           
 tmarks  int          YES        NULL           
 per     int          YES        NULL           
 depid   int          YES   MUL  NULL           
