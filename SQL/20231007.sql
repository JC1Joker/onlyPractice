-- 例2.55 查询售价最高的图书名称(添加售价)
select bookname,price from book where price=(select max(price) from book);
-- where 子句不能直接比较聚集函数

--  例2.56 查询售价比平均售价高的图书名称
select bookname from book where price > (select avg(price) from book);

-- 例2.58查询与C语言图书在同一出版社的图书信息
select * from book where publisher in (select publisher from book where bookname='C语言');

-- 例2.59查询王旭所借图书的图书编号
-- 王旭--reader 所借 --borrow -- 图书编号(最终)
select book_ID from borrow where reader_ID in (select reader_ID from reader where readerName= '王旭');

-- 例2.60 查询王旭所借的图书名称
-- 王旭 -- reader表 所借--borrow表 图书名称 --book表
select bookname from book where book_id in (
	select book_id from borrow where reader_ID in (
	-- 王旭的读者ID
    select reader_ID from reader where readerName='王旭'
));-- 嵌套查询

-- 练习1 ： 查询0218310004读者所借的图书名称
-- 图书名称 -- book 所借--borrow 
select bookname from book where book_ID in (select book_ID from borrow where reader_ID='0210310004');

-- 练习2：查询借书价格在20-40之间的读者的名称
-- 读者姓名 --reader  借书--borrow 价格 --book
select readername from reader where reader_ID in(
	select reader_ID from borrow where book_ID in (
		select book_ID from book where price between 20 and 40 
	)
);

-- 练习3：查询‘胡晓丽’查询‘高等数学’的日期
-- 姓名 --reader 借阅 -- borrow 书名 -- book
