create table test_table(id int PRIMARY key auto_increment,a INT,b varchar(100),c TINYINT)

DROP PROCEDURE if exists test_insert ;
 
DELIMITER ;;
CREATE PROCEDURE test_insert ()
BEGIN
 
DECLARE i INT DEFAULT 1;# can not be 0
 
WHILE i<10000
DO
insert into test_table(a,b,c) values (floor(1+rand()*10000), CONCAT("abc",i),floor(rand() * 4) + 3 );
SET i=i+1;
END WHILE ;
commit;
 
END;;
 
CALL test_insert();