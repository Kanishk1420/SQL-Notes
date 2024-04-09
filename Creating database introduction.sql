use college;
create table data(
rollno int primary key,
name varchar(30),
marks int not null,
grade varchar(2),
city varchar(20)
);
insert into data (rollno, name, marks, grade, city)
values(101 , "anil", 78, "B", "Pune"),
(102 , "Bhumika" , 89, "A", "Mumbai"),
(103 , "Bhuvam" , 90, "O", "Suratgarh"),
(104 , "Dhruv" , 92, "O", "Sarsawa"),
(105 , "Harsh" , 70, "B", "Delhi");
select * from data;
select marks from data;                        /* select the mark from dsta table*/
select distinct grade from data;              /* select only those grade which are not repeating */
select marks from data where marks < 91;       /* where clause*/
select * from data where grade = "B" AND marks < 75;  /* where clause with and operator check both condition*/
select * from data where grade = "A" OR marks > 70;   /* where clause with or operator check one condition */
select * from data where marks+10 > 98;                /* arithmetic opertor*/
select * from data where marks+10 >= 100;             /* Comparision operator*/
select * from data where marks between 80 and 100;  /* between operator selects given range*/
select * from data where city in("Delhi","Mumbai","Ranchi"); /*in clause using mostly in list similar not in too*/
select * from data where marks not between 80 AND 100; 
select * from data limit 3;  /* only show first 3 stduent entry you can also put where clause operations */
/* order by clause*/
select * from data order by city ASC;    /* order by only works as ordering ascending and descending*/
select * from data order by marks ASC; 
select * from data order by marks DESC Limit 3; /*top student* 1/29/13/


/*AGGREATE FUNCTIONS*/
/*Aggreate functions perfrom a calculation on a set values */
select max(marks) from data;
select min(marks) from data;
select avg(marks) from data;
select count(name) from data;
/* GROUP BY CLAUSE IS THE CLAUSE THAT CALCULATES THE VALUES IN GROUP IT GROUP OUR ROWS*/
select city, count(rollno) from data  group by city;
select city,name, count(rollno) from data group by city,name; /* remeber select and group by have same values*/
select city , avg(marks) from data group by city order by avg(marks);
select city , avg(marks) from data group by city order  by avg(marks) Desc;
select grade , count(name) from data group by grade; /* find the grade count */
/* HAVING CLAUSE  :- similar to where applies same condition on rows it used in group by clauses only */
select city, count(name) from data group by city having max(marks)>80;
/* select column 
from table_name 
where condition
group by columns  
having condition
order by column ASC/Dsec*/
select city,grade from data where grade="O" group by city,grade order by city,grade desc;
select name,grade,city from data where marks > 91 AND grade= "O";
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
select * from student WHERE name LIKE 'a%';-- - Finds any values that start with "a"

/* TABLE RELATED QUERIES*/
SET SQL_SAFE_UPDATES = 0; /* OFF THE SAFE MODE*/
update data set grade="A" where grade="C";
update data set marks=45 where marks=71;
update data set grade = "B" where marks between 70 AND 80;
update data set marks = marks+1;
select * from data;	
update data set grade = "O" where marks=90;
delete marks from data;/* delete from data can delete whole table also */

/*FOREIGN KEYS*/
create table Dept(
id int primary key,
name varchar(50)
);
Insert into dept values(101, "english"),
(102, "IT");

select * from dept;

create table Teacher(
id int primary key,
name varchar(50),
deptid int,
foreign key (deptid)references Dept(id) /*deptid is the column nad Dept is table name and (id) is the column where it got referenced*/
On update cascade /* if you want to delete some data from that particular row so the foregin key to that which got automatically referenced also got delete or update*/
On delete cascade
);

insert into teacher
values(101, "Adam" , 101),
(102, "Eve", 102);

select * from Teacher;
Drop table teacher;
update dept set id=103 where id=102;


/*TABLE RELATED QUERIES-2*/
/*Schema includes designs (columns, datatypes , constraints)*/

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20));
insert into student values(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv" , 96 , "A", "Delhi"),
(105, "Emanuel" , 12, "F" , "Delhi"),
(106, "Razor", 82, "B", "Delhi");
Select * from student;

alter table student 
add column age int; /*ADD COLUMN*/
alter table student
drop column age;  /*DROP COLUMN*/
alter table student
rename to child; /*RENAME TO*/
Alter table student
change column rollno studentid int; /*CHANGE COLUMN*/
alter table student 
modify grade int; /*MODIFY*/
update student set age= age+1;

/*DROP - DELETE DATA WITH TABLE 
TRUNCATE - DELETE DATA ONLY IN TABLE*/
Truncate table student;
drop table student;


/*Practice question*/
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20));
insert into student values(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv" , 96 , "A", "Delhi"),
(105, "Emanuel" , 12, "F" , "Delhi"),
(106, "Razor", 82, "B", "Delhi");
select * from student;
/* Change the name of the column name to full_name*/
alter table student
change column name full_name varchar(45); 
/* Delete all the students who scored marks less than 80*/
delete from student
where marks <80;
/*delete the column for grade*/
alter table student 
drop column grade;

/* Joins in SQL  Join is used to combine rows from two or more tables,based on s related column btw them 
a ∩ b  is inner join 
a and overlpaing a is left join and vise versa to right join
full join contained both a and b tables */
use student;
create table student(
student_id int primary key,
name varchar(25)
);
insert into student values(101, "adam"),
(102, "bob"),
(103, "casey");
create table course(
student_id int primary key,
course varchar(24));
insert into course values(102, "English"),
(103, "Math"),
(104, "Science"),
(105, "Computer Science");
select * from student                            /*inner join*/
inner join course
on student.student_id=course.student_id;
/* here you can see you will get same results */
select * from course as c /*alias as to represent we can use course as course name and c name too.*/
inner join student as s
on course.student_id=student.student_id;
-- on c.student_id=s.student_id; // we can write like this too*/
/* left join returns all records from the left table and the matched records from the right table*/
select * from student
left join course
on student.student_id=course.student_id; 
/* left join*/
select * from course
left join student
on course.student_id=student.student_id;
/* right join :- returns all records from the right table, and the matched records from the left table*/
select * from course
right join student
on course.student_id=student.student_id;
/*right join*/
select * from student
right join course
on student.student_id=course.student_id;

/* full join returns all records when there is a match in either left or right join
as its not possible to directly here so here we can do like first we will do left join then do union and then we will do right join*/
select * from student
left join course
on student.student_id=course.student_id
union
select * from course
right join student
on course.student_id=student.student_id;
/* left & right exclusive join*/
select * from student 
left join course
on student.student_id=course.student_id
where course.student_id is null;

select* from course
right join student
on course.student_id=student.student_id
where course.student_id is null;

select customer from restaurant
union
select customer from car;

/*sql nested queries*/
use college;
select avg(marks) from student;
select full_name,marks from student where marks>89.00;
select full_name,marks from student where marks>(select avg(marks) from student); /*nested sub query*/

/* find the students rollno in even counter*/
select full_name,rollno from student where rollno%2=0;
alter table student
change full_name name varchar(40);
/* find the max marks from the students of delhi.*/
select max(marks) marks,name,city from student group by marks,name,city having city="Delhi"; 
