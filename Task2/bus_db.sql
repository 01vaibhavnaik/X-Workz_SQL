create database bus;

create table bus_info(
id int,
city varchar(20),
timing varchar(10),
color varchar(10),
booking varchar(10),
ticketprice int,
source_loc varchar(20),
destination_loc varchar(20));



INSERT INTO bus_info VALUES (1,'New York','08:00AM','Red','Yes',25,'NYC','Boston');
INSERT INTO bus_info VALUES (2, 'Los Angeles', '09:30AM', 'Blue', 'No', 35, 'LA', 'San Diego');
INSERT INTO bus_info VALUES (3, 'Chicago', '07:15AM', 'Green', 'Yes', 30, 'Chicago', 'Milwaukee');
INSERT INTO bus_info VALUES (4, 'Houston', '06:00AM', 'White', 'Yes', 20, 'Houston', 'Austin');
INSERT INTO bus_info VALUES (5, 'Phoenix', '05:45AM', 'Yellow', 'No', 40, 'Phoenix', 'Tucson');
INSERT INTO bus_info VALUES (6, 'Philadelphia', '11:00AM', 'Black', 'Yes', 22, 'Philly', 'Pittsburgh');
INSERT INTO bus_info VALUES (7, 'San Antonio', '01:00PM', 'Orange', 'No', 18, 'SA', 'Dallas');
INSERT INTO bus_info VALUES (8, 'San Diego', '03:00PM', 'Purple', 'Yes', 33, 'San Diego', 'LA');
INSERT INTO bus_info VALUES (9, 'Dallas', '10:30AM', 'Brown', 'Yes', 26, 'Dallas', 'Houston');
INSERT INTO bus_info VALUES (10, 'San Jose', '02:45PM', 'Red', 'No', 31, 'San Jose', 'San Francisco');
INSERT INTO bus_info VALUES (11, 'Austin', '09:00AM', 'Blue', 'Yes', 23, 'Austin', 'Waco');
INSERT INTO bus_info VALUES (12, 'Jacksonville', '07:45AM', 'Green', 'Yes', 29, 'Jax', 'Orlando');
INSERT INTO bus_info VALUES (13, 'Fort Worth', '04:15PM', 'White', 'No', 21, 'FW', 'Dallas');
INSERT INTO bus_info VALUES (14, 'Columbus', '08:30AM', 'Yellow', 'Yes', 24, 'Columbus', 'Cleveland');
INSERT INTO bus_info VALUES (15, 'Charlotte', '06:30AM', 'Black', 'No', 27, 'Charlotte', 'Raleigh');
INSERT INTO bus_info VALUES (16, 'San Francisco', '05:00PM', 'Orange', 'Yes', 34, 'SF', 'Oakland');
INSERT INTO bus_info VALUES (17, 'Indianapolis', '03:30PM', 'Purple', 'Yes', 20, 'Indy', 'Chicago');
INSERT INTO bus_info VALUES (18, 'Seattle', '01:45PM', 'Brown', 'No', 36, 'Seattle', 'Portland');
INSERT INTO bus_info VALUES (19, 'Denver', '12:15PM', 'Red', 'Yes', 28, 'Denver', 'Boulder');
INSERT INTO bus_info VALUES (20, 'Washington', '11:30AM', 'Blue', 'No', 19, 'DC', 'Baltimore');

select * from bus_info;

update bus_info set city='panaji' where id =3;
update bus_info set color='blue' where id between 1 and 4 ;
update bus_info set ticketprice=10 where id in(2,19);
update bus_info set source_loc='cannada' where id=17 or city='Houston';
update bus_info set city='bangalore' where id not between 2 and 18;
update bus_info set source_loc='Charlotte' where id=14;
update bus_info set destination_loc='rajajinagar' where id in(16,17);
update bus_info set city='delhi' where id=7 or city='Dallas';

delete from bus_info where id =13 and ticketprice=20;
delete from bus_info where id in(4,6);
delete from bus_info where id =7 or source_loc='Charlotte';
delete from bus_info where id between 16 and 18 ;
delete from bus_info where id not between 5 and 18  ;
delete from bus_info where city= 'delhi' or color='purple';
delete from bus_info where id =5;

select city from bus_info where booking='yes';
select timing from bus_info where color='blue' and source_loc='jax';
select timing from bus_info where color='blue' or source_loc='jax';
select city from bus_info where id between 11 and 13;
select color from bus_info where id not between 11 and 12;
select booking from bus_info where id in(10,12);
select booking from bus_info where id not in(10,12);


CREATE TABLE bus_info_2 (
    id INT,
    city VARCHAR(20),
    timing VARCHAR(10),
    color VARCHAR(10),
    booking VARCHAR(10),
    ticketprice INT,
    source_loc VARCHAR(20),
    destination_loc VARCHAR(20)
);

INSERT INTO bus_info_2 VALUES (1, 'Miami', '06:00AM', 'Red', 'Yes', 20, 'Miami', 'Orlando');
INSERT INTO bus_info_2 VALUES (2, 'Atlanta', '07:30AM', 'Blue', 'No', 25, 'Atlanta', 'Charlotte');
INSERT INTO bus_info_2 VALUES (3, 'Boston', '09:00AM', 'Green', 'Yes', 28, 'Boston', 'NYC');
INSERT INTO bus_info_2 VALUES (4, 'Detroit', '10:45AM', 'White', 'No', 32, 'Detroit', 'Toledo');
INSERT INTO bus_info_2 VALUES (5, 'Minneapolis', '12:15PM', 'Yellow', 'Yes', 26, 'Minneapolis', 'St Paul');
INSERT INTO bus_info_2 VALUES (6, 'Nashville', '01:30PM', 'Black', 'Yes', 24, 'Nashville', 'Memphis');
INSERT INTO bus_info_2 VALUES (7, 'Milwaukee', '03:00PM', 'Orange', 'No', 29, 'Milwaukee', 'Chicago');
INSERT INTO bus_info_2 VALUES (8, 'Louisville', '04:45PM', 'Purple', 'Yes', 21, 'Louisville', 'Lexington');
INSERT INTO bus_info_2 VALUES (9, 'Oklahoma City', '06:00PM', 'Brown', 'No', 23, 'OKC', 'Tulsa');
INSERT INTO bus_info_2 VALUES (10, 'Kansas City', '07:30PM', 'Red', 'Yes', 27, 'KC', 'St Louis');
INSERT INTO bus_info_2 VALUES (11, 'Albuquerque', '08:45AM', 'Blue', 'Yes', 30, 'ABQ', 'Santa Fe');
INSERT INTO bus_info_2 VALUES (12, 'Fresno', '10:00AM', 'Green', 'No', 33, 'Fresno', 'Bakersfield');
INSERT INTO bus_info_2 VALUES (13, 'Mesa', '11:30AM', 'White', 'Yes', 35, 'Mesa', 'Phoenix');
INSERT INTO bus_info_2 VALUES (14, 'Tampa', '01:00PM', 'Yellow', 'Yes', 22, 'Tampa', 'Miami');
INSERT INTO bus_info_2 VALUES (15, 'Colorado Springs', '02:30PM', 'Black', 'No', 20, 'CS', 'Denver');
INSERT INTO bus_info_2 VALUES (16, 'Arlington', '04:00PM', 'Orange', 'Yes', 31, 'Arlington', 'Dallas');
INSERT INTO bus_info_2 VALUES (17, 'Wichita', '05:30PM', 'Purple', 'Yes', 19, 'Wichita', 'Topeka');
INSERT INTO bus_info_2 VALUES (18, 'Raleigh', '07:00AM', 'Brown', 'No', 18, 'Raleigh', 'Durham');
INSERT INTO bus_info_2 VALUES (19, 'Anaheim', '08:15AM', 'Red', 'Yes', 28, 'Anaheim', 'LA');
INSERT INTO bus_info_2 VALUES (20, 'Santa Ana', '09:45AM', 'Blue', 'No', 25, 'Santa Ana', 'Irvine');

SELECT * FROM bus_info_2;

UPDATE bus_info_2 SET city='panaji' WHERE id = 3;
UPDATE bus_info_2 SET color='blue' WHERE id BETWEEN 1 AND 4;
UPDATE bus_info_2 SET ticketprice=10 WHERE id IN (2,19);
UPDATE bus_info_2 SET source_loc='cannada' WHERE id = 17 OR city = 'Houston'; 
UPDATE bus_info_2 SET city='bangalore' WHERE id NOT BETWEEN 2 AND 18;
UPDATE bus_info_2 SET source_loc='Charlotte' WHERE id =14;
UPDATE bus_info_2 SET destination_loc='rajajinagar' WHERE id IN (16, 17);
UPDATE bus_info_2 SET city='delhi' WHERE id=7 OR city ='Dallas'; 

DELETE FROM bus_info_2 WHERE id = 13 AND ticketprice=20; 
DELETE FROM bus_info_2 WHERE id IN (4,6);
DELETE FROM bus_info_2 WHERE id = 7 OR source_loc ='Charlotte'; 
DELETE FROM bus_info_2 WHERE id BETWEEN 16 AND 18;
DELETE FROM bus_info_2 WHERE id NOT BETWEEN 5 AND 18;
DELETE FROM bus_info_2 WHERE city = 'delhi' OR color ='purple';
DELETE FROM bus_info_2 WHERE id = 5;

SELECT city FROM bus_info_2 WHERE booking ='Yes';
SELECT timing FROM bus_info_2 WHERE color ='blue' AND source_loc ='jax';
SELECT timing FROM bus_info_2 WHERE color ='blue' OR source_loc ='jax';
SELECT city FROM bus_info_2 WHERE id BETWEEN 11 AND 13;
SELECT color FROM bus_info_2 WHERE id NOT BETWEEN 11 AND 12;
SELECT booking FROM bus_info_2 WHERE id IN (10,12);
SELECT booking FROM bus_info_2 WHERE id NOT IN (10,12);


CREATE TABLE bus_info_3 (
    id INT,
    city VARCHAR(20),
    timing VARCHAR(10),
    color VARCHAR(10),
    booking VARCHAR(10),
    ticketprice INT,
    source_loc VARCHAR(20),
    destination_loc VARCHAR(20)
);

INSERT INTO bus_info_3 VALUES (1, 'Las Vegas', '06:30AM', 'Green', 'Yes', 26, 'Vegas', 'LA');
INSERT INTO bus_info_3 VALUES (2, 'Baltimore', '08:00AM', 'White', 'Yes', 30, 'Baltimore', 'DC');
INSERT INTO bus_info_3 VALUES (3, 'Cleveland', '09:15AM', 'Yellow', 'No', 24, 'Cleveland', 'Columbus');
INSERT INTO bus_info_3 VALUES (4, 'Tucson', '10:30AM', 'Black', 'Yes', 27, 'Tucson', 'Phoenix');
INSERT INTO bus_info_3 VALUES (5, 'Long Beach', '11:45AM', 'Orange', 'No', 32, 'Long Beach', 'LA');
INSERT INTO bus_info_3 VALUES (6, 'Oakland', '01:00PM', 'Purple', 'Yes', 22, 'Oakland', 'SF');
INSERT INTO bus_info_3 VALUES (7, 'Tulsa', '02:15PM', 'Brown', 'No', 21, 'Tulsa', 'OKC');
INSERT INTO bus_info_3 VALUES (8, 'Bakersfield', '03:30PM', 'Red', 'Yes', 25, 'Bakersfield', 'Fresno');
INSERT INTO bus_info_3 VALUES (9, 'Aurora', '04:45PM', 'Blue', 'Yes', 28, 'Aurora', 'Denver');
INSERT INTO bus_info_3 VALUES (10, 'Honolulu', '06:00PM', 'Green', 'No', 35, 'Honolulu', 'Waikiki');
INSERT INTO bus_info_3 VALUES (11, 'Lexington', '07:15AM', 'White', 'Yes', 19, 'Lexington', 'Louisville');
INSERT INTO bus_info_3 VALUES (12, 'Stockton', '08:30AM', 'Yellow', 'No', 23, 'Stockton', 'Sacramento');
INSERT INTO bus_info_3 VALUES (13, 'Henderson', '09:45AM', 'Black', 'Yes', 20, 'Henderson', 'Vegas');
INSERT INTO bus_info_3 VALUES (14, 'St. Paul', '11:00AM', 'Orange', 'Yes', 29, 'St. Paul', 'Minneapolis');
INSERT INTO bus_info_3 VALUES (15, 'Plano', '12:15PM', 'Purple', 'No', 31, 'Plano', 'Dallas');
INSERT INTO bus_info_3 VALUES (16, 'Newark', '01:30PM', 'Brown', 'Yes', 34, 'Newark', 'NYC');
INSERT INTO bus_info_3 VALUES (17, 'Lincoln', '02:45PM', 'Red', 'Yes', 33, 'Lincoln', 'Omaha');
INSERT INTO bus_info_3 VALUES (18, 'Orlando', '04:00PM', 'Blue', 'No', 30, 'Orlando', 'Tampa');
INSERT INTO bus_info_3 VALUES (19, 'Chula Vista', '05:15PM', 'Green', 'Yes', 27, 'Chula Vista', 'San Diego');
INSERT INTO bus_info_3 VALUES (20, 'Irvine', '06:30PM', 'White', 'No', 26, 'Irvine', 'Anaheim');

SELECT * FROM bus_info_3;

UPDATE bus_info_3 SET city ='goa' WHERE id = 3;
UPDATE bus_info_3 SET color ='navy' WHERE id BETWEEN 1 AND 4;
UPDATE bus_info_3 SET ticketprice = 15 WHERE id IN (2,19);
UPDATE bus_info_3 SET source_loc ='toronto' WHERE id = 17 OR city ='Austin'; 
UPDATE bus_info_3 SET city ='hyderabad' WHERE id NOT BETWEEN 2 AND 18;
UPDATE bus_info_3 SET source_loc = 'pune' WHERE id = 14;
UPDATE bus_info_3 SET destination_loc = 'kormangala' WHERE id IN (16,17);
UPDATE bus_info_3 SET city = 'mumbai' WHERE id = 7 OR city ='Chicago';

DELETE FROM bus_info_3 WHERE id = 13 AND ticketprice = 20;
DELETE FROM bus_info_3 WHERE id IN (4, 6);
DELETE FROM bus_info_3 WHERE id = 7 OR source_loc = 'Charlotte';
DELETE FROM bus_info_3 WHERE id BETWEEN 16 AND 18;
DELETE FROM bus_info_3 WHERE id NOT BETWEEN 5 AND 18;
DELETE FROM bus_info_3 WHERE city = 'Lincoln' OR color = 'purple';
DELETE FROM bus_info_3 WHERE id = 5;

SELECT city FROM bus_info_3 WHERE booking ='Yes';
SELECT timing FROM bus_info_3 WHERE color ='blue' AND source_loc ='jax';
SELECT timing FROM bus_info_3 WHERE color ='blue' OR source_loc ='jax';
SELECT city FROM bus_info_3 WHERE id BETWEEN 11 AND 13;
SELECT color FROM bus_info_3 WHERE id NOT BETWEEN 11 AND 12;
SELECT booking FROM bus_info_3 WHERE id IN (10, 12);
SELECT booking FROM bus_info_3 WHERE id NOT IN (10, 12);





