create database orangeHRM_PIM_Module;
use orangeHRM_PIM_Module;

create table Employee (
employee_Id int primary key auto_increment,
First_Name varchar (30),
Last_Name varchar (30),
Job_Title varchar (40),
Employment_Status varchar (40)
);
drop table Employee; 

-- Add new column

alter table employee add Supervisor_Name varchar (30);
alter table employee  add age int ;
alter table employee add DateOfBirth date;

--   complete the tables with information about employee

insert into Employee ( First_Name,Last_Name,Job_Title,Employment_Status,dateOfBirth,age,Supervisor_Name) 
values ('Aaliyah','Haq','QA Lead','full time','1979-10-03','44','Odish Adalwin'),('Alice','Duval','Account Assistant','Full-Time','1978-11-08','45','Kevin Mathews'),('Anthony','Nolan','Sales Representative','Full-Time','1970-02-10','53','Linda Anderson'),('Cassidy','Hope','IT Manager','Part-Time','1992-06-03','30','Odis Adalwin'),('Cecil','Bonaparte','Software Engineer','Full-Time','1991-05-26','31','Fiona Grace'),('Charlie','Carter','QA Engineer','Full-Time','1977-10-11','46','Aaliyah Haq'),('Chenzira','Chuki','QA Engineer','Full-Time','1971-04-21','52','Aaliyah Haq'),('Kevin','Mathews','Finance Manage','Full-Time','1980-03-12','43','Peter Anderson'),('Kiyara','Hu','HR Associate','Full-Time','1990-04-29','33','Paul Collings'),('Sara','Tencrady','Payroll Administrator','Full-Time','1987-08-06','36','Paul Collings');
truncate Employee ;

-- View result
select * from Employee;

create table skills  (
employee_ref_id int,
Skills_Name VARCHAR(35),
Years_of_Experience int
);
truncate table skills;
drop table skills;
-- we add a new column to the table skills
alter table skills add Comments varchar (50);

-- modify employee_ref_id  to be the first
alter table skills  modify column employee_ref_id int first;
 desc skills;
 -- we insert data into the table
insert into skills (employee_ref_id,Skills_Name,Years_of_Experience,Comments) 
values (1,'C/C++','4','Programming Language'),(2,'C/C++','5','Programming Language'),(2,'Copywriting','5','Marketing Skill'),(5,'JIRA','6','Project Management Tools'),(6,'JIRA','1','Project Management Tools'), (1,'Manual Testing','2','QA'),(3,'Manual Testing','0.5','QA'),(4,'UI Design','5','Interface design'),(5,'HTML','5','Programming Language'), (5,'JAVASCRIPT','3','Programming Language'),(8,'Microsoft 365','5','Data analysis'),(8,'JAVASCRIPT','1','Programming Language'),(9,'SQL','1','Project Management Tools'),(9,'C/C++','1','Programming Language'),(10,'Manual Testing','6','QA');
 -- view result 
 select * from skills;
 
create table Work_Experience(
Company varchar (50),
Job_Title varchar (50),
From_data date,
To_data date
);
 -- view result 
 select * from work_experience;
 -- add new column and modify number column
alter table work_experience add Comment varchar (50);
alter table work_experience drop column Comment;
alter table work_experience add employee_ref_id int;
alter table work_experience  modify column employee_ref_id int first;
 
 -- we complete the tables
insert into work_experience ( employee_ref_id,Company,Job_Title,From_data,To_data)
values (1,'IT Factory','Qality Assurance','2015-03-21','2017-04-22'),(2,'EOS Group','call center operator','2014-06-09','2018-10-23'),(3,'Amazon','Sales','2016-06-13','2018-11-23'),(4,'OSF Global','web development','2012-08-09','2017-05-22'),(5,'EOS Group','Team leader','2014-06-09','2021-04-21');

create table Education ( 
Level varchar(50),
Year date,
Institute varchar(50),
start_date date,
end_date date 
);
 -- view result 
 select * from education;
 -- add new column in the table and modify order;
 alter table education drop column year;
 alter table education add employee_ref_id int; 
 alter table education modify column employee_ref_id int first;
 alter table education add column  GPA_Score int;
 alter table education add column educationid int primary key auto_increment; 
 alter table education modify End_Date  varchar(25);

  -- we insert data into the table
 insert into education (employee_ref_id,Level,Institute,start_date,end_date) 
values (1,'College Undergraduate','Cambridge','2015-09-15','2019-06-10'),(2,'High School Diploma','Arcadia High School','2018-09-08','2021-07-15'),(3,'Masters Degree','OXFORD','2022-10-01','N/A'),(4,'Bachelors Degree','Harvard ','2013-10-07','2017-07-20'),(5,'College Undergraduate',' UAIC','2015-10-02','2018-06-29'),(6,'Masters Degree','U.Babeș-Bolyai','2017-09-30','2019-06-28'),(7,'College Undergraduate','U.Babes-Bolyai','2015-10-01','2018-07-19'),(8,'Bachelors Degree','UAIC','2022-10-01','N/A'),(9,'Masters Degree','GH. Asachi','2021-10-01','N/A'),(10,'Bachelors Degree','UAIC ','2014-10-07','2018-07-20');
truncate table education;

create table languages  (
Languages VARCHAR(50) NOT NULL,
Fluency  VARCHAR(50) NOT NULL,
Competency VARCHAR(50) NOT NULL
);
select * from languages;
alter table languages  add Comments varchar (50);

  alter table languages add column languagesid int primary key auto_increment; 
 alter table languages modify column languagesid int auto_increment first;
 alter table languages change languages Languages_Name varchar (50);
 truncate table languages;
 
 -- we insert data into the table
insert into languages( Languages_Name,Fluency,Competency) 
values ('English','speaking','mother tongue'),('Spanish','writing','good'),('English','N/A','mother tongue'),('French','writing/speaking','good'),('Arabic','speaking,reading','basic'),('Chinese','speaking,reading','good'),('Russian','speaking,reading','poor'),('Russian','N/A','good'),('English','speaking,reading','poor'),('English','speaking,reading','good'),('French','writing,speaking','basic');

create table licenses (
License_Type VARCHAR(50),
Issued_Date  date,
Expiry_Date date
);
select * from licenses;
alter table licenses add License_Number varchar (50);

alter table licenses add column licensesid int primary key auto_increment; 
 alter table licenses modify column licensesid int auto_increment first;
 drop table licenses;
 insert into licenses( License_Type,Issued_Date,Expiry_Date) 
values ('Certified Digital Marketing Professional','2022-12-13','2026-06-22'),('Certified Information Security Manager','2021-02-10','2022-09-22'),('Cisco Certified Network Associate','2022-02-02','2024-05-29' ),('Cisco Certified Professional','2020-05-20','2024-05-29'),( 'Microsoft Certified Systems Engineer','2021-07-14','2023-05-29'),('PMI Agile Certified Practitioner','2022-02-19','2024-08-27');
truncate table licenses;

 -- Select column 'skills_name' from the skills table;
 select skills_name from skills;
 
 -- Select from column 'skills name' c/c++ ability;
 select * from skills where Skills_Name in ('c/c++');
 
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
select Job_Title, employee_ref_id from work_experience;

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

 -- Update information from Education table;
 update education set GPA_Score = '25' where educationid  = '1';
 update education set GPA_Score = '55' where educationid  = '7';
 
 -- Get how many skills, employee and 'Java' ability,  records exist in the table;
select COUNT(*) from skills;
select COUNT(*) from employee;
select COUNT('JAVASCRIPT') from skills;

-- Calculate the total age of the employees;
select sum(age) from employee;

-- Get the youngest age from employee table;
select min(age) from employee;

-- Group from licenses table, license_type and licensesid, by minimum employment date;
select license_type,licensesid, min(issued_date) from licenses
group by licensesid,license_type;

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
select * from employee cross join skills on employee_Id= skills.employee_ref_id;
select * from employee cross join licenses;
select * from licenses right join employee on licenses.licensesid = employee.employee_Id;
select * from  education left join employee on education.level = employee.First_Name where education.level is not null;

-- Get the difference between the “Skills_Name” and “First_Name” column 
select s.Skills_Name, e.First_Name 
from employee e 
inner join skills s on e.employee_id=s.employee_ref_id;

-- Get the difference between the “Years_of_Experience”,"First_Name" and “Skills_Name” column;
select e.employee_id, s.employee_ref_id, s.Years_of_Experience ,s.Skills_Name,e.First_Name
from employee e 
inner join skills s on e.employee_id=s.employee_ref_id;

-- Get skills for employee and group them;
select e.employee_id, First_Name, Last_Name, count(s.employee_ref_Id)
from employee e
inner join skills s on e.employee_Id= s.employee_ref_id
group by e.employee_id, First_Name, Last_Name;

-- Get work experience for all emaployee;
select  work_experienceid from work_experience inner join employee 
on work_experience.work_experienceid = employee.employee_Id;

-- Get all employee who have more than 1 skill;
select e.employee_id, First_Name, Last_Name, count(s.employee_ref_Id)
from employee e
inner join skills s on e.employee_Id= s.employee_ref_id
group by e.employee_id, First_Name, Last_Name
having count(s.employee_ref_Id)>2;

create table Work_experience(
work_experience_id int not null auto_increment,
employee_id int,
company varchar(30),
Job_Title varchar (30),
fromDate date,
primary key (work_experience_id),
constraint,
fk_work_experience_employee_information,
foreign key(employee_id) references
Employee_information(employee_id)
);