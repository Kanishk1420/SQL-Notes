                                             -- LAB-1
/*1.1. Create individual tables for Employee, Student, Product, Customer and Account. Identify relevant attributes for
each table and link to respective tables. Ensure each table has a _ID column e.g. Employee should have
EMPLOYEE_ID column, Student should have STUDENT_ID column etc.*/
Create database student; /*1*/
use student;
create table Employee(
Employee_Id int primary key);
create table Student(
Student_Id int primary key);
create table Product(
Product_Id int primary key);
create table Customer(
Customer_Id int primary key);
create table Account(
Account_Id int primary key);
Select * from student; /*2*/
Select * from Employee; 
Select * from Product; 
Select * from Customer; 
Select * from Account; 
Insert into Employee values(101); /*3*/
Insert into student values (102);
Insert into Product values(103);
Insert into Customer values(104);
Insert into Account values(105);
Select * from student; /*4*/
Select * from Employee; 
Select * from Product; 
Select * from Customer; 
Select * from Account; 
Drop table Employee;  /*5*/
Drop table student;
Drop table Product;
Drop table Customer;
Drop table Account;
                                                -- LAB-2
/*2.1. Using appropriate integrity constraints, design &amp; create suitable tables to store data for the following:
 Restaurant Booking System involving Customer/Booking/Table/Order/Menu/Ingredients/Staff/ Billing
 Hospitality Management System involving Patient/Doctor/Disease/Hospital/Billing
 Car Service Center System involving Car/Customer/Booking/Mechanic/Billing
 Banking System involving Branch/Customer/Account/Employee/Transaction/Product*/
Create table Restaurant( /*1*/
Customer varchar(100),
Booking varchar(100) primary key,
tablee int not null,
orderr int not null,
Menu varchar(100),
Ingredients varchar(100),
Staff varchar(100),
Billing int not null);
Create table Hospitality(
Patient varchar(100),
Doctor varchar(100),
Disease varchar(50),
Hospital varchar(40),
Billing int not null);
Create table Car(
Car varchar(100),
Customer varchar(100),
Booking varchar(50) primary key,
Mechanic varchar(40),
Billing int not null);
Create table Banking(
Branch varchar(100),
Customer varchar(100),
Account int primary key,
Employee varchar(40),
Transition int not null,
Product varchar(100));
/*2*/
INSERT INTO Restaurant (Customer, Booking, tablee, orderr, Menu, Ingredients, Staff, Billing) VALUES ('John Doe', 'Booking1', 1, 1, 'Menu1', 'Ingredient1', 'Staff1', 100);
INSERT INTO Restaurant (Customer, Booking, tablee, orderr, Menu, Ingredients, Staff, Billing) VALUES ('Jane Doe', 'Booking2', 2, 2, 'Menu2', 'Ingredient2', 'Staff2', 200);
INSERT INTO Restaurant (Customer, Booking, tablee, orderr, Menu, Ingredients, Staff, Billing) VALUES ('Bob Smith', 'Booking3', 3, 3, 'Menu3', 'Ingredient3', 'Staff3', 300);
INSERT INTO Restaurant (Customer, Booking, tablee, orderr, Menu, Ingredients, Staff, Billing) VALUES ('Alice Johnson', 'Booking4', 4, 4, 'Menu4', 'Ingredient4', 'Staff4', 400);
INSERT INTO Hospitality (Patient, Doctor, Disease, Hospital, Billing) VALUES ('John Doe', 'Dr. Smith', 'Disease1', 'Hospital1', 100);
INSERT INTO Hospitality (Patient, Doctor, Disease, Hospital, Billing) VALUES ('Jane Doe', 'Dr. Johnson', 'Disease2', 'Hospital2', 200);
INSERT INTO Hospitality (Patient, Doctor, Disease, Hospital, Billing) VALUES ('Bob Smith', 'Dr. Williams', 'Disease3', 'Hospital3', 300);
INSERT INTO Hospitality (Patient, Doctor, Disease, Hospital, Billing) VALUES ('Alice Johnson', 'Dr. Brown', 'Disease4', 'Hospital4', 400);
INSERT INTO Car (Car, Customer, Booking, Mechanic, Billing) VALUES ('Car1', 'John Doe', 'Booking1', 'Mechanic1', 100);
INSERT INTO Car (Car, Customer, Booking, Mechanic, Billing) VALUES ('Car2', 'Jane Doe', 'Booking2', 'Mechanic2', 200);
INSERT INTO Car (Car, Customer, Booking, Mechanic, Billing) VALUES ('Car3', 'Bob Smith', 'Booking3', 'Mechanic3', 300);
INSERT INTO Car (Car, Customer, Booking, Mechanic, Billing) VALUES ('Car4', 'Alice Johnson', 'Booking4', 'Mechanic4', 400);
INSERT INTO Banking (Branch, Customer, Account, Employee, Transition, Product) VALUES ('Branch1', 'John Doe', 1, 'Employee1', 1, 'Product1');
INSERT INTO Banking (Branch, Customer, Account, Employee, Transition, Product) VALUES ('Branch2', 'Jane Doe', 2, 'Employee2', 2, 'Product2');
INSERT INTO Banking (Branch, Customer, Account, Employee, Transition, Product) VALUES ('Branch3', 'Bob Smith', 3, 'Employee3', 3, 'Product3');
INSERT INTO Banking (Branch, Customer, Account, Employee, Transition, Product) VALUES ('Branch4', 'Alice Johnson', 4, 'Employee4', 4, 'Product4');
Select * from Restaurant;
Select * from Hospitality;
Select * from Car;
Select * from Banking;



                                -- LAB-3
/*3.1. Create following tables and insert appropriate rows

 EMPLOYEE table with the attributes: ID, LAST_NAME, FIRST_NAME, MIDDLE_NAME, FATHER_NAME,
MOTHER_NAME, SEX, HIRE_DATE, ADDRESS, CITY, STATE, ZIP, PHONE, PAGER
 SCHOOL table with the attributes: ID, NAME
 EMPLOYEE _ALIGNMENT table with the attributes: EMPLOYEE_ID, SCHOOL_ID
 JOB table with the attributes: ID, NAME, TITLE, SALARY, BONUS
 EMPLOYEE _PAY table with the attributes: EMPLOYEE_ID, JOB_ID
 PRODUCT table with the attributes: ID, name, descp, status, created_date, created_by, last_modified_date,
last_modified_by, cost, injected_date*/

-- Creating the EMPLOYEE table
CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    LAST_NAME VARCHAR(100),
    FIRST_NAME VARCHAR(100),
    MIDDLE_NAME VARCHAR(100),
    FATHER_NAME VARCHAR(100),
    MOTHER_NAME VARCHAR(100),
    SEX CHAR(1),
    HIRE_DATE DATE,
    ADDRESS VARCHAR(255),
    CITY VARCHAR(100),
    STATE VARCHAR(100),
    ZIP VARCHAR(10),
    PHONE VARCHAR(15),
    PAGER VARCHAR(15)
);

-- Inserting values into the EMPLOYEE table
INSERT INTO EMPLOYEE VALUES (1, 'Doe', 'John', 'M', 'Robert Doe', 'Mary Doe', 'M', '2022-01-01', '123 Main St', 'Seattle', 'WA', '98101', '1234567890', '0987654321');
INSERT INTO EMPLOYEE VALUES (2, 'Smith', 'Jane', 'A', 'William Smith', 'Elizabeth Smith', 'F', '2022-02-01', '456 Oak St', 'Portland', 'OR', '97201', '2345678901', '1098765432');
INSERT INTO EMPLOYEE VALUES (3, 'Johnson', 'Bob', 'L', 'James Johnson', 'Patricia Johnson', 'M', '2022-03-01', '789 Pine St', 'San Francisco', 'CA', '94101', '3456789012', '2109876543');
INSERT INTO EMPLOYEE VALUES (4, 'Williams', 'Alice', 'N', 'John Williams', 'Jennifer Williams', 'F', '2022-04-01', '321 Elm St', 'Los Angeles', 'CA', '90001', '4567890123', '3210987654');
INSERT INTO EMPLOYEE VALUES (5, 'Brown', 'Charlie', 'P', 'David Brown', 'Linda Brown', 'M', '2022-05-01', '654 Cedar St', 'San Diego', 'CA', '92101', '5678901234', '4321098765');

-- Repeat similar steps for the other tables
CREATE TABLE SCHOOL (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100)
);

INSERT INTO SCHOOL VALUES (1, 'School A');
INSERT INTO SCHOOL VALUES (2, 'School B');
INSERT INTO SCHOOL VALUES (3, 'School C');
INSERT INTO SCHOOL VALUES (4, 'School D');
INSERT INTO SCHOOL VALUES (5, 'School E');

CREATE TABLE EMPLOYEE_ALIGNMENT (
    EMPLOYEE_ID INT,
    SCHOOL_ID INT,
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
    FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
);

INSERT INTO EMPLOYEE_ALIGNMENT VALUES (1, 1);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (2, 2);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (3, 3);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (4, 4);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (5, 5);

CREATE TABLE EMPLOYEE_PAY (
    EMPLOYEE_ID INT,
    JOB_ID INT,
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID)
);

INSERT INTO EMPLOYEE_PAY VALUES (1, 1);
INSERT INTO EMPLOYEE_PAY VALUES (2, 2);
INSERT INTO EMPLOYEE_PAY VALUES (3, 3);
INSERT INTO EMPLOYEE_PAY VALUES (4, 4);
INSERT INTO EMPLOYEE_PAY VALUES (5, 5);

CREATE TABLE PRODUCT (
    ID INT PRIMARY KEY,
    name VARCHAR(100),
    Descp VARCHAR(255),
    status VARCHAR(50),
    created_date DATE,
    created_by VARCHAR(100),
    last_modified_date DATE,
    last_modified_by VARCHAR(100),
    cost DECIMAL(10,2),
    injected_date DATE
);

INSERT INTO PRODUCT VALUES (1, 'Product A', 'Description A', 'Active', '2022-01-01', 'Creator A', '2022-01-02', 'Modifier A', 100.00, '2022-01-03');
INSERT INTO PRODUCT VALUES (2, 'Product B', 'Description B', 'Inactive', '2022-02-01', 'Creator B', '2022-02-02', 'Modifier B', 200.00, '2022-02-03');
INSERT INTO PRODUCT VALUES (3, 'Product C', 'Description C', 'Active', '2022-03-01', 'Creator C', '2022-03-02', 'Modifier C', 300.00, '2022-03-03');
INSERT INTO PRODUCT VALUES (4, 'Product D', 'Description D', 'Inactive', '2022-04-01', 'Creator D', '2022-04-02', 'Modifier D', 400.00, '2022-04-03');
INSERT INTO PRODUCT VALUES (5, 'Product E', 'Description E', 'Active', '2022-05-01', 'Creator E', '2022-05-02', 'Modifier E', 500.00, '2022-05-03');

-- Creating the JOB table
CREATE TABLE JOB (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100),
    TITLE VARCHAR(100),
    SALARY DECIMAL(10,2),
    BONUS DECIMAL(10,2)
);

-- Inserting values into the JOB table
INSERT INTO JOB VALUES (1, 'Job A', 'Associate Professor', 80000.00, 5000.00);
INSERT INTO JOB VALUES (2, 'Job B', 'Professor', 90000.00, 6000.00);
INSERT INTO JOB VALUES (3, 'Job C', 'Assistant Professor', 70000.00, 4000.00);
INSERT INTO JOB VALUES (4, 'Job D', 'Lecturer', 60000.00, 3000.00);
INSERT INTO JOB VALUES (5, 'Job E', 'Research Associate', 50000.00, 2000.00);

-- Retrieve the row count in “Associate Professor” title.
select count(*) from job where title="Associate Professor";
-- Retrieve the row count in “Associate Professor” title whose salary is between 80,000 and 100,000-- 
SELECT COUNT(*) FROM JOB WHERE TITLE = 'Associate Professor' AND SALARY BETWEEN 80000 AND 100000;
-- Retrieve the details of jobs whose sum of salary and bonus is falling in the range 80,000 and 100,000.
SELECT * FROM JOB WHERE (SALARY + BONUS) BETWEEN 80000 AND 100000;
-- What is the average salary?
select avg(Salary) From job;  
-- What is the maximum bonus?
select max(bonus) from job;
-- Write a SELECT statement that returns product IDs and description (alpha order) for the product, created by Indiana D or Ohio D or Michigan R, or Illinois M.
update  product
set name ="Iniana D"
where name ='Product A';
update  product
set name ="Ohio D"
where name ='Product B';
update  product
set name ="Michigan R"
where name ='Product C';
update  product
set name ="Illinois M. "
where name ='Product D';
select id,name,descp from product order by id,name,descp asc;

                               -- LAB-4
-- Find the maximum cost, minimum cost by each Product Creator.
select min(cost) created_by from product;
select max(cost) created_by from product;
--  Find the sum of cost, average cost by each Last Modifier
select sum(cost) last_modified_by from product;
select avg(cost) last_modified_by from product;
-- Find the number of products created by Indiana D or Ohio D.
select count("Indiana D") OR count("Ohio D") from product;
-- Find the number of products updated by Michigan R or Illinois M.
select count("Michigan R") OR count("Illinois M") from product;
-- Display the sum of all salary.
select sum(Salary) from job;
-- Compute the average salary value across all bonus values
select avg(salary+bonus) from job;
-- Find the average, highest and lowest cost for the products.
select avg(cost), max(cost) , min(cost) from product;
-- Display the total number of jobs for null bonus values.
select count(*) from job where bonus = null;
-- Display the last modified and created date year, month value for each product.
select last_modified_date,created_date from product;
-- Display the JOB name and title followed by a message based on salary. If the salary is > 1,00,000 display
-- “High”. If the salary in between 50,000 and 100,000 then display “Medium’ else display ‘Low’.
SELECT NAME, TITLE,
CASE 
    WHEN SALARY > 100000 THEN 'High'
    WHEN SALARY BETWEEN 50000 AND 100000 THEN 'Medium'
    ELSE 'Low'
END AS Salary_Category
FROM JOB;
-- Display the concatenation of product name, description, created date and last updated date for active products.
select concat(name,descp,created_date,last_modified_date),status from product where status="Active";
                                      -- LAB-5
-- Creating the EMPLOYEE table
CREATE TABLE EMPLOYEE (
    ID INT PRIMARY KEY,
    LAST_NAME VARCHAR(100),
    FIRST_NAME VARCHAR(100),
    MIDDLE_NAME VARCHAR(100),
    FATHER_NAME VARCHAR(100),
    MOTHER_NAME VARCHAR(100),
    SEX CHAR(1),
    HIRE_DATE DATE,
    ADDRESS VARCHAR(255),
    CITY VARCHAR(100),
    STATE VARCHAR(100),
    ZIP VARCHAR(10),
    PHONE VARCHAR(15),
    PAGER VARCHAR(15)
);

-- Inserting values into the EMPLOYEE table
INSERT INTO EMPLOYEE VALUES (1, 'Doe', 'John', 'M', 'Robert Doe', 'Mary Doe', 'M', '2022-01-01', '123 Main St', 'Seattle', 'WA', '98101', '1234567890', '0987654321');
INSERT INTO EMPLOYEE VALUES (2, 'Smith', 'Jane', 'A', 'William Smith', 'Elizabeth Smith', 'F', '2022-02-01', '456 Oak St', 'Portland', 'OR', '97201', '2345678901', '1098765432');
INSERT INTO EMPLOYEE VALUES (3, 'Johnson', 'Bob', 'L', 'James Johnson', 'Patricia Johnson', 'M', '2022-03-01', '789 Pine St', 'San Francisco', 'CA', '94101', '3456789012', '2109876543');
INSERT INTO EMPLOYEE VALUES (4, 'Williams', 'Alice', 'N', 'John Williams', 'Jennifer Williams', 'F', '2022-04-01', '321 Elm St', 'Los Angeles', 'CA', '90001', '4567890123', '3210987654');
INSERT INTO EMPLOYEE VALUES (5, 'Brown', 'Charlie', 'P', 'David Brown', 'Linda Brown', 'M', '2022-05-01', '654 Cedar St', 'San Diego', 'CA', '92101', '5678901234', '4321098765');

-- Repeat similar steps for the other tables
CREATE TABLE SCHOOL (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100)
);

INSERT INTO SCHOOL VALUES (1, 'School A');
INSERT INTO SCHOOL VALUES (2, 'School B');
INSERT INTO SCHOOL VALUES (3, 'School C');
INSERT INTO SCHOOL VALUES (4, 'School D');
INSERT INTO SCHOOL VALUES (5, 'School E');

CREATE TABLE EMPLOYEE_ALIGNMENT (
    EMPLOYEE_ID INT,
    SCHOOL_ID INT,
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
    FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(ID)
);

INSERT INTO EMPLOYEE_ALIGNMENT VALUES (1, 1);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (2, 2);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (3, 3);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (4, 4);
INSERT INTO EMPLOYEE_ALIGNMENT VALUES (5, 5);

CREATE TABLE EMPLOYEE_PAY (
    EMPLOYEE_ID INT,
    JOB_ID INT,
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID)
);

INSERT INTO EMPLOYEE_PAY VALUES (1, 1);
INSERT INTO EMPLOYEE_PAY VALUES (2, 2);
INSERT INTO EMPLOYEE_PAY VALUES (3, 3);
INSERT INTO EMPLOYEE_PAY VALUES (4, 4);
INSERT INTO EMPLOYEE_PAY VALUES (5, 5);

CREATE TABLE PRODUCT (
    ID INT PRIMARY KEY,
    name VARCHAR(100),
    Descp VARCHAR(255),
    status VARCHAR(50),
    created_date DATE,
    created_by VARCHAR(100),
    last_modified_date DATE,
    last_modified_by VARCHAR(100),
    cost DECIMAL(10,2),
    injected_date DATE
);

INSERT INTO PRODUCT VALUES (1, 'Product A', 'Description A', 'Active', '2022-01-01', 'Creator A', '2022-01-02', 'Modifier A', 100.00, '2022-01-03');
INSERT INTO PRODUCT VALUES (2, 'Product B', 'Description B', 'Inactive', '2022-02-01', 'Creator B', '2022-02-02', 'Modifier B', 200.00, '2022-02-03');
INSERT INTO PRODUCT VALUES (3, 'Product C', 'Description C', 'Active', '2022-03-01', 'Creator C', '2022-03-02', 'Modifier C', 300.00, '2022-03-03');
INSERT INTO PRODUCT VALUES (4, 'Product D', 'Description D', 'Inactive', '2022-04-01', 'Creator D', '2022-04-02', 'Modifier D', 400.00, '2022-04-03');
INSERT INTO PRODUCT VALUES (5, 'Product E', 'Description E', 'Active', '2022-05-01', 'Creator E', '2022-05-02', 'Modifier E', 500.00, '2022-05-03');

-- Creating the JOB table
CREATE TABLE JOB (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100),
    TITLE VARCHAR(100),
    SALARY DECIMAL(10,2),
    BONUS DECIMAL(10,2)
);

-- Inserting values into the JOB table
INSERT INTO JOB VALUES (1, 'Job A', 'Associate Professor', 80000.00, 5000.00);
INSERT INTO JOB VALUES (2, 'Job B', 'Professor', 90000.00, 6000.00);
INSERT INTO JOB VALUES (3, 'Job C', 'Assistant Professor', 70000.00, 4000.00);
INSERT INTO JOB VALUES (4, 'Job D', 'Lecturer', 60000.00, 3000.00);
INSERT INTO JOB VALUES (5, 'Job E', 'Research Associate', 50000.00, 2000.00);
-- 5.2. Display all employees’ full name and their school names.
select concat(first_name,middle_name,last_name) from employee
union
select name from school;
-- 5.3. Display all employees’ full name and their job title and salary.
select first_name from employee
full join job
on employee.first_name = job.title; 
-- Display all employees’ full name with their job name, title and total salary for non-null bonus.
select first_name,middle_name,last_name from employee
full join job
on employee.first_name = job.name;
-- on employee.first_name = job.title;
-- on employee.first_name = job.salary;
-- <------------------------------------------------------------------------------------>--
