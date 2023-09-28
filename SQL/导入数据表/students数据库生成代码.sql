create database Students009;
use Students009;

create table Student(
  sno char(7) primary key,
  sname varchar(10) not null,
  ssex char(2) ,
  sage int ,
  sdept varchar(20)  default '计算机系'
  );
create table Course(
  cno char(10) primary key,
  cname varchar(20) not null,
  ccredit int ,
  semester int ,
  period int
  );
create table SC(
  sno char(7),
  cno char(10),
  grade int ,
  primary key(sno,cno),
  foreign key(sno) references Student(sno),
  foreign key(cno) references Course(cno)
  );

insert into Student values('9512101','李勇','男',19,'计算机系');
insert into Student values('9512102','刘晨','男',20,'计算机系');
insert into Student values('9512103','王敏','女',20,'计算机系');
insert into Student values('9521101','张力','男',22,'信管系');
insert into Student values('9521102','吴宾','女',21,'信管系');
insert into Student values('9521103','张海','男',20,'信管系');
insert into Student values('9531101','钱小平','女',18,'数学系');
insert into Student values('9531102','王大力','男',19,'数学系');

insert into Course values('c01','计算机文化学',3,1,4);
insert into Course values('c02','VB',2,3,2);
insert into Course values('c03','计算机网络',4,7,4);
insert into Course values('c04','数据库基础',6,6,4);
insert into Course values('c05','高等数学',8,2,4);
insert into Course values('c06','数据结构',5,4,4);
  
insert into SC values('9512101','c01',90);
insert into SC values('9512101','c02',86);
insert into SC values('9512101','c06',null);
insert into SC values('9512102','c02',78);
insert into SC values('9512102','c04',66);
insert into SC values('9521102','c01',82);
insert into SC values('9521102','c02',75);
insert into SC values('9521102','c04',92);
insert into SC values('9521102','c05',50);
insert into SC values('9521103','c02',68);
insert into SC values('9521103','c06',null);
insert into SC values('9531101','c01',80);
insert into SC values('9531101','c05',95);
insert into SC values('9531102','c05',50);
