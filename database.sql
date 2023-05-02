create database orangeHRM_PIM_Module;
use orangeHRM_PIM_Module;

create table Employee (
employee_Id int primary key auto_increment,
First_Name varchar (30),
Last_Name varchar (30),
Job_Title varchar (40),
Employment_Status varchar (40)
);

-- Add new column
alter table employee add Supervisor_Name varchar (30);
alter table employee  add age int ;
alter table employee add DateOfBirth date;

--  complete the tables with information about employees

insert into Employee ( First_Name,Last_Name,Job_Title,Employment_Status,dateOfBirth,age,Supervisor_Name) 
values ('Aaliyah','Haq','QA Lead','full time','1979-10-03','44','Odish Adalwin'),('Alice','Duval','Account Assistant','Full-Time','1978-11-08','45','Kevin Mathews'),('Anthony','Nolan','Sales Representative','Full-Time','1970-02-10','53','Linda Anderson'),('Cassidy','Hope','IT Manager','Part-Time','1992-06-03','30','Odis Adalwin'),('Cecil','Bonaparte','Software Engineer','Full-Time','1991-05-26','31','Fiona Grace'),('Charlie','Carter','QA Engineer','Full-Time','1977-10-11','46','Aaliyah Haq'),('Chenzira','Chuki','QA Engineer','Full-Time','1971-04-21','52','Aaliyah Haq'),('Kevin','Mathews','Finance Manage','Full-Time','1980-03-12','43','Peter Anderson'),('Kiyara','Hu','HR Associate','Full-Time','1990-04-29','33','Paul Collings'),('Sara','Tencrady','Payroll Administrator','Full-Time','1987-08-06','36','Paul Collings');
truncate Employee ;

-- View result
select * from Employee;

create table skills(
skills_id int not null auto_increment,
employee_id int,
Skills_Name varchar(30),
Years_of_Experience varchar (30),
primary key (skills_id),
constraint 
fk_Skills_employee
foreign key(employee_id) references
employee (employee_id)
);

desc skills;
truncate table skills;
drop table skills;
alter table skills add Comments varchar (50);
 
 -- insert data into the table
insert into skills (skills_id,Skills_Name,employee_id,Years_of_Experience,Comments) 
values (1,'C/C++',2,'4','Programming Language'),(2,'C/C++',4,'5','Programming Language'),
(3,'Copywriting',3,'5','Marketing Skill'),(4,'JIRA',2,'6','Project Management Tools'),
(5,'JIRA',5,'1','Project Management Tools'), (6,'Manual Testing',10,'2','QA'),
(7,'Manual Testing',6,'0.5','QA'),(8,'UI Design',5,'5','Interface design'),(9,'HTML',9,'5','Programming Language'), 
(10,'JAVASCRIPT',8,'3','Programming Language'),(11,'Microsoft 365',9,'5','Data analysis'),
(12,'JAVASCRIPT',7,'1','Programming Language'),(13,'SQL',10,'1','Project Management Tools'),
(14,'C/C++',6,'1','Programming Language'),(15,'Manual Testing',1,'6','QA');

 -- view result 
 select * from skills;
 
create table Work_Experience(
Work_Experience_id int,
employee_id int,
Company varchar (50),
Job_Title varchar (50),
From_data date,
To_data date,
primary key ( Work_Experience_id),
constraint 
fk_Work_Experience_employee
foreign key(employee_id) references employee (employee_id)
);
 -- view result 
 select * from work_experience;
 
 -- we add new column;
alter table work_experience add Comment varchar (50);

 -- we complete the tables
insert into work_experience (Work_Experience_id,employee_id,Company,Job_Title,From_data,To_data)
values (1,3,'IT Factory','Qality Assurance','2015-03-21','2017-04-22'),(2,2,'EOS Group','call center operator','2014-06-09','2018-10-23'),
(3,1,'Amazon','Sales','2016-06-13','2018-11-23'),(4,10,'OSF Global','web development','2012-08-09','2017-05-22'),(5,6,'EOS Group','Team leader','2014-06-09','2021-04-21');

create table Education ( 
education_id int,
employee_id int,
Level varchar(50),
Year date,
Institute varchar(50),
start_date date,
end_date date,
primary key ( education_id),
constraint 
fk_Education_employee
foreign key(employee_id) references employee (employee_id)
);
 -- view result 
 select * from education;
 
 -- add new column in the table and delete some column;
 alter table education drop column year;
 alter table education add column  GPA_Score int; 
 alter table education modify End_Date  varchar(25);

  -- insert data into the table
 insert into education (education_id,Level,Institute,start_date,end_date) 
values (1,'College Undergraduate','Cambridge','2015-09-15','2019-06-10'),(2,'High School Diploma','Arcadia High School','2018-09-08','2021-07-15'),(3,'Masters Degree','OXFORD','2022-10-01','N/A'),
(4,'Bachelors Degree','Harvard ','2013-10-07','2017-07-20'),(5,'College Undergraduate',' UAIC','2015-10-02','2018-06-29'),
(6,'Masters Degree','U.Babeș-Bolyai','2017-09-30','2019-06-28'),(7,'College Undergraduate','U.Babes-Bolyai','2015-10-01','2018-07-19'),
(8,'Bachelors Degree','UAIC','2022-10-01','N/A'),(9,'Masters Degree','GH. Asachi','2021-10-01','N/A'),(10,'Bachelors Degree','UAIC ','2014-10-07','2018-07-20');

create table languages  (
languages_id int,
employee_id int,
Languages VARCHAR(50),
Fluency  VARCHAR(50),
Competency VARCHAR(50),
primary key ( languages_id),
constraint 
fk_languages_employee
foreign key(employee_id) references employee (employee_id)
);

select * from languages;
alter table languages  add Comments varchar (50);
alter table languages change languages Languages_Name varchar (50);
truncate table languages;
 
 -- insert data into the table
insert into languages( languages_id,employee_id,Languages_Name,Fluency,Competency) 
values (1,4,'English','speaking','mother tongue'),(2,10,'Spanish','writing','good'),(11,4,'English','N/A','mother tongue'),
(3,2,'French','writing/speaking','good'),(4,2,'Arabic','speaking,reading','basic'),(5,5,'Chinese','speaking,reading','good'),(6,3,'Russian','speaking,reading','poor'),(7,7,'Russian','N/A','good'),
(8,9,'English','speaking,reading','poor'),(9,10,'English','speaking,reading','good'),(10,5,'French','writing,speaking','basic');

create table licenses (
licenses_id int,
employee_id int,
License_Type VARCHAR(50),
Issued_Date  date,
Expiry_Date date,
primary key ( licenses_id),
constraint 
fk_licenses_employee
foreign key(employee_id) references employee (employee_id)
);

select * from licenses;
alter table licenses add License_Number varchar (50);

 insert into licenses(licenses_id, License_Type,Issued_Date,Expiry_Date) 
values (1,'Certified Digital Marketing Professional','2022-12-13','2026-06-22'),(2,'Certified Information Security Manager','2021-02-10','2022-09-22'),
(3,'Cisco Certified Network Associate','2022-02-02','2024-05-29' ),(4,'Cisco Certified Professional','2020-05-20','2024-05-29'),
( 5,'Microsoft Certified Systems Engineer','2021-07-14','2023-05-29'),(6,'PMI Agile Certified Practitioner','2022-02-19','2024-08-27');
truncate table licenses;

 -- Select column 'skills_name' from the skills table;
 select skills_name from skills;
 
 -- Select from column 'skills name' c/c++ ability;
 select * from skills where Skills_Name in ('C/C++');
 
-- Display the first name and last name of all employees;
select first_name, last_name from employee ;

-- Get employees whose first name is “Aaliyah” 
select * from employee  where First_Name = 'Aaliyah';

-- Get  the employees whose  supervisor is 'Paul Collings'
select * from employee  where Supervisor_Name = 'Paul Collings';

-- Get all the details of employees whose dateOfBirth = '1980-03-12'
select * from employee  where dateOfBirth = '1980-03-12';

-- Select all employees with age > 40, <= 33, <35;
select * from employee  where age > 40;
select * from employee  where age <= 33;
select * from employee  where age <=35;

-- Select column 'Job title' and 'employee ref id' from the 'Work Experience' table;
select Job_Title, employee_id from work_experience;

-- Get all the details of employees whose dateOfBirth >'1979-10-03'
select * from employee  where dateOfBirth >'1979-10-03';

-- Select employee who are born in 197%;
select * from employee  where dateOfBirth like '197%';

 -- Get all employee with name 'Cassidy' and Date of birth '199%';
 select* from employee  where first_name like 'Cassidy' and DateOfBirth like '199%';
 
 -- Get all employee from ' Education' table with start date like '20%%' and Level 'Masters Degree'; 
 select * from education where start_date like '20%%' and Level like 'Masters Degree';
 
-- Get all the details of the Languages_Name, Fluency, Competency;
select * from languages where Languages_Name = 'English';
select * from languages where Fluency <>'speaking';
select * from languages where competency != 'good';
select * from languages where Languages_Name like 'french';

-- Get all the details of the education
select * from education where  Level not in ('Bachelors Degree');
select* from education where End_Date != '2021-07-15';

 -- Get  details about License;
 select * from licenses where  License_Type <>'Microsoft Certified Systems Engineer';
 select* from licenses where Issued_Date = '2022-12-13';
 -- Update information from License table;
 update licenses set employee_id = '10' where licenses_id = '1';
 update licenses set employee_id = '7' where licenses_id  = '2';
 update licenses set employee_id = '7' where licenses_id  = '3';
 update licenses set employee_id = '9' where licenses_id  = '4';
 update licenses set employee_id = '4' where licenses_id  = '5';
 update licenses set employee_id = '3' where licenses_id  = '6';

 -- Update information from Education table;
 update education set GPA_Score = '25' where education_id  = '1';
 update education set GPA_Score = '55' where education_id  = '8';
 update education set employee_id = '10' where education_id  = '7';
 update education set employee_id = '8' where education_id  = '3';
update education set employee_id = '3' where education_id  = '10';
 -- View result
 select * from education;

 -- Get how many skills, employee and 'Java' ability,  records exist in the table;
select COUNT(*) from skills;
select COUNT(*) from employee;
select COUNT('JAVASCRIPT') from skills;

-- Calculate the total age of the employees;
select sum(age) from employee;

-- Get the youngest age from employee table;
select min(age) from employee;

-- Group from licenses table, license_type and licensesid, by minimum employment date;
select license_type,licenses_id, min(issued_date) from licenses
group by licenses_id,license_type;

-- Group from skills table, 'Skills_Name', by maximum  experience;
select Skills_Name, max(Years_of_Experience) from skills
group by skills_name;

-- Get all employees in ascending order by last name;
select * from employee  order by last_name asc;

-- Get all employees in ascending order by first name and descending order by dateOfBirth.
select * from employee  order by first_name, dateOfBirth desc;
select * from employee  order by dateOfBirth desc, first_name;

-- Order employee -limit 2-  by date of birth;
select * from employee order by DateOfBirth limit 2;

 -- Order employee by 'Supervisor_Name';
select * from employee order by Supervisor_Name;

  -- Order work experience by 'From_data';
select * from work_experience order by From_data;
  
-- Get information about employee like skills, licenses and education;
select * from employee cross join skills on skills_Id = skills.employee_id;
select * from employee cross join licenses;
select * from licenses right join employee on licenses.licenses_id = employee.employee_Id;
select * from  education left join employee on education.level = employee.First_Name where education.level is not null;

-- Get the difference between the “Skills_Name” and “First_Name” column 
select s.Skills_Name, e.First_Name 
from employee e 
inner join skills s on e.employee_id=s.skills_id;

-- Get the difference between the “Years_of_Experience”,"First_Name" and “Skills_Name” column;
select e.employee_id, s.skills_id, s.Years_of_Experience ,s.Skills_Name,e.First_Name
from employee e 
inner join skills s on e.employee_id=s.skills_id;

-- Get skills for employee and group them;
select e.employee_id, First_Name, Last_Name, count(s.employee_ref_Id)
from employee e
inner join skills s on e.employee_Id= s.employee_ref_id
group by e.employee_id, First_Name, Last_Name;

-- Get work experience for all emaployee;
select  work_experience_id from work_experience inner join employee 
on work_experience.work_experience_id = employee.employee_Id;

-- Get all employee who have more than 1 skill;
select e.employee_id, First_Name, Last_Name, count(s.skills_id)
from employee e
inner join skills s on e.employee_Id= s.skills_id
group by e.employee_id, First_Name, Last_Name
having count(s.skills_id)<3;

