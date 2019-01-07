create table test2 (id int PRIMARY key,a int,b int,c varchar(10));

insert into test2 values(1,1,2,'abc'),(2,1,3,'efg'),(3,2,3,'qwe'),(4,2,4,'rty'),
(5,4,5,'iiiiii144'),(6,5,6,'3123');

create table test3 (id int PRIMARY key,a int);
insert into test3 values(1,2),(2,3);
-- 排序
  select * from test2 order by a desc ;
-- 分组
  select a,sum(b),c from test2 group by a;
-- 模糊查询
  select * from test2 where c like '%bc%';
  select * from test2 where c like 'ef%';
  select * from test2 where c like '%fg';
-- 内关联查询
  select * from test2 inner join test3 on test2.a=test3.a
-- 左（外）关联查询
  select * from test2 LEFT JOIN test3 on test2.a=test3.a
-- 右（外）关联查询
  select * from test2 RIGHT JOIN test3 on test2.a=test3.a
-- 自关联
  select * from test2 a inner join test2 b  on a.a=b.b
-- 取前五条
  select * from test2 order by id limit 5
-- union
  select id,b from test2 where test2.a=1
  union all
  select id,a from test3 where test3.a=2
-- 范围查询
  select * from test2 where a in (2,3);
  select * from test2 where a=2 or b=3;
  select * from test2 where a in(select a from test3);
-- 去重
  select distinct a from test2;
  select count(DISTINCT a) FROM test2;
-- 复制表数据
  create table test4(id int PRIMARY key ,a int);
  insert into test4 select * from test3
-- 其他查询
   show databases;-- 查看所有数据库
   show tables;-- 查看当前库下所有表
   show PROCESSLIST; -- 查看当前正在运行的sql语句
   show STATUS;-- 查看mysql 各种参数状态
   show table status;-- 查看所有表详细信息
   desc test2;-- 查看表结构
   show create table test2 ;-- 导出表结构