mysql> insert into Bus values(200,'Online','TVM','AC');
mysql> insert into Bus values(201,'Online','BGR','Sleeper');
mysql> insert into Bus values(202,'Offline','Chennai','AC');
mysql> insert into Bus values(203,'Offline','Kottayam','AC');
mysql> insert into Bus values(204,'Online','Mumbai','Sleeper');

mysql> select * from Bus;
+-------+---------+-------------+------------+
| BusNo | source  | destination | coach_type |
+-------+---------+-------------+------------+
|   200 | Online  | TVM         | AC         |
|   201 | Online  | BGR         | Sleeper    |
|   202 | Offline | Chennai     | AC         |
|   203 | Offline | Kottayam    | AC         |
|   204 | Online  | Mumbai      | Sleeper    |
+-------+---------+-------------+------------+


mysql> insert into Reservationn values(7354,'2019-10-10',2,'Pattom',9633551021,200,2);
mysql> insert into Reservationn values(7355,'2019-10-18',12,'Kallara',7931076210,203,12);
mysql> insert into Reservationn values(7356,'2019-10-10',6,'Metro City',7910751715,201,6);
mysql> insert into Reservationn values(7357,'2019-10-20',7,'Mumbai',9898331676,204,7);
mysql> insert into Reservationn values(7358,'2019-10-11',1,'ERoad',9611731081,202,1);
mysql> insert into Reservationn values(7359,'2019-10-15',2,'Thycad',7535107510,200,15);

mysql> select * from Reservationn;
+-------+------------+----------+------------+------------+-------+--------+
| PNRno | jDate      | No_Seats | Address    | ContactNo  | BusNo | SeatNo |
+-------+------------+----------+------------+------------+-------+--------+
|  7354 | 2019-10-10 |        2 | Pattom     | 9633551021 |   200 |      2 |
|  7355 | 2019-10-18 |       12 | Kallara    | 7931076210 |   203 |     12 |
|  7356 | 2019-10-10 |        6 | Metro City | 7910751715 |   201 |      6 |
|  7357 | 2019-10-20 |        7 | Mumbai     | 9898331676 |   204 |      7 |
|  7358 | 2019-10-11 |        1 | ERoad      | 9611731081 |   202 |      1 |
|  7359 | 2019-10-15 |        2 | Thycad     | 7535107510 |   200 |     15 |
+-------+------------+----------+------------+------------+-------+--------+


mysql> insert into Ticket values(1000,'2019-10-19',20,'M','Online','TVM','08:00:00',200);
mysql> insert into Ticket values(1001,'2019-10-18',35,'F','Offline','Kottayam','09:30:00',203);
mysql> insert into Ticket values(1002,'2019-10-10',55,'M','Online','BGR','02:40:00',201);
mysql> insert into Ticket values(1004,'2019-10-11',22,'M','Offline','Chennai','05:45:00',202);
mysql> insert into Ticket values(1005,'2019-10-15',28,'F','Online','TVM','08:00:00',200);


mysql> select * from Ticket;
+----------+------------+------+------+---------+-------------+----------+-------+
| TicketNo | Jdate      | age  | sex  | source  | Destination | Dep_time | BusNo |
+----------+------------+------+------+---------+-------------+----------+-------+
|     1000 | 2019-10-19 |   20 | M    | Online  | TVM         | 08:00:00 |   200 |
|     1001 | 2019-10-18 |   35 | F    | Offline | Kottayam    | 09:30:00 |   203 |
|     1002 | 2019-10-10 |   55 | M    | Online  | BGR         | 02:40:00 |   201 |
|     1003 | 2019-10-20 |   42 | F    | Online  | Mumbai      | 10:00:00 |   204 |
|     1004 | 2019-10-11 |   22 | M    | Offline | Chennai     | 05:45:00 |   202 |
|     1005 | 2019-10-15 |   28 | F    | Online  | TVM         | 08:00:00 |   200 |
+----------+------------+------+------+---------+-------------+----------+-------+


mysql> insert into Passenger values(7354,1000,'Sindhu',35,'F',9633551021);
mysql> insert into Passenger values(7355,1001,'Hari',22,'M',7931076210);
mysql> insert into Passenger values(7356,1002,'Abhi',42,'F',79107517551);
mysql> insert into Passenger values(7357,1003,'Renjith',35,'M',9898331676);
mysql> insert into Passenger values(7358,1004,'Zara',42,'F',9611731081);
mysql> insert into Passenger values(7359,1005,'Anu',28,'F',7535107510);

mysql> select * from Passenger;
+-------+----------+---------+------+------+-------------+
| PNRNo | TicketNo | Name    | age  | sex  | ContactNo   |
+-------+----------+---------+------+------+-------------+
|  7354 |     1000 | Sindhu  |   35 | F    |  9633551021 |
|  7355 |     1001 | Hari    |   22 | M    |  7931076210 |
|  7356 |     1002 | Abhi    |   42 | F    | 79107517551 |
|  7357 |     1003 | Renjith |   35 | M    |  9898331676 |
|  7358 |     1004 | Zara    |   42 | F    |  9611731081 |
|  7359 |     1005 | Anu     |   28 | F    |  7535107510 |
+-------+----------+---------+------+------+-------------+



mysql> insert into Cancellation values(7354,'2019-10-10',2,9633551021);
mysql> insert into Cancellation values(7355,'2019-10-18',12,7931076210);
mysql> insert into Cancellation values(7356,'2019-10-10',6,7910751715);
mysql> insert into Cancellation values(7357,'2019-10-20',7,9898331676);
mysql> insert into Cancellation values(7358,'2019-10-11',1,9611731081);


mysql> select * from Cancellation;
+-------+------------+--------+------------+
| PNRNo | jdate      | SeatNo | ContactNo  |
+-------+------------+--------+------------+
|  7354 | 2019-10-10 |      2 | 9633551021 |
|  7355 | 2019-10-18 |     12 | 7931076210 |
|  7356 | 2019-10-10 |      6 | 7910751715 |
|  7357 | 2019-10-20 |      7 | 9898331676 |
|  7358 | 2019-10-11 |      1 | 9611731081 |
+-------+------------+--------+------------+
