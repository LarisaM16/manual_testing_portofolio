# Final project for ITF Manual Testing Course

#### The scope of the final project for ITF Manual Testing Course, is to use all gained knowledge throught the course and apply them in practice, using a live application.

#### Application under test: https://opensource-demo.orangehrmlive.com/
#### API Documentation:https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md
#### The final project will be split into 2 sections: Testing section and SQL section.
#### Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications
##### The below Story was created in JIRA and describes the functional specifications of the Admin  section, which includes the "User Management" and "Job" module, for which the final project is performed upon.

![Admin section pg 1](https://user-images.githubusercontent.com/124587607/232848713-b7d4c6f5-b7a6-42a9-9b48-2c67cf48a3ef.png)
![Admin section pg 2](https://user-images.githubusercontent.com/124587607/232848736-1c0da758-33d3-451a-8875-04cfac5af270.png)

# 1 Testing section
## 1.1 Test Planning
##### The test plan is designed to describe all the testing details for the Admin  section, which includes the "User Management" and "Job" module, in the OrangeHRM application. The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

## 1.1.1 Roles assigned to the project and persons allocated
##### •	Project manager – Sorina Banaru
##### •	Product owner – Andreea Caracoti
##### •	Software developer – Claudiu Sarmasanu
##### •	QA Engineer – Larisa Palimaru

## 1.1.2 Entry criteria defined
##### •	Functional specifications are defined.
##### •	Roles needed for the project are allocated.
##### •	Initial project risks were detected and mitigated.

## 1.1.3 Exit criteria defined
##### •	Number of unresolved bugs is insignificant, or they have low priority.
##### •	All tests have been executed.
##### •	All resolved bugs have been re-tested and approved by the QA team.
##### •	Deadline was reached.
##### •	No detected major risk remained un-mitigated.
##### •	Exploratory regression testing must be performed on the Admin section, which includes the "User Management" and "Job" module.

## 1.1.4 Test scope
##### •	Tests in scope: All features of the "User Management" and "Job" module that have been defined in the software requirements specification must be tested: functional testing, GUI testing and API testing.
##### •	Tests not in scope: performance testing, integrations of the "User Management" and "Job" module with other modules, compatibility testing with multiple browsers.

## 1.1.5 Risks detected
##### •	Project Risks: Inexperience of QA team, short deadline for Zephyr Squad trial, unavailability of test environment
##### •	Product risks: Validation constraints on the fields might be too restrictive to the end-user

## 1.1.6 Evaluating entry criteria
### The entry criterias defined in the Test Planning phase have been achieved and the test process can continue.

## 1.2 Test Monitoring and Control
##### Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following status report was generated after the completion of the test cases.
![Screenshot_103](https://user-images.githubusercontent.com/124587607/235625844-2d8fbb83-3fc0-462f-9346-f95ecb17e992.png)

## 1.3 Test Analysis
#### The testing process will be executed based on the above requirements for the User Management and Job modules. The following test conditions were found:
##### - Enter data only for required fields and check if User Management and Job is created/updated;
##### - Enter the data for all available fields and check if the users and jobs are created/updated;
##### - Leave the required fields blank and check if User Management and Job cannot be created/updated;
##### - View User Management and Job  details and verify that they are correct;
##### - See all users and jobs in a list;
##### - Check all validation constraints for fields;
##### - Check all buttons functionality;
##### - Check delete information;

## 1.4 Test Design
##### Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are boundary value analysis, equivalence partitioning and use case testing.
![Test cases](https://user-images.githubusercontent.com/124587607/233123516-0b0d6627-31ae-43ae-a54b-39a1b6eaa4d9.png)
![Test cases 2](https://user-images.githubusercontent.com/124587607/233123556-b83f428b-1e25-4b71-9d5b-33f44df09ec4.png)
#### The test cases with steps can be viewed here: https://github.com/LarisaM16/manual_testing_portofolio/blob/a6a7719a8f305e4006d6c1f9850d90b2a1931a1d/Zephyr%20Test%20Steps%20+%20Executions%20(Jira).pdf
#### For the Dependants API, the following checklist was generated:
## 1.5 Test Implementation

####  The following elements are needed to be ready before the test execution phase begins:
##### • Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
##### • Access to the testing environment is given: Username : Admin | Password : admin123
##### • Cycle summary was created
##### • Test cases were added to the cycle summary
##### • Postman collection with the dependents API methods was created
##### • Authorization token was created for accessing the API
## 1.6 Test Execution
##### Test cases are executed on the created test Cycle summary:
##### Bugs have been created based on the failed tests. The complete bug reports can be found here:
##### API tests are executed based on the checklist. The collection used can be found here: 
##### Full regression testing is needed after the bugs are fixed.
## 1.7 Test Completion
##### Exit criteria was evaluated and passed
##### The traceability matrix was generated and can be found here:
##### Test execution chart was generated, the final report shows that a number 10 tests have failed of a total of 57.
##### A number of 57  test cases were planned for execution and all of them were executed.
##### A number of 12 total bugs were found, whose priorities are: highest and high.
![raport](https://user-images.githubusercontent.com/124587607/233128299-6d8602e0-b726-4f44-b814-e1afcf3b796a.png)
## 2 SQL section
#### I created a database called "orangeHRM_PIM_Module" which contains the following tables: "Employee", "skills", "Work_Experience", "Education", "languages" and "licenses" with all the necessary columns to save the data according to the specifications. I ran different queries inside the SQL file:
https://github.com/LarisaM16/manual_testing_portofolio/blob/58e381e45111dd340906cd6fa489dfb2c00067fb/database.sql
