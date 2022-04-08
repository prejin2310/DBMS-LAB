5a> select A.TicketNo,B.Name from Ticket as A inner join Passenger as B on A.TicketNo=b.TicketNo;

+----------+---------+
| TicketNo | Name    |
+----------+---------+
|     1000 | Sindhu  |
|     1001 | Hari    |
|     1002 | Abhi    |
|     1003 | Renjith |
|     1004 | Zara    |
|     1005 | Anu     |
+----------+---------+

5b> select Name,sex from Passenger where sex='M';
+---------+------+
| Name    | sex  |
+---------+------+
| Hari    | M    |
| Renjith | M    |
+---------+------+

5c>select Name,age from Passenger where age between 20 and 40;
+---------+------+
| Name    | age  |
+---------+------+
| Sindhu  |   35 |
| Hari    |   22 |
| Renjith |   35 |
| Anu     |   28 |
+---------+------+

5d> SET FOREIGN_KEY_CHECKS=0;
    delete from Bus where BusNo=201;
    SET FOREIGN_KEY_CHECKS=1;
    select * from Bus;
+-------+---------+-------------+------------+
| BusNo | source  | destination | coach_type |
+-------+---------+-------------+------------+
|   200 | Online  | TVM         | AC         |
|   202 | Offline | Chennai     | AC         |
|   203 | Offline | Kottayam    | AC         |
|   204 | Online  | Mumbai      | Sleeper    |
+-------+---------+-------------+------------+

5e>


5f> select A.Name,B.jdate from Passenger as A inner join Cancellation as B on A.PNRNo=B.PNRNo where B.jdate='2019-10-10';
+--------+------------+
| Name   | jdate      |
+--------+------------+
| Sindhu | 2019-10-10 |
| Abhi   | 2019-10-10 |
+--------+------------+

5g> select count(sex) from Ticket where sex='F';
+------------+
| count(sex) |
+------------+
|          3 |
+------------+

5h>  select * from Passenger order by Name ASC;
+-------+----------+---------+------+------+-------------+
| PNRNo | TicketNo | Name    | age  | sex  | ContactNo   |
+-------+----------+---------+------+------+-------------+
|  7356 |     1002 | Abhi    |   42 | F    | 79107517551 |
|  7359 |     1005 | Anu     |   28 | F    |  7535107510 |
|  7355 |     1001 | Hari    |   22 | M    |  7931076210 |
|  7357 |     1003 | Renjith |   35 | M    |  9898331676 |
|  7354 |     1000 | Sindhu  |   35 | F    |  9633551021 |
|  7358 |     1004 | Zara    |   42 | F    |  9611731081 |
+-------+----------+---------+------+------+-------------+

5i>  select TicketNo,Name from Passenger where Name like 'S%' or Name like 'H%';
+----------+--------+
| TicketNo | Name   |
+----------+--------+
|     1000 | Sindhu |
|     1001 | Hari   |
+----------+--------+


