use practice;
create table employees_new(
emp_id int auto_increment primary key,
name varchar(20) not null,
age int check(age>=20),
location varchar(30) default 'chennai');
alter table employees_new add contact bigint unique;
describe employees_new;
insert into employees_new(name,age,contact)values('priya',20,9865744647);
insert into employees_new(emp_id,name,age,contact)values(2,'priya',20,98657446470);
insert into employees_new(name,age,contact)values('anvi',21,7896543587);
insert into employees_new(name,age,location,contact)values('arun',45,'trichy',765894322);

select*from employees_new;
create table salary(
empid int,
salary decimal(10,2),
foreign key (empid)references employees_new(emp_id));
insert into salary(empid,salary)values(2,97685);
insert into salary(empid,salary)values(4,40000);
update salary set salary=9765989 where empid=2;
select*from salary;
select*from salary order by empid asc;
select*from salary order by empid desc;
