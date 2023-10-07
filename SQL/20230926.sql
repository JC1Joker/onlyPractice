 use library2706djc;

-- 【例2.21】
 select * from book where price > 30;

--  【例2.22】查询读者号信息
 select * from reader where reader_ID = '021B310010';
 
 -- 【例2.23】查询除了高等教育出版社以外的图书信息
select * from book where publisher != '高等教育出版社';
select * from book where publisher <> '高等教育出版社';
select * from book where not publisher  =  '高等教育出版社';

-- 【例2.24】查询价格在30~50元之间的图书
select * from book where price between 30 and 50;
select * from book where  price >= 30 and price <= 50;

-- 【例2.35】查询除2005年以外出生的读者
select * from reader where birthdate NOT BETWEEN '2005-1-1' and '2005-12-31';

-- 【例2.36】查询相关出版社的全部信息
select * from book where publisher in('机械工业出版社','清华大学出版社','电子工业出版社');

-- 【例2.37】练习alter

-- 【例2.38】查询所有姓“王”的读者信息
select * from reader;
select * from reader where readerName like '王_';
select * from reader where readerName like '%王%';

-- 【例2.38】查询数学相关的信息
select * from book where bookname like '%数学%';

-- 【例2.43】查询出生日期不为空的读者姓名
select * from book where publisher = '清华大学出版社' or price > 30;

--  查询所有学生信息
select count(*) from reader where publisher = '清华大学出版社';
select count(reader_id) from reader ;


