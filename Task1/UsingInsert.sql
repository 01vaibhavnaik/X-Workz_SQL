CREATE DATABASE global_nations;

USE global_nations;

CREATE TABLE nation_data (
  
  country_id INT,
  country_name VARCHAR(20),
  continent VARCHAR(20),
  population BIGINT,
  area_km2 INT
);

ALTER TABLE nation_data
ADD COLUMN capital VARCHAR(25),
ADD COLUMN currency VARCHAR(20),
ADD COLUMN official_language VARCHAR(25),
ADD COLUMN prime_minister VARCHAR(20);

ALTER TABLE nation_data
RENAME COLUMN area_km2 TO total_area,
RENAME COLUMN official_language TO languages,
RENAME COLUMN continent TO continent_name;

ALTER TABLE nation_data
MODIFY COLUMN capital VARCHAR(25),
MODIFY COLUMN currency VARCHAR(20),
MODIFY COLUMN official_language VARCHAR(25);


DESC nation_data;

INSERT INTO nation_data VALUES
(1, 'Nepal',        'Asia',         30000000,   147181,  'Kathmandu',       'NPR', 'Nepali'),
(2, 'Iceland',      'Europe',         370000,   103000,  'Reykjavik',       'ISK', 'Icelandic'),
(3, 'Qatar',        'Asia',          2800000,    11586,  'Doha',            'QAR', 'Arabic'),
(4, 'Portugal',     'Europe',       10200000,    92212,  'Lisbon',          'EUR', 'Portuguese'),
(5, 'Czechia',      'Europe',       10700000,    78867,  'Prague',          'CZK', 'Czech'),
(6, 'Austria',      'Europe',        9000000,    83879,  'Vienna',          'EUR', 'German'),
(7, 'Morocco',      'Africa',       37000000,   446550,  'Rabat',           'MAD', 'Arabic/Berber'),
(8, 'Ethiopia',     'Africa',      126000000,  1104300,  'Addis Ababa',     'ETB', 'Amharic'),
(9, 'Kazakhstan',   'Asia',         19000000,  2724900,  'Astana',          'KZT', 'Kazakh/Russian'),
(10,'Uzbekistan',   'Asia',         35000000,   447400,  'Tashkent',        'UZS', 'Uzbek'),
(11,'Slovakia',     'Europe',        5400000,    49035,  'Bratislava',      'EUR', 'Slovak'),
(12,'Georgia',      'Europe/Asia',   4000000,    69700,  'Tbilisi',         'GEL', 'Georgian'),
(13,'Sri Lanka',    'Asia',         22000000,    65610,  'Sri Jayawardenepura Kotte', 'LKR', 'Sinhala/Tamil'),
(14,'Jordan',       'Asia',         11000000,    89342,  'Amman',           'JOD', 'Arabic'),
(15,'Serbia',       'Europe',        6900000,    77474,  'Belgrade',        'RSD', 'Serbian'),
(16,'Croatia',      'Europe',        4000000,    56594,  'Zagreb',          'EUR', 'Croatian'),
(17,'Lithuania',    'Europe',        2800000,    65300,  'Vilnius',         'EUR', 'Lithuanian'),
(18,'Latvia',       'Europe',        1900000,    64589,  'Riga',            'EUR', 'Latvian'),
(19,'Estonia',      'Europe',        1300000,    45227,  'Tallinn',         'EUR', 'Estonian'),
(20,'Bolivia',      'South America',12000000,  1098581,  'Sucre',           'BOB', 'Spanish/Quechua/Aymara');

SELECT * FROM nation_data where continent_name='Europe' and country_id between 2 and 13; 

update nation_data set country_name='India'  where country_id between 3 and 10 ;

delete from nation_data where country_id in(17,20);
delete from nation_data where country_id  not in(2,18);
delete from nation_data where country_id between 14 and 16;
delete from nation_data where country_id=11 or country_id=9;

select * from nation_data where currency ='eur';
select * from nation_data where country_id in(6,7,8); 
select * from nation_data where continent_name='Asia' or continent_name='Europe'; 
select * from nation_data where continent_name='Asia' and country_id in(4,5.7,9); 



