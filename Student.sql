create TABLE StudentDB (
Stud_id int GENERATED BY default as identity,
First_name varchar(30),
Second_name varchar(30),
Mail_id varchar(30),
Phone_no varchar(10),
Course_name varchar(30),
Register_no number(5)
);

desc StudentDB;

select * from StudentDB;
drop table StudentDB;
truncate table StudentDB;

insert INTO StudentDB(First_name,Second_name,Mail_id,Phone_no,Course_name,Register_no) values('Pokesh','Kumar','pokesh65@gmail.com',6383532388,'Full-Stack','82201');

select * from StudentDB;