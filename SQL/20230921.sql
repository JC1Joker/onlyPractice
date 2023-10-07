-- 例2.18 查询book中的书名
select bookname,author,price,book_ID from book;

-- 例2.19 查询book所有列数据
select * from book;

-- 例2.20 查询读者所在系
select deptName from reader ;

-- 例2.21 去重
select distinct deptName from reader;

-- 例2.22查询book中打折后的数据
select book_ID,bookname,price*0.9 from book;
-- as别名
select book_ID as '书号',bookname as '书名',price*0.9 as '九折后的价格' from book;

-- 例2.23 查询读者姓名年龄
select readerName,year(now()-year(birthdate)) from reader;
select readerName as '姓名',year(now()-year(birthdate)) as '年龄'from reader;

-- 例2.24课后练习
select reader_ID as '编号' , readername as '姓名', gender as '性别' ,year(now()-year(birthdate)) as '年龄'from reader;

-- 例2.25课后练习
select '2023','年','新书' , book_ID,bookname,price from book;

-- 例2.26查询所有图书价格信息按照升序排列
select * from book order by price;

-- 例：2.27 查询读者信息按照生日降序
select * from reader order by birthdate desc;

-- 例：2.28 查图书，先按图书类别编号升序，再书号升序排列
select * from book order by type_ID asc,book_ID asc;

-- 例2.29 查询价格最高的前10本
select * from book order by price desc limit 10;

-- 例2.30 查询出生7-10名读者
select * from reader order by birthdate asc limit 6,4;







