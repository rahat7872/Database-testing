Use sakila;
Show tables;
Select count(*) as numberofcolumns 
from information_schema.columns  where table_name='address';
Select column_name
 from information_schema.columns where table_name='address';
Select column_name, data_type  
from information_schema.columns
where table_name='address';
Select column_name, column_type 
 from information_schema.columns where table_name='address';
Select column_name, column_key  
from information_schema.columns where table_name='address';
Select column_name, is_nullable 
 from information_schema.columns where table_name='address';
Select column_name, data_type, column_key  from information_schema.columns where table_name='address';
Select column_name, data_type, column_key  from information_schema.columns where table_name='staff';