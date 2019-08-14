MySQL中表和列可以改名但是库不能改名
--建表
create table stu(
num int,
name varchar(10)
)engine myisam charset utf8;

--改表名
rename table stu to newstu;


--插入
insert into newstu values
	(1,'apple'),
	(2,'orange'),
	(3,'banana');
select * from newstu

--清空表数据
truncate newstu 

truncate相当于删表再重建，操作后得到新表，delete 是重删除数据行的层面来做的。

create table class(
num int primary key auto_increment,
name varchar(10) not null default '',
gender varchar(10) not null default '',
company varchar(10) not null default '',
salary decimal(6,2) not null default 0.00,
allowance smallint not null default 0
)engine myisam charset utf8;

desc newstu
set names gbk:
insert into class
	(num,name,gender,company,salary,allowance)
	values
	(1,'小明','男','百度',100.11,100);--列与值必须严格对应

--改
update class
set gender='女',
company='微软'
where num =1;

--删除就是指删除整行
insert into class
	values
	(2,'小方','男','百度',222.11,100),
	(3,'小红','女','微软',110.11,100);



delete from class where name='小明'
