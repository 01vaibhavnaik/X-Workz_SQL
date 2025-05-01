CREATE DATABASE state_db;

USE state_db;

CREATE TABLE state_data (
  state_id INT,
  state_name VARCHAR(30),
  country_name VARCHAR(30),
  population BIGINT,
  area_km2 INT
);

ALTER TABLE state_data
ADD COLUMN capital VARCHAR(30),
ADD COLUMN state_minister VARCHAR(30),
ADD COLUMN official_language VARCHAR(25);

ALTER TABLE state_data
RENAME COLUMN area_km2 TO total_area,
RENAME COLUMN official_language TO languages ,
RENAME COLUMN state_minister TO minister;

ALTER TABLE state_data
modify capital varchar(30),
modify languages varchar(50),
modify minister varchar(10);

DESC state_data;


INSERT INTO state_data VALUES
(1,  'California',     'USA',        39500000,  423967, 'Sacramento',      'English'),
(2,  'Texas',          'USA',        29000000,  695662, 'Austin',          'English'),
(3,  'Bavaria',        'Germany',    13000000,   70550, 'Munich',          'German'),
(4,  'Queensland',     'Australia',  5200000,  1852642, 'Brisbane',        'English'),
(5,  'Ontario',        'Canada',    15000000,  1076395, 'Toronto',         'English/French'),
(6,  'Maharashtra',    'India',     125000000,  307713, 'Mumbai',          'Marathi'),
(7,  'São Paulo',      'Brazil',     46000000,  248222, 'São Paulo',       'Portuguese'),
(8,  'Andalusia',      'Spain',      8400000,    87599, 'Seville',         'Spanish'),
(9,  'New South Wales','Australia',  8200000,   809444, 'Sydney',          'English'),
(10, 'Ile-de-France',  'France',    12100000,   12012,  'Paris',           'French');


SELECT * FROM state_data;
