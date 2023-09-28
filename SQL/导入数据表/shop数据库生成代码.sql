create database shop009;
use  shop009;

CREATE TABLE Users(
username    VARCHAR(20)  PRIMARY KEY,
realname  VARCHAR(16) NOT NULL,
age    TINYINT CHECK(age >0 and age< 150),
balance  DECIMAL(7,2) default 0
 );


CREATE TABLE Goods(
goodsno    CHAR(5)  PRIMARY KEY,
goodsname  VARCHAR(20) NOT NULL,
price  DECIMAL(7,2) CHECK(price >0 ),
storage    INT  CHECK(storage >0 )
);

CREATE TABLE Buy(
buyno    INT PRIMARY KEY,
username  VARCHAR(20) NOT NULL,
goodsno  CHAR(5) NOT NULL,
quantity   INT, 
buydate  DATETIME,

FOREIGN KEY(username) REFERENCES Users(username) , 
FOREIGN KEY(goodsno) REFERENCES Goods(goodsno)  
 );


insert    Users  VALUES ('add', '添加', 1,  0.00   );
insert    Users  VALUES ('bird', '冯坤', 45,  0.00   );
insert    Users  VALUES ( 'dragon',  '王蒙', 43,  232.00   );
insert    Users  VALUES ( 'fly',  '李飞', 23,  1234.00   );
insert    Users  VALUES ( 'happy',  '董乐',  NULL,  0.00   );
insert    Users  VALUES ( 'ldp',  '李大鹏', 45,  0.00   );
insert    Users  VALUES ( 'solo',  '张韧', 23,  0.00   );
insert    Users  VALUES ( 'wm',  '王明', 2,  0.00   );
insert    Users  VALUES ( 'wxm',  '王晓明', 34,  234.00   );
insert    Users  VALUES ( 'yanzi',  '杨燕青', 100,  3456.00   );
insert    Users  VALUES ( 'zhaoxiaoming',  '赵晓明', 16,  123.00   );

insert    Goods   VALUES ( '00001',  '液晶电视',  9999.00   , 100);
insert    Goods   VALUES ( '00002',  '手提电脑',  8888.00   , 1000);
insert    Goods   VALUES ( '00003',  '键盘',  55.00   , 1000);
insert    Goods   VALUES ( '00004',  '鼠标',  66.00   , 100);
insert    Goods   VALUES ( '00005',  'cd',  20.00   , 20);
insert    Goods   VALUES ( '00006',  'vcd',  20.00   , 500);
insert    Goods   VALUES ( '00007',  '手机',  2000.00   , 2000);
insert    Goods   VALUES ( '00008',  '耳机',  150.00   , 200);
insert    Goods   VALUES ( '00009',  '相机',  2400.00   , 234);
insert    Goods   VALUES ( '00010',  '摄像头',  89.00   , 3456);

insert    Buy  VALUES (1,  'bird',  '00001', 1, '2015-02-13');
insert    Buy  VALUES (2,  'bird',  '00001', 1, '2014-02-13');
insert    Buy  VALUES (3,  'bird',  '00002', 3, '2014-02-13');
insert    Buy  VALUES (4,  'fly',  '00003' , 3,'2016-02-13');
insert    Buy  VALUES (5,  'fly',  '00002' , 2,'2015-02-13');
insert    Buy  VALUES (6,  'fly',  '00004', 1, '2016-02-13');
insert    Buy  VALUES (7,  'wm',  '00005', 1, '2015-05-13');
insert    Buy  VALUES (8,  'wm',  '00008', 1, '2015-02-13');
insert    Buy  VALUES (9,  'happy',  '00009', 10, '2015-07-13');
insert    Buy  VALUES (10,  'wxm',  '00006', 1234, '2015-08-13');
insert    Buy  VALUES (11,  'wxm',  '00008' ,2345,NULL);
insert    Buy  VALUES (12,  'yanzi',  '00004', 5,NULL);
insert    Buy  VALUES (13,  'ldp',  '00007', 34,NULL);
insert    Buy  VALUES (14,  'fly',  '00006', 20,NULL);
insert    Buy  VALUES (15,  'fly',  '00001', 2,NULL);
