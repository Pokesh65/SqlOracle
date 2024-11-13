create table Tv(
Tv_Id int generated by default as IDENTITY PRIMARY KEY,
Tv_Name VARCHAR(40),
Tv_Model VARCHAR(40)
);
desc Tv;
insert into Tv(Tv_name,Tv_Model) values(' TableTv','Mi');
select * from Tv;
select * from TvBuyer;

select  * from Tv t  join TvBuyer b on trim(t.tv_name)=trim(b.cus_name);

insert into TvBuyer(cus_name,Tv_id)values('TableTv ', 12);

create table TvBuyer(
Cus_Id int generated by default as IDENTITY PRIMARY KEY,
Cus_Name VARCHAR(40),
Buy_date DATE default sysdate,
Tv_Id int,
CONSTRAINT pk FOREIGN key(Tv_Id) REFERENCES Tv(Tv_Id)
);
select * from TvBuyer;
insert into TvBuyer(Cus_Name,Tv_Id)values('Deepika',1);

insert into TvBuyer(Cus_Name,Tv_Id) values('Dinesh',1);
select * from TvBuyer B right join  Tv T ON B.Tv_Id=T.Tv_Id;
select * from TvBuyer B left join  Tv T ON B.Tv_Id=T.Tv_Id;
select * from TvBuyer B join  Tv T ON B.Tv_Id=T.Tv_Id;

select Tv_name as Tv ,nvl(Cus_name,'Nooope')as Customer from TvBuyer b right join Tv t on b.Tv_Id=t.Tv_Id;
select  Tv_Name as TvName,nvl(Cus_Name,'Dinesh')as CusName from Tv t left join TvBuyer b on t.tv_id=b.tv_id;
select  * from Tv t left join TvBuyer b on t.tv_id=b.tv_id;

select * from TvBuyer Cross join Tv ;
select * from Tv;

select * from Tv t left join TvBuyer b on rtrim(t.Tv_Id)=rtrim(b.Tv_Id);

select Tv_Model,nvl(Cus_Name,'deepika')as Customer_name from Tv t left join TvBuyer b on rtrim(t.tv_id)=b.Tv_Id;

select * from Tv where Tv_model like 's%y';
select * from Tv where Tv_Model like '______d';

select case when t.Tv_Model='android' then t.Tv_model else 'New TV' end as ModelOfTv,Cus_Name as Customer from Tv t left join
TvBuyer b on t.Tv_Id=b.Tv_Id;

DELETE Tv where Tv_Id=1;
Delete TvBuyer where Tv_Id=1;

select rtrim('moneyy    ') as Output from dual;
select ltrim('moneyy','m') as Output from dual;
select rtrim('123448475775111110000011111','1') as Output from dual;
