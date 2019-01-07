create index idx_a on test_table(a);
create index idx_b on test_table(b);
create index idx_c on test_table(c);
create index idx_a_b on test_table(a,b);

-- 数学运算导致索引失效

EXPLAIN select * from test_table where LEFT(b,5)='abc19';
EXPLAIN select * from test_table where b like 'abc19%';

-- 枚举列索引失效
explain select * from test_table where c in (3,4);

-- like 导致索引失效情况
EXPLAIN select * from test_table where b like 'abc19%';
EXPLAIN select * from test_table where b like '%888';
EXPLAIN select * from test_table where b like '%bc19%';

-- 否定逻辑导致索引失效

EXPLAIN select * from test_table where a not in (931,10003);
EXPLAIN select * from test_table where b not like 'abc19%';

-- 重复索引
drop index idx_a on test_table;
EXPLAIN select * from test_table where a='1';

-- OR  导致索引失效

EXPLAIN select * from test_table where a=1 or b like 'abc1%'

-- in 带来的性能开销问题
   
EXPLAIN select count(1) from test_table1 where a in (select a from test_table where b in ('abc1','abc2','abc3','abc4'))  ;
EXPLAIN select count(1) from test_table1 a inner join test_table b on a.a=b.a  where b.b in ('abc1','abc2','abc3','abc4') ;


