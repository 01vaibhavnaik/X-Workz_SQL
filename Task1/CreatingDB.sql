CREATE DATABASE Bag;
CREATE TABLE Specification(
id int,
company varchar(20), 
price int
);

CREATE DATABASE Bus_Stand;
CREATE TABLE bus_stand(
id int,
bus_stand_name varchar(20),
timing int,
location varchar(10),
bus_type varchar(10),
bus_number int,
bus_color varchar(20)
 );
 select * from bus_stand;

CREATE DATABASE Shop;
CREATE TABLE shop(
id int,
shop_name varchar(20),
owner_name varchar(20),
location varchar(20),
shop_type varchar(10),
shop_timing int
 );
 
create database Shirt;
CREATE TABLE shirt(
id int, 
shirt_brand varchar(20), 
price int, 
color varchar(20),
size int,
quality varchar(10),
material varchar(10),
shirt_mfd int
);


