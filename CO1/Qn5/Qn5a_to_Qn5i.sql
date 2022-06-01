5a> select TicketNo,Name from Passenger;
+----------+-------+
| TicketNo | Name  |
+----------+-------+
|      701 | Manu  |
|      702 | Sarah |
|      703 | Arun  |
+----------+-------+

5b>  select Name,sex from Passenger where sex='M';
+------+------+
| Name | sex  |
+------+------+
| Manu | M    |
| Arun | M    |
+------+------+

5c> select Name,age from Passenger where age between 20 and 40;
+-------+------+
| Name  | age  |
+-------+------+
| Manu  |   31 |
| Sarah |   28 |
+-------+------+

5d>  ALTER TABLE CANCELLATION MODIFY SeatNo int(12);

5e> SET FOREIGN_KEY_CHECKS=0;
    delete from Bus where BusNo=201;
    SET FOREIGN_KEY_CHECKS=1;
    select * from Bus;
+-------+--------+-------------+------------+
| BusNo | source | destination | coach_type |
+-------+--------+-------------+------------+
|   200 | TVM    | KTM         | Non AC     |
|   202 | BGR    | TVM         | Sleeper    |
|   203 | EKM    | CHN         | AC         |
+-------+--------+-------------+------------+


5f> Select name,jdate from Passenger,Cancellation where jdate='2019-10-10' and Passenger.PNRNo=Cancellation.PNRNO;
+------+------------+
| name | jdate      |
+------+------------+
| Manu | 2019-10-10 |
+------+------------+

5g> select count(sex) from Ticket where sex='F';
+------------+
| count(sex) |
+------------+
|          1 |
+------------+

5h>  select * from Passenger order by Name ASC;
+-------+----------+-------+------+------+------------+
| PNRNo | TicketNo | Name  | Age  | Sex  | ContactNo  |
+-------+----------+-------+------+------+------------+
|  1003 |      703 | Arun  |   48 | M    | 7907257931 |
|  1001 |      701 | Manu  |   31 | M    | 9633880838 |
|  1002 |      702 | Sarah |   28 | F    | 9947703809 |
+-------+----------+-------+------+------+------------+

5i>  select TicketNo,Name from Passenger where Name like 'S%H%';
+----------+-------+
| TicketNo | Name  |
+----------+-------+
|      702 | Sarah |
+----------+-------+

