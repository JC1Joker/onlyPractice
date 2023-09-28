create database library009;
use library009;

CREATE TABLE BookType (
type_ID    CHAR(3)          PRIMARY KEY,     -- type_ID为主码
typeName  VARCHAR(20)      NOT NULL,        -- 非空约束
brief       VARCHAR(50)     
);
CREATE TABLE Book (
book_ID    CHAR(10)          PRIMARY KEY,     -- book_ID为主码
bookname  VARCHAR(50)      NOT NULL,        -- 非空约束
type_ID  CHAR(3) REFERENCES BookType(type_ID),  -- 外码，列级约束
author     VARCHAR(10) ,
publisher     VARCHAR(50),
publishdate   Date,
price       DECIMAL(6,2)     CHECK(price>0)   -- CHECK列级约束
);
CREATE TABLE ReaderRank(
rank_ID     CHAR(2)      PRIMARY KEY,
rankName   VARCHAR(8)  NOT NULL,
borrowLimit  INT,
BorrowDays  INT
);
CREATE TABLE Reader (
reader_ID    CHAR(10)      PRIMARY KEY,
readerName   VARCHAR(8)    NOT NULL,
gender       CHAR(2)       CHECK(gender='男' or gender='女'),
birthdate    DATETIME,
telnum        CHAR(15)        UNIQUE,
rank_ID      CHAR(2)       REFERENCES ReaderRank(rank_ID),
deptName    VARCHAR(30)     DEFAULT '计算机系'
);
CREATE TABLE Borrow(
book_ID     CHAR(10),
reader_ID    CHAR(10),
borrowdate   DATETIME,
returndate    DATETIME,
renew       int,
PRIMARY KEY(book_ID,reader_ID), 
FOREIGN KEY(book_ID) REFERENCES Book(book_ID),  
FOREIGN KEY(reader_ID) REFERENCES Reader(reader_ID) 
);

insert into BookType(type_ID,typename,brief) values
('A32','计算机类','与计算机教育及使用相关的图书'),
('B26','数学类','与数学原理相关的教材和参考书籍'),
('C57','英语类','英语教材、教参、学习资料等书籍'),
('D39','管理类','与经济管理、金融管理等相关的图书'),
('E18','文学类','各类小说、散文、杂文等文学作品');

insert into Book(book_ID,bookname,type_ID,author,publisher,publishDate,price) values
('A32DT00001','计算机基础','A32','周文波','清华大学出版社','2016-7-10',31),
('A32DT00002','数据库原理','A32','岳海健','电子工业出版社','2018-3-15',35),
('B26DT00001','高等数学','B26','李丹','同济大学出版社','2019-9-1',42),
('B26DT00002','离散数学','B26',NULL,'高等教育出版社','2019-8-30',51),
('B26DT00003','线形代数','B26','李俐','高等教育出版社','2019-8-20',22),
('B26DT00004','概率论与数理统计','B26',NULL,'机械工业出版社','2019-9-5',32),
('D39DT00001','管理学','D39','罗宾斯','中国人民大学出版社','2017-1-1',37.5),
('D39DT00002','金融学','D39','黄达','中国人民大学出版社','2020-4-1',80),
('A32DT00003','操作系统','A32',NULL,'清华大学出版社','2021-8-30',54),
('A32DT00004','C语言','A32','谭浩强','清华大学出版社','2020-12-10',40),
('A32DT00005','Java语言程序设计','A32','梁勇','机械工业出版社','2022-8-6',68),
('C57DT00001','新概念英语','C57','亚历山大','外语教学与研究出版社','2018-3-1',38.9),
('C57DT00002','大学英语精读','C57','李荫华','上海外语教育出版社','2018-10-10',48),
('E18DT00003','四世同堂','E18','老舍','人民文学出版社','2013-1-1',65),
('E18DT00004','三言二拍','E18','冯梦龙','中国华侨出版社','2019-9-1',99),
('E18DT00005','基督山伯爵','E18','大仲马','译林出版社','2018-10-1',32);

insert into ReaderRank(Rank_ID,RankName,borrowLimit,BorrowDays) values
(1,'教师',20,60),
(2,'工科学生',10,30),
(3,'文科学生',15,30);

insert into Reader(reader_ID,readerName,gender,birthdate,telnum,rank_ID,deptName) values
('021B310001','赵云飞','男','2006-3-17','13834571985',1,'计算机系'),
('021B310002','姜维刚','男','2005-5-23','15509124184',2,'计算机系'),
('021B310003','于海颖','男','2005-1-26','15591877834',2,'计算机系'),
('021B310004','胡晓丽','女','2006-1-26','13901134830',2,'计算机系'),
('021B310005','韩雨倩','女','2005-7-30','15110194857',3,'信息系'),
('021B310006','宋玮','女',NULL,'15101912918',1,'信息系'),
('021B310007','施秋乐',NULL,'2006-9-20','15534852966',3,'信息系'),
('021B310008','张巍',NULL,NULL,'13984713715',2,'电子系'),
('021B310009','王金娟',NULL,'2005-7-13','13801349439',2,'电子系'),
('021B310010','王旭','女','2005-7-13','15509394895',2,'电子系');

insert into Borrow(book_ID,reader_ID,borrowdate,returndate,renew) values
('A32DT00002','021B310003','2022-1-20','2022-2-20',0),
('A32DT00001','021B310006','2022-1-20','2022-3-20',0),
('B26DT00001','021B310004','2022-2-1','2022-3-1',0),
('B26DT00002','021B310004','2022-2-1','2022-4-29',1),
('C57DT00001','021B310006','2022-2-3','2022-3-3',0),
('A32DT00004','021B310010','2022-6-7',Null,0),
('B26DT00003','021B310010','2022-6-7',Null,0),
('B26DT00004','021B310010','2022-6-7',Null,0),
('A32DT00005','021B310003','2022-1-5','2022-3-10',1),
('A32DT00004','021B310001','2022-3-21','2022-4-20',0),
('C57DT00001','021B310001','2022-3-21','2022-4-20',0),
('E18DT00005','021B310001','2022-6-26',Null,1),
('E18DT00005','021B310006','2022-3-4','2022-5-30',1),
('B26DT00004','021B310006','2022-3-4','2022-5-30',1),
('D39DT00001','021B310006','2022-3-18',Null,1),
('D39DT00002','021B310006','2022-3-18','2022-4-16',0);



