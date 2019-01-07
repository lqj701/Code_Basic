-- 找到有重复a的记录
select * from test2 a inner join (select a  from test2 group by a  HAVING count(id)>1) b on a.a=b.a;

select a,MAX(ID) from test2 group by a  HAVING count(id)>1 

-- 排序加编号
select @rownum:=@rownum+1 AS rownum,test2.*

from test2,(SELECT @rownum:=0) r

ORDER BY test2.id

-- 查询test2表中a不在test3的a中的记录

select test2.* from test2 LEFT  join test3  on test2.a=test3.a where test3.id is null

-- 行转列

CREATE TABLE `TabName` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Scount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `TabName` VALUES ('1', '小说', '2018-07-01', '10000');
INSERT INTO `TabName` VALUES ('2', '微信', '2018-07-01', '20000');
INSERT INTO `TabName` VALUES ('3', '小说', '2018-07-02', '30000');
INSERT INTO `TabName` VALUES ('4', '微信', '2018-07-02', '35000');
INSERT INTO `TabName` VALUES ('5', '小说', '2018-07-03', '31000');
INSERT INTO `TabName` VALUES ('6', '微信', '2018-07-03', '36000');
INSERT INTO `TabName` VALUES ('7', '小说', '2018-07-04', '35000');
INSERT INTO `TabName` VALUES ('8', '微信', '2018-07-04', '38000');

SELECT Date ,
MAX(CASE NAME WHEN '小说' THEN Scount ELSE 0 END ) as `小说`,
MAX(CASE NAME WHEN '微信' THEN Scount ELSE 0 END ) as `微信` 
FROM TabName  
GROUP BY Date;

select * from TabName1

select date ,'note' COURSE , note as SCORE from TabName1
union select date, 'story' COURSE, story as SCORE from TabName1

order by date
-- 高级查询

