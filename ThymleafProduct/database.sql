create database ecommerce;
use ecommerce;
-- drop database ecommerce;
create table Productcategory(
categoryid BIGINT primary key,
categoryname VARCHAR(255)
);

create table Product(
id int primary key auto_increment,
sku VARCHAR(255),
name VARCHAR(255),
description VARCHAR(255),
unitprice DECIMAL(13,2),
imageurl VARCHAR(255),
unitsinstock INT,
datecreated DATETIME(6),
lastupdated DATETIME(6),
categoryid BIGINT,
foreign key(categoryid) references Productcategory(categoryid));

insert into Productcategory values(1,"electronics");
insert into Productcategory values(2,"grocery");
insert into Productcategory values(3,"clothing");
insert into Productcategory values(4,"pharmacy");

insert into Product values(100,"PC", "Acer Gaming monitor", "Gaming monitor with 144hz refresh-rate", 14000,"https://amazon.in/gaming",10,CURDATE(),curdate(),1);
insert into Product values(101,"chocolate", "Amul dark chocolate", "Amul dark chocolate with 99 cocoa", 140,"https://amazon.in/chocolate",100,CURDATE(),curdate(),2);
insert into Product values(102,"jeans", "Uniterd 18 jeans", "blue jeans", 1400,"https://amazon.in/jeans",50,CURDATE(),curdate(),3);
insert into Product values(103,"Antibiotics", "paracitamol", "used in all purpose", 14,"https://amazon.in/tablets",30,CURDATE(),curdate(),4);

