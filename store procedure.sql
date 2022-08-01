delimiter //
create procedure selectallactor()
begin 
select * from sakila.actor;

end //
delimiter ;
call selectallactor();

