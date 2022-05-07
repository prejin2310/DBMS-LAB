4a> select * from student as A join staff as B where A.depid=B.depid;

 stdid  name     class  city        tmarks  per   depid  stfid  name    depid  desig     salary  city       
------------------------------------------------------------------------------------------------------------
     3  Krish    MCA    Trivandrum     200    83   1001   5002  Deepa    1001  Ass-Prof   35200  Trivandrum 
     1  Akshay   MCA    Trivandum      300   100   1001   5002  Deepa    1001  Ass-Prof   35200  Trivandrum 
     3  Krish    MCA    Trivandrum     200    83   1001   6001  Samuel   1001  Ass-Prof   34100  Kollam     
     1  Akshay   MCA    Trivandum      300   100   1001   6001  Samuel   1001  Ass-Prof   34100  Kollam     
     4  Nevil    MBA    Aluva          150    50   1002   6002  Aleena   1002  Prof       38000  Aluva      
     2  Arunima  MBA    Kollam         270    95   1002   6002  Aleena   1002  Prof       38000  Aluva      


4b> select depid,name,max(salary) from staff group by depid;

 depid  name    max(salary) 
----------------------------
  1001  Deepa         35200 
  1002  Aleena        38000 
  1003  Rojin         18000 

4c> select staff.name from staff,student where staff.city=student.city and staff.salary>25000;

 name   
--------
 Samuel 
 Deepa  
 Aleena 


4d> select *,max(no_emp) from company;

    cmpid  name  city        no_emp  max(no_emp) 
    ----------------------------------------------
    8001  MCET  Trivandrum       8            8 


 > select * from employee where cmpid=8001;
    
    empid  name   cmpid  desig     salary  city       
    ---------------------------------------------------
    5002  Deepa   8001  Ass-Prof   32000  Trivandrum 
    

4e> update employee set salary=salarysalary*8/100 where city='Eranakulam' and desig='clerk';
    select * from employee;

 empid  name     cmpid  desig      salary  city       
------------------------------------------------------
  5001  Arun      8002  clerk       16200  Eranakulam 
  5002  Deepa     8001  Ass-Prof    32000  Trivandrum 
  5003  Jasmine   8003  Salesgirl   12000  Aluva  
