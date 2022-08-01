delimiter //

create procedure allcustomerby_fname_aid(in myaddressid varchar(30), firstname varchar (30))
begin

select * from customer where customer.first_name=firstname and customer.address_id= myaddressid;

end //

delimiter ; 

call allcustomerby_fname_aid('46', 'carolyn' );