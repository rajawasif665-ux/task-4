# CREATE DATABASE
create database if not exists company;
use company;
drop table if exists interns;
create table interns(
id int primary key,
name varchar (30),
department varchar (30),
stipend int,
join_date date
);
insert into interns(id,name,department,stipend,join_date)
values
(1, 'Ali', 'IT', 20000, '2025-10-10'),
(2, 'Sara', 'HR', 18000, '2025-10-06'),
(3, 'Usman', 'Finance', 22000, '2025-09-25'),
(4, 'Ayesha', 'Marketing', 21000, '2025-10-14');
select* from interns;
update interns
set stipend=stipend *1.05
where join_date >= current_date() - interval 10 day
  and id>0;
select * from interns;