create database voltech

use voltech

create table employee(
Name varchar(255),
City varchar (255),
Age int
)

Insert into employee values('Sathish','Kanchipuram',37)
Insert into employee values('Jana','Chennai',36)
Insert into employee(Name, City) values('Siddiq','Tiruvannamalai')
Insert into employee values('Anand','Kumbakonam',30)
Insert into employee values('Elango','Kanchipuram',25)

select * from employee

select City from employee

select * from employee where age=37

select * from employee where City='Kanchipuram'

select * from employee where City='Chennai'

select * from employee where City='Kanchipuram' And Age<35

select * from employee where Age>=30

select * from employee where City='Tiruvannamalai' or Age<35

Delete from employee where Name='Elango'

select * from employee

Delete from employee where Name='Jana'

Delete from employee

Update employee set Age=29 where Name='Siddiq'

Alter Table employee add ECode int

Update employee set Ecode=100

Update employee set Ecode=100 where Name='Sathish'
Update employee set Ecode=101 where Name='Jana'
Update employee set Ecode=102 where Name='Siddiq'
Update employee set Ecode=103 where Name='Anand'
Update employee set Ecode=104 where Name='Elango'

select * from employee

Truncate Table employee

Drop Table employee

Drop database voltech

create table employee(
Name varchar(255),
City varchar(255) NOT NULL,
Age int check(Age>24),
Ecode int default 100
)
insert into employee(Name,City,Age)values('Sathish','Kanchipuram',37)
insert into employee(Name,City,Age)values('Jana','Chennai',36)
insert into employee(Name,City,Age)values('Anand','Kumbakonam',30)
insert into employee values('Elango','Kanchipuram',25,720)
insert into employee(Name,City,Age)values('Siddiq','Tiruvannamalai',31)
insert into employee(Name,City,Age)values('Sathish','Kanchipuram',37)
select * from employee
select distinct Name from employee
select distinct * from employee

select Name As NameOfEmployee,City As CityOfEmployee, Age As AgeOfEmployee from employee

select Name As Name_Of_Employee,City As City_Of_Employee, Age As Age_Of_Employee from employee

select Name As [Name Of Employee],City As [City Of Employee], Age As [Age Of Employee] from employee

select * from employee order by Age asc

delete from employee where Name='Sathish'

select * from employee order by Age Desc

select top 2 * from employee 

select COUNT(*) from employee where Name='Elango'

select AVG(Age) from employee 

drop table employee

create table employee(
Name varchar(255) unique,
City varchar(255) ,
Age int,
Ecode int identity (100,1)
)

select * from employee
insert into employee(Name,City,Age)values('Sathish','Kanchipuram',37)
insert into employee(Name,City,Age)values('Jana','Chennai',36)
insert into employee(Name,City,Age)values('Elango','Kanchipuram',25)
insert into employee(Name,City,Age)values('Siddiq','Tiruvannamalai',31)

create procedure task
as
select * from employee
go;

exec task


create procedure task1 @para varchar(255)
as
select * from employee where Name=@para
go

exec task1 @para='Elango'


drop table employee


create table employee(
Name varchar(255) unique,
City varchar(255) ,
Age int,
Ecode int identity (100,1)primary key
)

exec task

insert into employee(Name,City,Age)values('Sathish','Kanchipuram',37)
insert into employee(Name,City,Age)values('Jana','Chennai',36)
insert into employee(Name,City,Age)values('Elango','Kanchipuram',25)
insert into employee(Name,City,Age)values('Siddiq','Tiruvannamalai',31)


create table salary(
Id int identity(1,1),
Salary int,
Ecode int foreign key references employee(Ecode)
)

insert into salary values(75000,100)
insert into salary values(48000,101)
insert into salary values(16000,102)
insert into salary values(35000,103)

select * from salary
select * from employee

select Salary from salary where Ecode=100

drop table employee 
drop table salary

use voltech
create table employee(
Name varchar(255) unique,
City varchar(255) ,
Age int,
Ecode int identity (100,1)
)


create table salary(
SalaryType varchar(20),
Salary int,
EmployeeId int
)

insert into employee values('Sathish','Kanchipuram',37)
insert into employee values('Jana','Chennai',36)
insert into employee values('Elango','Kanchipuram',25)
insert into employee values('Siddiq','Tiruvannamalai',31)


insert into salary values('Onroll',75000,100)
insert into salary values('Onroll',48000,101)
insert into salary values('Offroll',16000,720)
insert into salary values('Onroll',35000,570)


select * from salary
select * from employee
/*Inner Join*/
select employee.Name,employee.City,Salary.SalaryType,salary.Salary from employee inner join salary
 on employee.Ecode=salary.EmployeeId 
 
 
 
 /*Left Join*/
 select * from salary
select * from employee
select employee.Name,employee.City,Salary.SalaryType,salary.Salary from employee left join salary
 on employee.Ecode=salary.EmployeeId 
 
 
 /*Right Join*/
 
 select * from salary
select * from employee
select employee.Name,employee.City,Salary.SalaryType,salary.Salary from employee right join salary
 on employee.Ecode=salary.EmployeeId 
 
 
 /*Full Outer Join*/
 select * from salary
select * from employee
select employee.Name,employee.City,Salary.SalaryType,salary.Salary from employee full outer join salary
 on employee.Ecode=salary.EmployeeId 
 
 
 create table pass(
 UserName varchar(255),
 Password varchar(255),
 )
 
 insert into pass values ('Siddiq','Siddiq@1234')
  insert into pass values ('Elango','Elango@1234')
  
  select * from pass

create procedure hello @value varchar(255)
As
select * from pass where UserName=@value
go
exec hello @value='Siddiq'