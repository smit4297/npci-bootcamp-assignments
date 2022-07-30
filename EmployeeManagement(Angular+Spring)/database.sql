create database EmployeeManagement;
use EmployeeManagement;

create table Department(
DeptNo int primary key,
DepartmantName varchar(50),
Location varchar(50));

create table Employee(
EmpNo int primary key auto_increment,
EName varchar(75),
Job varchar(20),
HireDate date,
ManagerId int,
Salary bigint,
Commission int,
DeptNo int);
-- foreign key(DeptNo) references Department(DeptNo)
desc Employee;
select * from Department;
select * from Employee;

create table LoginCredentials(
EmpNo int,
emailId varchar(50),
password text,
foreign key(EmpNo) references Employee(EmpNo));

create table EmployeeWorkingDays(
EmpNo int,
Days int,
month int,
year int,
foreign key(EmpNo) references Employee(EmpNo)
);

select * from EmployeeWorkingDays;
insert into Department values(2,"marketing","Mumbai");
insert into Employee values(456,"Smit", "Developer", '2020-12-13', 420, 50000,5000,2);
insert into LoginCredentials values(456, "smit@gmail.com","smit@123");
insert into Department values(3,"network security","Mumbai");
insert into Department values(1,"accounting","Mumbai");
insert into Department values(4,"blockchain","Mumbai");
insert into Employee values(420,"henish", "manager", '2015-06-19', 435, 50000,5000,3);
insert into LoginCredentials values(420, "henish@gmail.com","henish@123");

select* from Employee;