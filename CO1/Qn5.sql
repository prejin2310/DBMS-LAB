SQL> create table Bus(BusNo int,Source varchar(25),Destination varchar(25),coach_type varchar(25),Constraint BPK Primary key(BusNo));
SQL> desc Bus

SQL> create table  Reservation(PNRNO int,Jdate Date,No_of_Seat int,Address varchar(25), ContactNo int,BusNo int,SeatNo int,constraint Rpk primary key(PNRNO),constraint bk  
SQL> desc Reservation


SQL> create table Ticket(TicketNo int,Jdate date,age int,Sex varchar(10),Destination varchar(25),Deptime varchar(10),BusNo int,constraint TNO primary key(TicketNo),constraint TBNO foreign key(BusNo) references Bus(BusNo));
SQL> desc Ticket

SQL> create table Passenger(PNRNO int,TicketNO int,Name varchar(20),Age int,Sex varchar(10),ContactNo int,constraint PPNR primary key(PNRNO),constraint PTN foreign key(TicketNO) references Ticket(TicketNo));
SQL> desc Passenger

SQL> create table Cancellation(PNRNO int,Jdate date,SeatNo int,ContactNo int,constraint CPNR foreign key(PNRNO) references Reservation(PNRNO));



 Reser 
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BUSNO                                     NOT NULL NUMBER(38)
 SOURCE                                             VARCHAR2(25)
 DESTINATION                                        VARCHAR2(25)
 COACH_TYPE                                         VARCHAR2(25)


 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNRNO                                     NOT NULL NUMBER(38)
 JDATE                                         PNRNO)     DATE
 NO_OF_SEAT                                         NUMBER(38)
 ADDRESS                                            VARCHAR2(25)
 CONTACTNO                                          NUMBER(38) int,
 BUSNO                                              NUMBER(38)
 SEATNO                                             NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TICKETNO                                  NOT NULL NUMBER(38)
 JDATE                                              DATE
 AGE                                                NUMBER(38)
 SEX                                                VARCHAR2(10)
 DESTINATION                                        VARCHAR2(25)
 DEPTIME                                            VARCHAR2(10)
 BUSNO                                              NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNRNO                                     NOT NULL NUMBER(38)
 TICKETNO                                           NUMBER(38)
 NAME                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 SEX                                                VARCHAR2(10)
 CONTACTNO                                          NUMBER(38)

SQL> desc Cancellation;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNRNO                                              NUMBER(38)
 JDATE                                              DATE
 SEATNO                                             NUMBER(38)
 CONTACTNO                                          NUMBER(38)




SQL> insert into Bus values(200,'ABC','TVM','AC');
SQL> insert into Bus values(201,'XYZ','BNG','Sleeper');
SQL> insert into Bus values(202,'TTU','KTM','AC');
SQL> insert into Bus values(203,'JUT','CNI','Sleeper');
SQL> select * from Bus;

     BUSNO SOURCE                    DESTINATION          COACH_TYPE
---------- ------------------------- ------------------  -------------------
       200 ABC                       TVM                   AC
       201 XYZ                       BNG                   Sleeper
       202 TTU                       KTM                   AC
       203 JUT                       CNI                   Sleeper

SQL> insert into Reservation values(11031,'07-JAN-96',1,'Pattom',9089764532,200,5);
SQL> insert into Reservation values(21031,'10-OCT-19',1,'Thycad',9075764123,202,8);
SQL> insert into Reservation values(90647,'10-OCT-19',2,'Ulloor',9975124153,201,8);
SQL> insert into Reservation values(87647,'07-FEB-19',2,'Pattom',9123124897,203,15);
SQL> select * from Reservation;


     PNRNO JDATE     NO_OF_SEAT ADDRESS                    CONTACTNO      BUSNO   SEATNO
---------- --------- ---------- ------------------------- ---------- ----------   ----------
     11031 07-JAN-96          1 Pattom                    9089764532        200   5
     21031 10-OCT-19          1 Thycad                    9075764123        202   8
     90647 10-OCT-19          2 Ulloor                    9975124153        201   8
         


insert into Ticket values(7300,'10-OCT-19',20,'M','CNI','9.00PM',200);
insert into Ticket values(73001,'12-OCT-19',55,'F','TVM','10.00AM',201);
insert into Ticket values(73002,'15-OCT-19',35,'F','KTM','12.45PM',203);
insert into Ticket values(73003,'09-NOV-19',45,'M','BNG','08.00PM',201);

SQL> select * from Ticket;

  TICKETNO JDATE            AGE SEX        DESTINATION               DEPTIME      BUSNO
---------- --------- ---------- ---------- ------------------------- ----------   ----------
      7300 10-OCT-19         20 M          CNI                       9.00PM       200
     73001 12-OCT-19         55 F          TVM                       10.00AM      201
     73002 15-OCT-19         35 F          KTM                       12.45PM      203
     73003 09-NOV-19         45 M          BNG                       08.00PM      201
      


insert into Passenger values(21031,73001,'Sindhu','55','F',9075764123);
insert into Passenger values(90647,73003,'Humaid','45','M',9975124153);
insert into Passenger values(11031,7300,'Alex','20','M',9089764532);

SQL> select * from Passenger;

     PNRNO   TICKETNO NAME                        AGE SEX         CONTACTNO
---------- ---------- -------------------- ---------- ---------- ----------
     21031      73001 Sindhu                       55 F          9075764123
     90647      73003 Humaid                       45 M          9975124153
     11031       7300 Alex                         20 M          9089764532


insert into Cancellation values(11031,'07-JAN-96',5,9089764532);
insert into Cancellation values(90647,'10-OCT-19',8,9975124153);
insert into Cancellation values(11031,'07-JAN-96',5,9089764532);

SQL> select * from Cancellation;

     PNRNO JDATE         SEATNO  CONTACTNO
---------- --------- ---------- ----------
     21031 12-OCT-19          8 9075764123
     90647 10-OCT-19          8 9975124153
     11031 07-JAN-96          5 9089764532

