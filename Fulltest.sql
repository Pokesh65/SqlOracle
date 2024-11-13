create table employeee(
id int,
name VARCHAR(30),
PRIMARY key(id)
);
select * from employeee;
insert into employeee(id,name)values(3,'Jonathan');

create table employeeeUNI(
id int,
unique_id int,
CONSTRAINT fk_id foreign key(id) REFERENCES employeee(id)
);

insert into employeeeUNI(id,unique_id) values(90,3);
TRUNCATE table employeeeUNI;
select * from EmployeeeUNI;
select unique_id,name from employeeeUNI U right join employeee E on U.id=E.id order by unique_id desc;
--select * from(select unique_id,name from employeeeUNI U right join employeee E on U.id=E.id);





--2nd Question


create table Courses(
student VARCHAR(30),
Class varchar(30));

insert into Courses(student,Class)values('I','Math');

select class,count(Class) over(order by Class desc) from Courses;

select class from Courses group by Class having count(class)>=5;

select * from Courses;


--3rd Question

create table Accounts(
account_id int,
income number(10));
insert into Accounts(account_id,income)values(3,108939);
insert into Accounts(account_id,income)values(2,12747);
insert into Accounts(account_id,income)values(8,87709);
insert into Accounts(account_id,income)values(6,91796);

select * from Accounts;

select case when income <=13000 then 'Low Salary'
when income between 12747 and 15747 then  'Average Salary'
else 'high Salary' end as Category,count(*) as Account_count from Accounts group by 
case when income <=13000 then 'Low Salary'
when income between 12747 and 15747 then  'Average Salary'
else 'high Salary' end order by Account_count;

--4th Questions

create table employeeee(
id int,
salary int
); 

insert into employeeee(id,salary)values(1,100);
insert into employeeee(id,salary)values(2,200);
insert into employeeee(id,salary)values(3,300);

select * from  employeeee;

select salary as SecondHighestSalary from employeeee where salary>100 and salary<300;

select salary as SecondHighestSalary from employeeee where id=2;






--5th Questions

create table employeeee2(
id int generated by default as IDENTITY,
salary int
);
drop table employeeee2;
insert into employeeee2(salary)values(100);
select * from employeeee2;

select lead(salary) over(order by salary) as SecondHighestSalary from employeeee2;