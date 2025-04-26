CREATE DATABASE people_db;

USE people_db;

CREATE TABLE person_data (
  person_id INT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  gender VARCHAR(10),
  date_of_birth DATE,
  nationality VARCHAR(30),
  state_of_residence VARCHAR(30)
);

ALTER TABLE person_data
ADD COLUMN occupation VARCHAR(50),
ADD COLUMN email VARCHAR(50),
ADD COLUMN phone_number VARCHAR(20);

ALTER TABLE person_data
MODIFY COLUMN occupation VARCHAR(50),
MODIFY COLUMN email VARCHAR(50),
MODIFY COLUMN phone_number VARCHAR(20);

DESC person_data;

INSERT INTO person_data VALUES
(1,  'Aarav',      'Sharma',     'Male',    '1990-06-15', 'India',         'Maharashtra', 'Engineer',   'aarav.sharma@example.com',   '+91-9876543210'),
(2,  'Emily',      'Clark',      'Female',  '1985-03-22', 'USA',           'California',   'Doctor',     'emily.clark@example.com',    '+1-2134567890'),
(3,  'Luis',       'Gonzalez',   'Male',    '1992-11-02', 'Brazil',        'São Paulo',    'Teacher',    'luis.g@example.com',         '+55-1198765432'),
(4,  'Chen',       'Wei',        'Female',  '1996-08-10', 'China',         NULL,           'Artist',     'chen.wei@example.cn',        '+86-13800138000'),
(5,  'Sophie',     'Dubois',     'Female',  '2000-01-30', 'France',        'Ile-de-France','Student',    'sophie.dubois@example.fr',   '+33-612345678'),
(6,  'David',      'Nguyen',     'Male',    '1988-07-18', 'Australia',     'Victoria',     'Lawyer',     'david.nguyen@example.au',    '+61-412345678'),
(7,  'Anna',       'Kowalska',   'Female',  '1995-05-12', 'Poland',        NULL,           'Nurse',      'anna.k@example.pl',          '+48-601234567'),
(8,  'Carlos',     'Martinez',   'Male',    '1991-09-25', 'Spain',         'Andalusia',    'Chef',       'carlos.m@example.es',        '+34-678901234'),
(9,  'Fatima',     'Hassan',     'Female',  '1983-12-05', 'Morocco',       'Rabat-Salé-Kénitra','Engineer','fatima.h@example.ma',        '+212-661234567'),
(10, 'John',       'Smith',      'Male',    '1979-04-14', 'UK',            'England',      'Manager',    'john.smith@example.co.uk',   '+44-7912345678');

SELECT * FROM person_data;