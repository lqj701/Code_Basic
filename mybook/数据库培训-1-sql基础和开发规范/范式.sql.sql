-- 第一范式(不可分割)
create table 1NF(id int PRIMARY key,username varchar(50),sex TINYINT,userphone int );

-- 第二范式(完全依赖所有主键)
create table 2NF(userid int,departmentid int,username varchar(50),departmentname varchar(10),PRIMARY key (userid,departmentid));

create table 2NF_new(userid int,departmentid int,PRIMARY key (userid,departmentid));

-- 第三范式(没有传递依赖)

create table 3NF(id int PRIMARY key ,userid int ,workdate date,userphone int,username varchar(50));
create table 3NF_new(id int PRIMARY key ,userid int,workdate date);

-- 反范式设计(适当冗余，减少关联的表，进而减少io，提高查询速度等)

create table NO_NF(id int PRIMARY key,userid int ,username varchar(50));