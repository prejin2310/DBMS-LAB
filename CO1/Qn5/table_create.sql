mysql> create table Bus(BusNo int,source varchar(25),destination varchar(25),coach_type varchar(25), primary key(BusNo));
mysql> desc Bus;

mysql> create table Reservationn(PNRno int,jDate date,No_Seats int,Address varchar(25),ContactNo BIGINT,BusNo int,SeatNo int,primary key(PNRno), Foreign key(BusNo) references Bus(BusNo));
mysql> desc Reservationn;

mysql> create table Ticket(TicketNo int,Jdate date,age int,sex varchar(10),source varchar(25),Destination varchar(25),Dep_time time,BusNo int,primary key(TicketNo),foreign key(BusNo) references Bus(BusNo));
mysql> desc Ticket;

mysql> create table Passenger(PNRNo int,TicketNo int,Name varchar(25),Age int,Sex varchar(2),ContactNo BIGINT,foreign key(PNRNo) references Reservationn(PNRNo),foreign key(TicketNo) references Ticket(TicketNo));

mysql> desc passenger;

mysql> create table Cancellation(PNRNo int,jdate date,SeatNo int,ContactNo BIGINT, foreign key(PNRNo) references Reservationn(PNRno));
mysql> desc Cancellation;

O/P:
-------

+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| BusNo       | int         | NO   | PRI | NULL    |       |
| source      | varchar(25) | YES  |     | NULL    |       |
| destination | varchar(25) | YES  |     | NULL    |       |
| coach_type  | varchar(25) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| PNRno     | int         | NO   | PRI | NULL    |       |
| jDate     | date        | YES  |     | NULL    |       |
| No_Seats  | int         | YES  |     | NULL    |       |
| Address   | varchar(25) | YES  |     | NULL    |       |
| ContactNo | int         | YES  |     | NULL    |       |
| BusNo     | int         | YES  | MUL | NULL    |       |
| SeatNo    | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+


+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| PNRNo     | int  | YES  | MUL | NULL    |       |
| jdate     | date | YES  |     | NULL    |       |
| SeatNo    | int  | YES  |     | NULL    |       |
| ContactNo | int  | YES  |     | NULL    |       |
+-----------+------+------+-----+---------+-------+


+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| PNRNo     | int         | YES  | MUL | NULL    |       |
| TicketNo  | int         | YES  | MUL | NULL    |       |
| Name      | varchar(25) | YES  |     | NULL    |       |
| Age       | int         | YES  |     | NULL    |       |
| Sex       | varchar(2)  | YES  |     | NULL    |       |
| ContactNo | bigint      | YES  |     | NULL    |       |


+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| TicketNo    | int         | NO   | PRI | NULL    |       |
| Jdate       | date        | YES  |     | NULL    |       |
| age         | int         | YES  |     | NULL    |       |
| sex         | varchar(10) | YES  |     | NULL    |       |
| source      | varchar(25) | YES  |     | NULL    |       |
| Destination | varchar(25) | YES  |     | NULL    |       |
| Dep_time    | time        | YES  |     | NULL    |       |
| BusNo       | int         | YES  | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
