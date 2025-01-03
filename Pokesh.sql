select * from system.products;//this for fetching table from other session
--if we want to view another user table or insert value for another user table u need to use that 
--user name before given table name
insert into system.products(prod_name) values('Usa');
select * from system.products;

--create table copy select * from system.products;

--lead lag
--lag means previous value come first 
--lead means next value must come first
--while using lead lag must use order by

select prod_id,prod_name,lag(prod_name) over(order by prod_name) as Prod_Name_lag from system.products; 
select prod_id,prod_name,lead(prod_name) over(order by prod_name) as Prod_Name_Leed from system.products; 




create table costom(
sale_id int generated by default as IDENTITY,
sale_name varchar(30),
ent_dt TIMESTAMP default systimestamp
);

select * from costom;

drop table costom;
insert into system.costom11(sale_name) values('rakesh');
select * from system.costom11;
truncate table costom;
select sale_id,sale_name,lag(sale_name) over(order by sale_name)as Prevalue from system.costom11;

select sale_id,sale_name,lead(sale_name) over(order by sale_name)as Aftvalue from system.costom11; 

--it's row swapping without inserting or updating any records on the table
select sale_id,case when mod(row_number() over(order by sale_id),2)<>0 then
lead(sale_name) over (order by sale_id) else 
lag(sale_name) over(order by sale_id) end as LL,lag(sale_name) over(order by sale_name)as lag,lead(sale_name)over (order by sale_name)as lead,sale_name from system.costom11; //lag means previous value come first //lead means next value must come first