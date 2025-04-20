create database person;

create table Details(
name_of_person varchar(20),
gender varchar(5),
age int,
height int,
weight int,
color varchar(10),
location varchar(10),
bloodgroup varchar(5),
eating_habit varchar(10),
simblings varchar(2)
);

alter table details 
add column diseases varchar(10),
add column health_issue varchar(10),
add column intrested_in varchar(10),
add column girlfriend varchar(10);

alter table details
drop column simblings;

alter table details
rename column diseases to disease,
rename column health_issue to health_issues,
rename column intrested_in to intrested,
rename column eating_habit to fav_food;

alter table details 
modify column fav_food int,
modify column height varchar(2);

desc details;


create table Likes(
food varchar(20),
games varchar(5),
sports varchar(20),
vehicle varchar(20),
place varchar(20),
color varchar(10),
animal varchar(10),
birds varchar(10),
travel varchar(10),
swiming varchar(20)
);

alter table likes 
add column fish varchar(10),
add column football varchar(10),
add column BGMI varchar(10),
add column friends varchar(10);

alter table likes
drop column swiming;

alter table likes
rename column games to Game,
rename column animal to zoo,
rename column travel to travelling,
rename column vehicle to car;

alter table likes 
modify column food int,
modify column place varchar(50);

desc likes;

create table Company(
person_id int,
company_name varchar(5),
open_time varchar(20),
location varchar(20),
distance varchar(20),
owner_of_cmp varchar(10),
people_works int,
work_hours varchar(10),
break_time varchar(10),
close_time varchar(20)
);

alter table company 
add column  cmp_id varchar(10),
add column country varchar(10),
add column tasks varchar(10),
add column theam varchar(10);

alter table company
drop column theam;

alter table company
rename column work_hours to duration,
rename column people_works to menbers,
rename column cmp_id to company_id,
rename column country to continent;

alter table company 
modify column open_time int,
modify column close_time int;

desc company;

create table Dislike(
food varchar(20),
games varchar(5),
sports varchar(20),
vehicle varchar(20),
place varchar(20),
color varchar(10),
animal varchar(10),
birds varchar(10),
works varchar(10),
company varchar(10)
);

alter table dislike 
add column veg varchar(10),
add column cricket varchar(10),
add column candy_crash varchar(10),
add column PG varchar(10);

alter table dislike
drop column food;

alter table dislike
rename column works to stress,
rename column birds to duck,
rename column color to green,
rename column animal to hippo;

alter table dislike 
modify column place varchar(50),
modify column hippo int;

desc dislike;

