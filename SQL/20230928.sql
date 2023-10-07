-- 每项注释代表一个案例，以下省略【例】
--  2.50 每个类别图书个数
select type_ID ,count(*) from book group by type_ID;

-- 2.51 每名读者借书的书目
select reader_ID , count(*) from borrow group by reader_ID;

-- 2.52每个出版社出版图书的平均价格
select  publisher,avg(price) from book group by publisher;

-- 思考例2.53:平均价格高于50元的出版社的名称
select  publisher,avg(price) from book group by publisher having avg(price) > 50 ;

-- 例2.54借书个数超过三本的读者号和借书个数
select reader_ID,count(*) from borrow group by reader_ID having count(*)>3;

-- 练习  
-- 查询选修C04课程的学生学号及成绩，查询结果按成绩降序排列
select sno,grade from sc where cno='C04' order by grade desc ;

-- 查询学生的总人数
select count(sno) from student;

-- 查询选修课程的学生人数
select  count(distinct sno) from sc ;

-- 计算C01课程的学生平均成绩
select cno,avg(grade) from sc where cno='C01';

-- 查询每名学生的选课门数和平均成绩
select sno,count(cno),avg(grade) from sc group by sno;

-- 求每个课程号以及相应的选课人数
select cno,count(sno) from sc group by cno;
 
-- 提升部分：
-- 1．查询全体学生信息，查询结果按所在系升序排列，同一系的学生按年龄降序排列。
select * from student  order by sdept asc ,sage  desc;
-- 2．查询选修C01号课程的学生最高分数和最低分数。
select * from sc where cno='C01' ; 
-- 3. 统计每个系的学生人数。 
select sdept,count(*) from student group by sdept;
-- 4．查询学生选修课程的平均成绩高于75分的课程号。 
select cno, avg(grade) from sc group by cno having avg(grade)>75;
-- 5．查询人数超过2人的系。 
select sdept,count(*) from student group by sdept having count(*)>2; 
-- 6．查询选修了3门及3门以上课程的学生学号、平均成绩和选课门数。 
select sno,avg(grade),count(cno) from sc group by sno having count(cno)>=3;

-- 1． 查询全体学生的信息，并用中文显示列名。
select sno as "学号" ,sname as "姓名" , ssex as "性别" , sage as "年龄" ,sdept as "系别" from student;

-- 2． 查询所有年龄在20岁以下的学生姓名及其年龄。
select * from student where sage<20;
-- 3．查询考试成绩不及格的学生学号。
select sno from sc where grade<60;
-- 4. 查询年龄在20－23岁之间的学生的姓名、年龄和系别。
select sname,sage,sdept from student where sage>=20 and sage<=23;
-- 5．查询既不是信息系、数学系，也不是计算机系的学生的姓名和性别。
select sname,ssex from student where sdept != '信息系' and sdept != '数学系'and sdept!='计算机系';

-- 6．查询学号为9512101的学生的详细情况。
select * from student where sno='9512101';
-- 7．查询数据库课程的课程号和学分。
select cno,ccredit from course where cname='数据库基础';
-- 提升部分：
-- 8. 查询所有不姓刘的学生姓名。
select sname from student where sname like  sname !='刘%';
-- 9. 查询计算机系年龄20岁以下的学生姓名。
select sname from student where sage <20;
-- 10. 查询缺少成绩的学生的学号和相应的课程号。
select sno,cno from sc where grade is null;



