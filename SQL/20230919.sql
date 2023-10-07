create table mystudent2djc2706(
	sno char(8) primary key,
    name char(10) not null,
    sex char(2) check(sex = '男' or sex = '女'),
    age int check(age>=10 and age<=60),
    dep varchar(26) default '计算机系',
    uid char(28) unique
);

create table mystulesson3djc2706(
	sno char(8),
    cname char(50) not null,
    score int check(score>=0 and score<=100),
    primary key(sno,cname),      -- 组合主码
    foreign key(sno) references mystudent2djc2706(sno)
);