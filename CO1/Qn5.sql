SQL> create table Bus(BusNo int,Source varchar(25),Destination varchar(25),coach_type varchar(25),Constraint BPK Primary key(BusNo));
SQL> desc Bus
SQL> create table  Reservation(PNRNO int,Jdate Date,No_of_Seat int,Address varchar(25), ContactNo int,BusNo int,SeatNo int,constraint Rpk primary key(PNRNO),constraint bk foreign key(BusNo) references Bus(BusNo));
SQL> desc Reservation



 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BUSNO                                     NOT NULL NUMBER(38)
 SOURCE                                             VARCHAR2(25)
 DESTINATION                                        VARCHAR2(25)
 COACH_TYPE                                         VARCHAR2(25)


 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNRNO                                     NOT NULL NUMBER(38)
 JDATE                                              DATE
 NO_OF_SEAT                                         NUMBER(38)
 ADDRESS                                            VARCHAR2(25)
 CONTACTNO                                          NUMBER(38)
 BUSNO                                              NUMBER(38)
 SEATNO                                             NUMBER(38)
