create database employee_info;

CREATE TABLE employees (
    emp_id int,
    emp_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    job_title VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES 
(01, 'John Doe', 'john.doe@example.com', '1234567890', 'HR', 'HR Manager', '2020-01-15', 60000.00),
(02, 'Jane Smith', 'jane.smith@example.com', '1234567891', 'Finance', 'Accountant', '2019-03-22', 55000.00),
(03, 'Robert Brown', 'robert.brown@example.com', '1234567892', 'Engineering', 'Software Engineer', '2021-06-01', 75000.00),
(04, 'Emily Davis', 'emily.davis@example.com', '1234567893', 'Marketing', 'Marketing Specialist', '2022-08-10', 50000.00),
(05, 'Michael Johnson', 'michael.johnson@example.com', '1234567894', 'Sales', 'Sales Executive', '2021-11-05', 58000.00),
(06, 'Linda Wilson', 'linda.wilson@example.com', '1234567895', 'IT', 'IT Support', '2020-09-13', 52000.00),
(07, 'David Lee', 'david.lee@example.com', '1234567896', 'HR', 'Recruiter', '2018-04-18', 49000.00),
(08, 'Susan Clark', 'susan.clark@example.com', '1234567897', 'Finance', 'Financial Analyst', '2021-02-26', 62000.00),
(09, 'James Hall', 'james.hall@example.com', '1234567898', 'Engineering', 'DevOps Engineer', '2022-12-01', 78000.00),
(10, 'Karen Allen', 'karen.allen@example.com', '1234567899', 'Marketing', 'Content Strategist', '2019-10-20', 53000.00),
(11, 'Steven Young', 'steven.young@example.com', '2234567890', 'Sales', 'Account Manager', '2020-07-07', 61000.00),
(12, 'Nancy King', 'nancy.king@example.com', '2234567891', 'IT', 'Network Admin', '2021-03-03', 56000.00),
(13, 'Charles Scott', 'charles.scott@example.com', '2234567892', 'HR', 'Training Coordinator', '2017-01-01', 47000.00),
(14, 'Barbara Green', 'barbara.green@example.com', '2234567893', 'Finance', 'Auditor', '2018-11-15', 64000.00),
(15, 'Joseph Adams', 'joseph.adams@example.com', '2234567894', 'Engineering', 'Frontend Developer', '2019-05-23', 70000.00),
(16, 'Jessica Baker', 'jessica.baker@example.com', '2234567895', 'Marketing', 'SEO Analyst', '2022-04-04', 49000.00),
(17, 'Thomas Nelson', 'thomas.nelson@example.com', '2234567896', 'Sales', 'Sales Lead', '2021-08-12', 62000.00),
(18, 'Sarah Carter', 'sarah.carter@example.com', '2234567897', 'IT', 'System Analyst', '2020-12-29', 57000.00),
(19, 'Daniel Mitchell', 'daniel.mitchell@example.com', '2234567898', 'HR', 'HR Assistant', '2019-09-09', 45000.00),
(20, 'Laura Perez', 'laura.perez@example.com', '2234567899', 'Finance', 'Budget Analyst', '2023-01-05', 60000.00);

