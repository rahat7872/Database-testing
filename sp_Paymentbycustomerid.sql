delimiter //

create procedure paymentbycustomer_id 
( in mycustomerid varchar (30),
out low int ,
out mediumm int ,
out high int )
begin

select count(*) into low from  payment where payment.customer_id = mycustomerid and amount <=3.00 ;
SELECT 
   count(*)
INTO mediumm FROM
    payment
WHERE
    payment.customer_id = mycustomerid
        AND amount BETWEEN 3.00 AND 5.00;
SELECT 
   count(*)
INTO high FROM
    payment
WHERE
    payment.customer_id = mycustomerid
        AND amount > 5.00;
end //

delimiter ; 
call sakila.paymentbycustomer_id('82', @low, @mediumm, @high);
select @low, @mediumm, @high;
