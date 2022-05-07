2b > mysql> select * from student order by class;

 stdid  name      class    city         tmarks   per    depid 
------- --------- -------  ------------ -------- ------ -------
     2  Arunima  MBA    Kollam         270    95   1002 
     4  Nevil    MBA    Aluva          150    50   1002 
     1  Akshay   MCA    Trivandum      300   100   1001 
     3  Krish    MCA    Trivandrum     200    70   1001 


2c> mysql> select * from employee;

 empid  name     cmpid  desig      salary  city       
------------------------------------------------------
  5001  Arun      8002  clerk       15000  Eranakulam 
  5002  Deepa     8001  Ass-Prof    32000  Trivandrum 
  5003  Jasmine   8003  Salesgirl   12000  Aluva      


2d> mysql> select * from staff where salary>=20000;

 stfid  name    depid  desig     salary  city       
----------------------------------------------------
  5002  Deepa    1001  Ass-Prof   32000  Trivandrum 
  6001  Samuel   1001  Ass-Prof   31000  Kollam     
  6002  Aleena   1002  Prof       38000  Aluva      


2e> mysql> select * from students where per between 80 and 90;

 stdid  name   class  city        tmarks  per   depid 
------------------------------------------------------
     3  Krish  MCA    Trivandrum     200    83   1001
