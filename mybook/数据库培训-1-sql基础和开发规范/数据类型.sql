-- 常见数据类型
CREATE TABLE users (
	id INT PRIMARY KEY,
	b FLOAT,
	c DECIMAL (5, 2),
	NAME VARCHAR (5),
	sex CHAR (4),
	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
-- 被截断

insert into users(id)values(2147483648);
select * from users;
-- FLOAT 误差演示
update users set b=12.22 where  id=2147483647;
  -- 未指定长度和小数位时精确查找不到
  select * from users where b=12.22;
  -- 插入时自动补齐小数
  insert into users(id,b) values(1,123456.8);
  select * from users
-- DECIMAL 精确查找
  update users set c=123.22 where id=2147483647;
  select * from users where c=123.22
-- datetime自动更新
  update users set b=12.3 where id=2147483647;
  SELECT * from users;
-- char 定长 m表示最大字符数，超出截断，一个汉字占3字节
   update users set sex='男男男男男' where id=2147483647;
   select LENGTH(sex),users.* from users;
-- varchar m表示最大字符数，超出截断，一个字母占1字节
   update users set name='adsdasdsa' where id=2147483647;
   select LENGTH(name),users.* from users;
-- mysql 每一行最多存65535字节，故varchar 最多能存21844个汉字
   create table test_varchar(a varchar(65536));
   create table test_varchar1(b varchar(21844));
    create table test_varchar2(c varchar(2185));