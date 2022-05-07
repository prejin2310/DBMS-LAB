insert into department values(1001,'MCA');
insert into department values(1002,'MBA');
insert into department values(1003,'Adm-Office');

mysql> select * from department;

 depid  name       
 ------ ------------
  1001  MCA        
  1002  MBA        
  1003  Adm-Office 
  
  insert into company values(8001,'MCET','Trivandrum',8);
insert into company values(8002,'IT Solutions','Eranakulam',5);
insert into company values(8003,'JS Gold','Aluva',3);

mysql> select * from company;

 cmpid  name          city        no_emp 
-----------------------------------------
  8001  MCET          Trivandrum       8 
  8002  IT Solutions  Eranakulam       5 
  8003  JS Gold       Aluva            3 


insert into employee values(5001,'Arun',8002,'clerk',15000,'Eranakulam');
insert into employee values(5002,'Deepa',8001,'Ass-Prof',32000,'Trivandrum');
insert into employee values(5003,'Jasmine',8003,'Salesgirl',12000,'Aluva');

mysql> select * from employee;

 empid  name     cmpid  desig      salary  city       
------------------------------------------------------
  5001  Arun      8002  clerk       15000  Eranakulam 
  5002  Deepa     8001  Ass-Prof    32000  Trivandrum 
  5003  Jasmine   8003  Salesgirl   12000  Aluva      


insert into students values(001,'Akshay','MCA','Trivandum',300,100,1001);
insert into students values(002,'Arunima','MBA','Kollam',270,95,1002);
insert into students values(003,'Krish','MCA','Trivandrum',200,83,1001);
insert into students values(004,'Nevil','MBA','Aluva',150,50,1002);

mysql> select * from student;

 stdid  name     class  city        tmarks  per   depid 
--------------------------------------------------------
     1  Akshay   MCA    Trivandum      300   100   1001 
     2  Arunima  MBA    Kollam         270    95   1002 
     3  Krish    MCA    Trivandrum     200    83   1001 
     4  Nevil    MBA    Aluva          150    50   1002 


insert into staff values(5002,'Deepa',1001,'Ass-Prof',32000,'Trivandrum');
insert into staff values(6001,'Samuel',1001,'Ass-Prof',31000,'Kollam');
insert into staff values(6002,'Aleena',1002,'Prof',38000,'Aluva');
insert into staff values(6003,'Rojin',1003,'clerk',18000,'Aluva');

mysql> select * from staff;

 stfid  name    depid  desig     salary  city       
----------------------------------------------------
  5002  Deepa    1001  Ass-Prof   32000  Trivandrum 
  6001  Samuel   1001  Ass-Prof   31000  Kollam     
  6002  Aleena   1002  Prof       38000  Aluva      
  6003  Rojin    1003  clerk      18000  Aluva      
