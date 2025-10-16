# CREATE DATABASE
create database if not exists company;
use company;
drop table if exists interns;
create table interns (
id int primary key,
name varchar(30),
stipend int
);
insert into interns(id,name,stipend)values
(1,'Ali', 0),
(2,'Sara', 0),
(3,'Hamza', 25000),
(4,'Ayesha', 0);
select * from interns;
update interns
set stipend =18000
where stipend =0 and id>0;
select * from interns;