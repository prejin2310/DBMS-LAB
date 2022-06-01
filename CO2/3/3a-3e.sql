 
3a>  mysql> select * from students where class='MCA';

    stdid  name    class  city        tmarks  per   depid 
    -------------------------------------------------------
        1  Akshay  MCA    Trivandum      300   100   1001 
        3  Krish   MCA    Trivandrum     200    83   1001 


3b>  update staff set salary=salary*1.1 where desig='Ass-Prof';
     mysql> select * from staff;

    stfid  name    depid  desig     salary  city       
    ----------------------------------------------------
    5002  Deepa    1001  Ass-Prof   35200  Trivandrum 
    6001  Samuel   1001  Ass-Prof   34100  Kollam     
    6002  Aleena   1002  Prof       38000  Aluva      
    6003  Rojin    1003  clerk      18000  Aluva      


3c> mysql> select * from employee as A join company as B on A.city=B.city;

    empid  name     cmpid  desig      salary  city        cmpid  name          city        no_emp 
    -----------------------------------------------------------------------------------------------
    5002  Deepa     8001  Ass-Prof    32000  Trivandrum   8001  MCET          Trivandrum       8 
    5001  Arun      8002  clerk       15000  Eranakulam   8002  IT Solutions  Eranakulam       5 
    5003  Jasmine   8003  Salesgirl   12000  Aluva        8003  JS Gold       Aluva            3 

3d> SQL> select count(stfid),depid from staff group by depid;

    COUNT(STFID)      DEPID
    ------------ ----------
            1       1003
            2       1001
            1       1002

3e> delete from employee where cmpid in(select employee.cmpid= from company.employee where employee.cmpid=company.cmpid and comapny.no_emp<5);




