-- create 
create database test1;
create table test1  (id int PRIMARY key ,a int ,b int );
create index idx_a on test1(a);
create VIEW view1 as select * from test1

-- alter 

alter database test1 CHARSET=utf8mb4;
alter table test1 add COLUMN c int ;
alter table test1 MODIFY COLUMN c varchar(10);
alter table test1 CHANGE COLUMN c d char(10);
alter table test1 add index idx_d(d);
-- drop 
drop database test1;
drop table test1;
drop  INDEX idx_a on test1;

-- TRUNCATE
TRUNCATE table test1;


-- 增
insert into test1 values(1,1,1,'da');

-- 删
delete from test1 where id=1;

-- 改
insert into test1 values(1,1,1,'da');
update test1 set d='dd' WHERE id=1;

-- 查
select * from test1 where id=1;

