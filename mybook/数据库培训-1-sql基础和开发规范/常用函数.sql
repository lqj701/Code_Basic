-- 日期函数
-- select now();
select DATE_ADD(now(),INTERVAL 2 DAY);
select DATE_FORMAT(now(),'%m-%d-%Y')
select now();
select DAYOFMONTH(now());
select DAY(now());
select HOUR(now()); 
select DATE(now());
select TIME(now());

-- 字符函数
select CONCAT('a','b');
select FIND_IN_SET('a','d,a,d');
select LENGTH('ada');
SELECT POSITION('a' in 'dsdsaa');
select LOCATE('a','dads');
SELECT INSERT('adsdsa',2,3,'xy');
select LEFT('dasddd',3);
select RIGHT('asdfg',3);
select 	RTRIM('asdasd   ');
select LTRIM('   asdfg');

-- 数学函数
select FLOOR(1.33);
select RAND();
select ROUND(12.3123,3);

-- 聚合函数
create table test_func(id int PRIMARY key,a int,b int  );
insert into test_func values(1,1,1),(2,1,2),(3,2,1),(4,2,4); 

select AVG( b) from test_func;
select COUNT(*) from test_func;  
select min(b) from test_func;
select max(b) from test_func;
select sum(b) from test_func;
select GROUP_CONCAT(b) from test_func;

-- 类型转换函数

select CAST(123123 AS char(10));
select cast('1234' as SIGNED );