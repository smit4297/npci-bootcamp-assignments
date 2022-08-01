create database ecommerce;
use ecommerce;
-- drop database ecommerce;
create table Productcategory(
categoryid BIGINT primary key auto_increment,
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

insert into Product values(100,"PC", "Acer Gaming monitor", "Gaming monitor with 144hz refresh-rate", 14000,"http://cdn.shopify.com/s/files/1/1780/7915/products/Acer_Predator_XB271HU_WQHD_27_Inch_Monitor_From_The_Peripheral_Store_02_1024x1024.jpg?v=1614746957",10,CURDATE(),curdate(),1);
insert into Product values(101,"chocolate", "Amul dark chocolate", "Amul dark chocolate with 99 cocoa", 140,"https://m.media-amazon.com/images/I/81EAqP0D0+L._SX466_.jpg",100,CURDATE(),curdate(),2);
insert into Product values(102,"jeans", "Uniterd 18 jeans", "blue jeans", 1400,"https://5.imimg.com/data5/HB/IG/EM/SELLER-44731122/1-500x500.jpg",50,CURDATE(),curdate(),3);
insert into Product values(103,"Antibiotics", "paracitamol", "used in all purpose Special in headaches", 14,"https://5.imimg.com/data5/ANDROID/Default/2021/5/GR/BO/YC/130017555/product-jpeg-500x500.jpg",30,CURDATE(),curdate(),4);

