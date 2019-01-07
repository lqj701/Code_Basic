create PROCEDURE test_update(in a int)
BEGIN

update users set id=a where id=1;

end;


call test_update(2)


create PROCEDURE test_out(out b int)

BEGIN

select id from users where id=2 into b;
end;

call test_out(@y);
select @y;

create PROCEDURE test_noneinout()

BEGIN

select id from users where id=2 ;
end;

call test_noneinout();


create PROCEDURE test_inout(INOUT a int)

BEGIN

select b from users where id=a ;

END

set @a=2;
call test_inout(@a);
select @a;