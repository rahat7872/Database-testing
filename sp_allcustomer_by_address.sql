delimiter //

create procedure allcustomerbyaddress(in myaddressid varchar(30))
begin

select * from customer where customer.address_id= myaddressid;

end //

delimiter ; 

call allcustomerbyaddress('80');