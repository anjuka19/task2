create database information;
use information;
create table users(
userid  int auto_increment primary key,
username varchar(50) not null unique,
email varchar(50) not null unique,
password varchar(50) not null ,
age int check(age>=13),
country varchar(50) default'USA');
select*from users;
insert into users(username,email,password,age)values('anvi','anvithdev@gmail.com','anvith34!',14);
insert into users(username,email,password,age)values('sundar','sundaram76@gmail.com','sundar88$',56);