-- QACompany - database setup script

USE master;
GO
DROP DATABASE IF EXISTS qacompany;
GO
CREATE DATABASE qacompany;
GO
USE qacompany;
GO


CREATE TABLE region
	(
	region_id INT NOT NULL,
	region_name VARCHAR(25) NOT NULL,
	PRIMARY KEY (region_id)
	);

INSERT INTO region (region_id,region_name)
	VALUES (1,'Americas');
INSERT INTO region (region_id,region_name)
	VALUES (2,'Europe');
INSERT INTO region (region_id,region_name)
	VALUES (3,'Middle East');
INSERT INTO region (region_id,region_name)
	VALUES (4,'Asia');

CREATE TABLE country
	(
	country_id CHAR(2) NOT NULL,
	country_name VARCHAR(40) NOT NULL,
	region_id INT NOT NULL,
	PRIMARY KEY (country_id),
	FOREIGN KEY (region_id) REFERENCES region (region_id)
	);

INSERT INTO country (country_id,country_name,region_ID)
	VALUES ('CA','Canada',1);
INSERT INTO country (country_id,country_name,region_ID)
	VALUES ('FR','France',2);
INSERT INTO country (country_id,country_name,region_ID)
	VALUES ('GE','Germany',2);
INSERT INTO country (country_id,country_name,region_ID)
	VALUES ('UK','United Kingdom',2);
INSERT INTO country (country_id,country_name,region_ID)
	VALUES ('US','United States of America',1);

CREATE TABLE location
(
location_id INT NOT NULL,
street_address VARCHAR(40) NOT NULL,
city VARCHAR(30) NULL,
postal_code VARCHAR(12) NULL,
state_province_county VARCHAR(25) NULL,
country_id CHAR(2) NOT NULL,
PRIMARY KEY (location_id),
FOREIGN KEY (country_id) REFERENCES country (country_id)
);

INSERT INTO location (location_id,street_address,city,postal_code,state_province_county,country_id)
	VALUES (1100,'245 The Fleet','Toronto','ON M3F 4GA','Ontario','CA');
INSERT INTO location (location_id,street_address ,city,postal_code,state_province_county,country_id)
	VALUES (1200,'155 South Street','Gloucester','GL5 2DD','Gloucestershire','UK');
INSERT INTO location (location_id,street_address ,city,postal_code,state_province_county,country_id)
	VALUES (1700,'560 Kings Road','San Francisco','66432','California','US');
INSERT INTO location (location_id,street_address ,city,postal_code,state_province_county,country_id)
	VALUES (1900,'1010 Rodeo Drive','San Antone','45294','Texas','US');
INSERT INTO location (location_id,street_address ,city,postal_code,state_province_county,country_id)
	VALUES (2000,'19 Church Road','Brighton','BN2 5SF','East Sussex','UK');

CREATE TABLE dept
	(
	dept_no INT NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	manager_id INT NULL,
	location_id INT NOT NULL,
	PRIMARY KEY (dept_no),
	FOREIGN KEY (location_id) REFERENCES location (location_id)
	);

INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (10,'Marketing',100,1200);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (20,'Administration',200,1700);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id) 
	VALUES (30,'Accounting',110,1700);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id) 
	VALUES (50,'IT',107,2000);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (60,'Sales',150,1900);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (70,'Shipping',250,1100);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (80,'Finance',125,1700);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (90,'Management',130,1700);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (110,'Human Resources',122,1700);
INSERT INTO dept(dept_no,dept_name,manager_id,location_id)
	VALUES (190,'Manufacturing',160,1100);

CREATE TABLE job
	(
	job_id VARCHAR(10) NOT NULL,
	job_title VARCHAR(35) NOT NULL,
	min_salary INT NULL,
	max_salary INT NULL,
	PRIMARY KEY (job_id)
	);

INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AC_ACCOUNT','Accountant',8500,25000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AC_CLERK','Accounts Clerk',5000,11500);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AC_MGR','Accounts Manager',10000,25000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AD_ASST','Administration Assistant',4500,15000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AD_CLERK','Administration Clerk',4500,12000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('AD_MGR','Administration Manager',20000,30000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('CO_CHAIR','Company Chairman',100000,200000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('CO_DIR','Company Director',30000,100000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('FN_CLERK','Finance Clerk',6000,11000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('FN_MGR','Finance Manager',13000,25000);
INSERT INTO job (job_id ,job_title,min_salary, max_salary)
	VALUES ('HR_CLERK','Human Resources Clerk',10000,15000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('HR_MGR','Human Resources Manager',30000,50000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('IT_MGR','IT Manager',40000,60000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('IT_PROG','Programmer',15000,25000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('MK_MGR','Marketing Manager',10500,17500);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('MK_REP','Marketing Representative',4490,11000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('PC_CLERK','Purchase Clerk',4000,8000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('PC_MGR','Purchase Manager',4600,15000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('SA_MGR','Sales Manager',10000,20000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('SA_REP','Sales Representative',4000,13000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('SH_CLERK','Shipping Clerk',8000,12500);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('SH_MGR','Shipping Manager',20000,25000);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('ST_CLERK','Stock Clerk',4400,10500);
INSERT INTO job (job_id ,job_title,min_salary,max_salary)
	VALUES ('ST_MGR','Stock Manager',6900,12000);

CREATE TABLE employee
	(
	employee_no INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	email VARCHAR(25) NULL,
	phone_number VARCHAR(20) NULL,
	hire_date DATETIME NULL,
	job_id VARCHAR(10) NOT NULL,
	annual_salary DECIMAL(8,2) NULL,
	commission_percent DECIMAL(2,2) NULL,
	manager_id INT NULL,
	dept_no INT NOT NULL,
	PRIMARY KEY (employee_no ),
	FOREIGN KEY (job_id) REFERENCES job (job_id),
    FOREIGN KEY (dept_no) REFERENCES dept (dept_no)
	);

INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (100,'David','Polanski','DPOLANSKI','555 324 190','1999-11-16','MK_MGR',17000,NULL,100,10);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (102,'RiCHARd','Molavi','RMOLAVI','215 665 245','1992-06-02','CO_DIR',45000,NULL,130,90);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (107,'Megan','Williams','MWILLIAMS','111 987 245','1993-03-13','IT_MGR',45000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (110,'William','Clifford','WCLIFFORD','222 456 666','1996-05-12','AC_MGR',20000,NULL,110,30);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (112,'Robert','Meadows','RMEADOWS','555 324 162','1998-08-26','MK_REP',8000,NULL,100,10);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (115,'James','Marsh','JMARSH','222 456 133','1999-04-16','AC_CLERK',7250,NULL,110,30);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (119,'James','Miles','JMILES','444 232 090','1990-05-16','SA_REP',10000,0.25,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (120,'Joseph','Sanders','JSANDERS','222 456 266','1997-08-12','AC_CLERK',10750,NULL,110,30);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (122,'Julie','Whittaker','JWHITTAKER','532 555 160','1986-11-10','HR_MGR',35000,NULL,122,110);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (123,'Adrian','Davis','ADAVIS','444 232 222','1990-01-19','SA_REP',9000,0.2,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (125,'Linda','Yorke','LYORKE','888 666 111','1986-02-19','FN_MGR',24500,NULL,125,80);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (126,'Fiona','Kelso','FKELSO','345 222 266','1997-07-03','ST_CLERK',8200,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (130,'Adrian','Marsh','AMARSH','555 555 511','1988-03-01','CO_CHAIR',150000,NULL,NULL,90);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (131,'Martyn','Holmes','MHOLMES','345 222 111','1998-04-25','ST_CLERK',8000,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (132,'Marie-Lisa','Johannsson','MJOHANSSON','345 222 142','1997-03-19','ST_CLERK',8200,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (133,'Nelson','Hadlow','NHADLOW','111 987 110','1991-05-21','IT_PROG',16500,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (135,'John','Lugini','JLUGINI','345 222 192','1996-05-04','ST_CLERK',7800,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (138,'Ramirez','Damatos','RDAMATOS','345 222 233','1998-09-28','ST_CLERK',9500,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (139,'Kelly','Wight','KWIGHT','345 222 335','1999-02-02','ST_CLERK',7500,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (141,'George','Diamond','GDIAMOND','345 222 121','1997-11-15','ST_CLERK',8000,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (142,'Joanna','Neilson','JNEILSON','444 232 115','1998-03-24','SA_REP',7000,0.10,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (143,'Joshua','Bitton','JBITTON','444 232 129','1999-02-06','SA_REP',8400,0.15,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (145,'Jayne','Berry','JBERRY','444 232 120','1998-05-29','SA_REP',10200,0.30,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (146,'Everton','Miles','EMILES','444 232 130','1999-05-29','SA_REP',9100,0.20,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (147,'Colin','Weston','CWESTON','444 232 132','1999-07-05','SA_REP',12000,0.30,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (148,'Jennifer','Wilmott','JWILMOTT','444 232 134','1997-12-15','SA_REP',11500,0.25,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (149,'Roberto','Mace','RMACE','111 987 124','1996-02-06','IT_PROG',22000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (150,'Wayne','Hartmore','WHARTMORE','444 232 135','1998-03-16','SA_MGR',10000,0.30,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (152,'Graeme','Davis','GDAVIS','444 232 136','1996-09-14','SA_REP',9500,0.25,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (154,'Patrick','Connor','PCONNOR','444 232 138','1997-11-08','SA_REP',8900,0.20,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (155,'Peter','Court','PCOURT','111 987 130','1989-01-04','IT_PROG',17950,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (156,'Natalie','French','NFRENCH','444 232 140','1997-02-19','SA_REP',8100,0.15,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (159,'Josephine','Trotter','JTROTTER','111 987 132','1995-10-19','IT_PROG',18000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (160,'Trevor','Mills','TMILLS','345 222 255','1986-01-01','ST_MGR',11000,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (166,'Joanna','Repetto','JREPETTO','111 987 128','1990-09-30','IT_PROG',16000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (169,'Michelle','Caprice','MCAPRICE','444 232 142','1997-04-16','SA_REP',7100,0.10,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (170,'Jackie','Matthews','JMATTHEWS','111 987 120','1997-08-05','IT_PROG',24000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (172,'Lucy','Acreman','LACREMAN','111 987 125','1991-04-16','IT_PROG',18000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (174,'Justin','Monroe','JMONROE','111 987 126','1990-04-02','IT_PROG',17500,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (175,'Jose','Martinez','JMARTINEZ','111 987 134','1997-11-06','IT_PROG',16000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (177,'Kelvin','Betteridge','KBETTERIDGE','111 987 136','1998-12-05','IT_PROG',17500,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (179,'Rosa','Dambridge','RDAMBRIDGE','215 665 130','1998-11-15','CO_DIR',50000,NULL,130,90);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (180,'Germaine','Nicholls','GNICHOLLS','665 239 155','1999-12-07','AD_CLERK',6500,NULL,200,20);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (182,'Florence','Wilkins','FWILKINS','222 456 190','1987-11-30','AC_ACCOUNT',23000,NULL,110,30);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (185,'Ben','Nolan','BNOLAN','444 232 125','1998-10-01','SA_REP',9500,0.20,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (195,'Marion','Weiss','MWEISS','345 222 165','1998-08-26','ST_CLERK',6500,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (196,'Joan','Sharma','JSHARMA','555 324 155','1993-10-24','MK_REP',9500,NULL,100,10);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (198,'Elaine','Cotton','ECOTTON','532 555 190','1986-04-21','HR_CLERK',14990,NULL,122,110);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (200,'Loraine','Merton','LMERTON','665 239 989','1987-09-16','AD_MGR',25000,NULL,200,20);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (202,'Abigail','Wise','AWISE','665 239 275','1991-09-27','AD_ASST',25000,NULL,200,20);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (204,'Gregory','Lambert','GLAMBERT','888 666 250','1992-01-05','FN_CLERK',10200,NULL,125,80);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (205,'Rachel','Christy','RCHRISTY','222 456 188','1994-10-17','PC_CLERK',7500,NULL,110,30);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (206,'Edward','Laslo','ELASLO','333 111 435','1987-12-09','SH_CLERK',11800,NULL,250,70);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (208,'Frances','Goodwin','FGOODWIN','345 222 200','1988-09-21','ST_CLERK',10000,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (210,'Stuart','Macffrey','SMACFFREY','345 222 220','1989-05-03','ST_CLERK',9800,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (212,'James','Watson','JWATSON','345 222 224','1993-02-16','ST_CLERK',10000,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (214,'Nancy','Watts','NWATTS','111 987 495','1999-05-12','IT_PROG',22000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (220,'Margaret','Tetbury','MTETBURY','111 987 888','1998-01-24','IT_PROG',21000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (222,'Peter','Bown','PBOWN','111 987 777','1997-05-05','IT_PROG',19000,NULL,107,50);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (224,'John','Pench','JPENCH','444 232 190','1999-07-12','SA_REP',13000,0.15,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (236,'William','Avery','WAVERY','444 232 135','1994-01-31','SA_REP',9000,0.20,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (240,'Byron','Elliott','BELLIOTT','345 222 333','1990-10-18','ST_CLERK',9800,NULL,160,190);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no)
	VALUES (245,'Gillian','Barnes','GBARNES','444 232 215','1992-09-03','SA_REP',9800,0.25,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (246,'Janet','Reismaster','JREISMASTER','444 232 220','1989-10-08','SA_REP',10500,0.25,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (250,'Tony','Luigi','TLUIGI','333 111 120','1985-12-02','SH_MGR',25000,NULL,250,70);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (255,'Tracey','Hart','THART','444 232 200','1990-05-14','SA_REP',12000,0.30,150,60);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (260,'Jessica','Flowers','JFLOWERS','555 324 120','1992-02-06','MK_REP',10500,NULL,100,10);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (266,'Pamela','Rogers','PROGERS','532 555 200','1989-04-17','HR_CLERK',15000,NULL,122,110);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (267,'Thomas','Klein','TKLEIN','532 555 121','1991-11-15','HR_CLERK',14200,NULL,122,110);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (274,'Ian','Holland','IHOLLAND','888 666 260','1991-06-06','FN_CLERK',8500,NULL,125,80);
INSERT INTO employee (employee_no,first_name,last_name,email,phone_number,hire_date,job_id,annual_salary,commission_percent,manager_id,dept_no) 
	VALUES (275,'Melissa','Powers','MPOWERS','555 324 222','1989-06-18','MK_REP',10900,NULL,100,10);

-- Check contents of tables

SELECT * FROM region;
SELECT * FROM country;
SELECT * FROM location;
SELECT * FROM dept;
SELECT * FROM job;
SELECT * FROM employee;