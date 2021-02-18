#CREATE DATABASE 2018ucs0086_assign1;
#SHOW DATABASES;
#-------------------------------------------------Assignment-1-----------------------------------------------------
USE 2018ucs0086_assign1;

#CREATE TABLE student (S_ID int NOT NULL AUTO_INCREMENT,S_NAME varchar(30),D_NAME varchar(10),TOT_CRED int , PRIMARY KEY (S_ID));

#CREATE TABLE instructor (INST_ID int,INST_NAME varchar(30),D_NAME varchar(30),SAL int);

#CREATE TABLE course (C_ID VARCHAR(10),TITLE VARCHAR(50),D_NAME VARCHAR(50),CRED INT );

#CREATE TABLE takes (S_ID INT,C_ID VARCHAR(10),SEC_ID INT,SEM VARCHAR(15),YEAR INT,GRADE INT);

#CREATE TABLE teaches (INST_ID INT,C_ID VARCHAR(20),SEC_ID INT,SEM VARCHAR(20),YEAR INT);

#CREATE TABLE department (D_NAME VARCHAR(20),BUILDING VARCHAR(20) ,BUDGET INT);

#CREATE TABLE section(C_ID varchar(15),SEC_ID varchar(8),SEM varchar(8),YEAR numeric(4,0));

#INSERT INTO student (S_ID, S_NAME, D_NAME, TOT_CRED) VALUES ('00128','Zhang','Comp. Sci.',102), ('12345','Shankar','Comp. Sci.',32), ('19991','Brandt','History',80), ('23121','Chavez','Finance',110), ('44553','Peltier','Physics',56), ('45678','Levy','Physics',46), ('54321','Williams','Comp. Sci.',54),('55739','Sanchez','Music',38), ('70557','Snow','Physics',0), ('76543','Brown','Comp. Sci.',58), ('76653','Aoi','Elec. Eng.',60), ('98765','Bourikas','Elec. Eng.',98), ('98988','Tanaka','Biology',120);

#INSERT INTO instructor (INST_ID, INST_NAME, D_NAME, SAL ) VALUES ('22222','Einstein','Physics',95000), ('12121','Wu','Finance',90000), ('32343','El Said','History',60000), ('45565','Katz','Comp. Sci.',75000), ('98345','Kim','Elec. Eng.',80000), ('76766','Crick','Biology',72000), ('10101','Srinivasan','Comp. Sci.',65000), ('58583','Califieri','History',62000), ('83821','Brandt','Comp. Sci.',92000), ('15151','Mozart','Music',40000), ('33456','Gold','Physics',87000), ('76543','Singh','Finance',80000);

#INSERT INTO course ( C_ID, TITLE, D_NAME, CRED) VALUES ('BIO-101','Intro. to Biology','Biology',4), ('BIO-301','Genetics','Biology',4), ('BIO-399','Computational Biology','Biology',3), ('CS-101','Intro. to Computer Science','Comp. Sci.',4), ('CS-190','Game Design','Comp. Sci.',4), ('CS-315','Robotics','Comp. Sci.',3), ('CS-319','Image Processing','Comp. Sci.',3), ('CS-347','Database System Concepts','Comp. Sci.',3), ('EE-181','Intro. to Digital Systems','Elec. Eng.',3), ('FIN-201','Investment Banking','Finance',3), ('HIS-351','World History','History',3);

#INSERT INTO department (D_NAME, BUILDING, BUDGET) VALUES('Biology', 'Watson', '90000'), ('Comp. Sci.', 'Taylor', '100000'), ('Elec. Eng.', 'Taylor', '85000'), ('Finance', 'Painter', '120000'), ('History', 'Painter', '50000'), ('Music', 'Packard', '80000'), ('Physics', 'Watson', '70000');

#INSERT INTO takes (S_ID, C_ID, SEC_ID, SEM, YEAR, GRADE) VALUES ('00128', 'CS-101', '1', 'Fall', '2009', '10'), ('00128', 'CS-347', '1', 'Fall', '2009', '9'), ('12345', 'CS-101', '1', 'Fall', '2009', '5'), ('12345', 'CS-190', '2', 'Spring', '2009', '10'), ('12345', 'CS-315', '1', 'Spring', '2010', '10'), ('12345', 'CS-347', '1', 'Fall', '2009', '10'), ('19991', 'HIS-351', '1', 'Spring', '2010', '7'), ('23121', 'FIN-201', '1', 'Spring', '2010', '6'), ('44553', 'PHY-101', '1', 'Fall', '2009', '6.5'), ('45678', 'CS-101', '1', 'Fall', '2009', '3'), ('45678', 'CS-101', '1', 'Spring', '2010', '8'), ('45678', 'CS-319', '1', 'Spring', '2010', '7'), ('54321', 'CS-101', '1', 'Fall', '2009', '9'), ('54321', 'CS-190', '2', 'Spring', '2009', '8'), ('55739', 'MU-199', '1', 'Spring', '2010', '9'), ('76543', 'CS-101', '1', 'Fall', '2009', '10'), ('76543', 'CS-319', '2', 'Spring', '2010', '10'), ('76653', 'EE-181', '1', 'Spring', '2009', '5'), ('98765', 'CS-101', '1', 'Fall', '2009', '4'), ('98765', 'CS-315', '1', 'Spring', '2010', '7'), ('98988', 'BIO-101', '1', 'Summer', '2009', '9'),  ('98988', 'BIO-301', '1', 'Summer', '2010', null);

#INSERT INTO teaches(INST_ID, C_ID, SEC_ID, SEM, YEAR) VALUES ('10101', 'CS-101', '1', 'Fall', '2009'), ('10101', 'CS-315', '1', 'Spring', '2010'), ('10101', 'CS-347', '1', 'Fall', '2009'), ('12121', 'FIN-201', '1', 'Spring', '2010'), ('15151', 'MU-199', '1', 'Spring', '2010'), ('22222', 'PHY-101', '1', 'Fall', '2009'), ('32343', 'HIS-351', '1', 'Spring', '2010'), ('45565', 'CS-101', '1', 'Spring', '2010'), ('45565', 'CS-319', '1', 'Spring', '2010'), ('76766', 'BIO-101', '1', 'Summer', '2009'), ('76766', 'BIO-301', '1', 'Summer', '2010'), ('83821', 'CS-190', '1', 'Spring', '2009'), ('83821', 'CS-190', '2', 'Spring', '2009'), ('83821', 'CS-319', '2', 'Spring', '2010'), ('98345', 'EE-181', '1', 'Spring', '2009');

#INSERT INTO section (C_ID, SEC_ID, SEM, YEAR) VALUES ('BIO-101', '1', 'Summer', '2009') , ('BIO-301', '1', 'Summer', '2010'), ('CS-101', '1', 'Fall', '2009'), ('CS-101', '1', 'Spring', '2010'), ('CS-190', '1', 'Spring', '2009'), ('CS-190', '2', 'Spring', '2009'), ('CS-315', '1', 'Spring', '2010'), ('CS-319', '1', 'Spring', '2010'), ('CS-319', '2', 'Spring', '2010'), ('CS-347', '1', 'Fall', '2009'), ('EE-181', '1', 'Spring', '2009'), ('FIN-201', '1', 'Spring', '2010'), ('HIS-351', '1', 'Spring', '2010'), ('MU-199', '1', 'Spring', '2010'), ('PHY-101', '1', 'Fall', '2009');

#ALTER TABLE section ADD building VARCHAR(270) AFTER SEC_ID;

#UPDATE section SET building='Painter' WHERE C_ID='BIO-101';
#UPDATE section SET building='Painter' WHERE C_ID='BIO-301';
#UPDATE section SET building='Packard' WHERE C_ID='CS-101';
#UPDATE section SET building='Taylor' WHERE C_ID='CS-190';
#UPDATE section SET building='Watson' WHERE C_ID='CS-315';
#UPDATE section SET building='Watson' WHERE C_ID='CS-319';
#UPDATE section SET building='Taylor' WHERE C_ID='CS-319'&& SEC_ID="2";
#UPDATE section SET building='Taylor' WHERE C_ID='CS-347';
#UPDATE section SET building='Taylor' WHERE C_ID='EE-181';
#UPDATE section SET building='Packard' WHERE C_ID='FIN-201';
#UPDATE section SET building='Painter' WHERE C_ID='HIS-351';
#UPDATE section SET building='Packard' WHERE C_ID='MU-199';
#UPDATE section SET building='Watson' WHERE C_ID='PHY-101';


#SELECT * FROM section;

#-------------------------------------------------Assignment-2-----------------------------------------------------

#QUERY-1
SELECT CONCAT(D_NAME,' ',BUDGET) AS department_name_budget FROM department ORDER BY department_name_budget;
#SELECT D_NAME, BUDGET FROM department AS department_name_budget;

#QUERY-2
SELECT S_ID AS StudentID, S_NAME AS StudentName FROM student;

#QUERY-3
UPDATE student SET S_ID = S_ID + 1;
SELECT S_ID FROM student;
UPDATE student SET S_ID = S_ID - 1; #to set it back to original
SELECT S_ID FROM student;

#QUERY-4
SELECT CRED FROM course;
UPDATE course SET CRED = CRED + 1;
SELECT CRED FROM course;
UPDATE course SET CRED = CRED - 1; #to set it back to original
SELECT CRED FROM course; 


#QUERY-5
CREATE TEMPORARY TABLE temp (S_id INT, S_name VARCHAR(25));
INSERT INTO temp VALUES ('86','AYUSHI VERMA');
SELECT * FROM temp;
INSERT INTO temp(S_id, S_name) VALUES ('87','ARAV'),('76','VINAY'),('43', 'ANJALEE');
SELECT * FROM temp;
DELETE FROM temp where S_id not in ('86');
SELECT * FROM temp;

#QUERY-6
SELECT C_ID, TITLE from course;
DELETE FROM course where C_ID = 'BIO-101';
SELECT C_ID, TITLE from course; #shows the C_ID and the TITLE without the entry of BIO-101
INSERT INTO course VALUES('BIO-101','Intro. to Biology','Biology',4); #to insert back

#QUERY-7
SELECT * FROM course;
DELETE FROM course where C_ID = 'BIO-301' && D_NAME='Biology';
SELECT * FROM course;
INSERT INTO course VALUES('BIO-301','Genetics','Biology',4); #to insert back

#QUERY-8
INSERT INTO course VALUES('BIO-301','Genetics','Biology',4);
SELECT * FROM course;
DELETE FROM course where C_ID = 'BIO-301' && D_NAME='Biology' && CRED='4';
SELECT * FROM course;
INSERT INTO course VALUES('BIO-301','Genetics','Biology',4); #to insert back

#QUERY-9
INSERT INTO course VALUES('BIO-301','Genetics','Biology',4);
SELECT * FROM course;
DELETE FROM course where C_ID = 'BIO-301' OR D_NAME='Biology'; # HERE ALL THE COURSES WITH D_NAME AS Biology ARE DELETED
SELECT * FROM course;
INSERT INTO course( C_ID, TITLE, D_NAME, CRED) VALUES('BIO-301','Genetics','Biology',4), ('BIO-399','Computational Biology','Biology',3); #to insert back

#QUERY-10
#first getting the original table of course back, inserted back the values
#INSERT INTO course( C_ID, TITLE, D_NAME, CRED) VALUES ('BIO-101','Intro. to Biology','Biology',4),('BIO-301','Genetics','Biology',4), ('BIO-399','Computational Biology','Biology',3);
SELECT * FROM course;
DELETE FROM course where C_ID = 'BIO-301' AND D_NAME='Biology' OR CRED='4'; # HERE ALL THE COURSES WITH D_NAME AS Biology AND C_ID='BIO-301' OR CRED='4' ARE DELETED
SELECT * FROM course;
INSERT INTO course( C_ID, TITLE, D_NAME, CRED) VALUES ('BIO-101','Intro. to Biology','Biology',4),('BIO-301','Genetics','Biology',4), ('CS-101','Intro. to Computer Science','Comp. Sci.',4), ('CS-190','Game Design','Comp. Sci.',4); #TO INSERT BACK
