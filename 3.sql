# CREATE DATABASE
create database if not exists data_info;
use data_info;
drop table if exists datasets;
create table datasets(
id int primary key,
name varchar(30),
source varchar(30),
is_public int
);
insert into datasets(id,name,source,is_public)values
(1,'Weather Data', 'Public API', 0),
(2,'Stock Prices', 'Private API', 0),
(3,'COVID Stats', 'Public API', 0),
(4,'User Data', 'Internal', 0);
select * from datasets;
update datasets
set is_public=1 
where source ='public api'and id>0;
select * from datasets;