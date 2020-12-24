--------------------------------------------------------
--  File created - Wednesday-April-11-2018   
--------------------------------------------------------
DROP TABLE "RAHUL"."DETAILS";
DROP TABLE "RAHUL"."EXPENSES";
DROP TABLE "RAHUL"."SETTING";
DROP TABLE "RAHUL"."SIGNUP";
DROP TABLE "RAHUL"."STAFF";
DROP TABLE "RAHUL"."USERR";
--------------------------------------------------------
--  DDL for Table DETAILS
--------------------------------------------------------

  CREATE TABLE "RAHUL"."DETAILS" 
   (	"USERNAME" VARCHAR2(20 BYTE), 
	"NAMEE" VARCHAR2(20 BYTE), 
	"AGE" NUMBER(30,0), 
	"MOBILENO" NUMBER(10,0), 
	"GENDER" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EXPENSES
--------------------------------------------------------

  CREATE TABLE "RAHUL"."EXPENSES" 
   (	"USERNAME" VARCHAR2(20 BYTE), 
	"INCOME" NUMBER(10,0), 
	"FOOD" NUMBER(30,0), 
	"TRAVEL" NUMBER(10,0), 
	"MEDICAL" NUMBER(10,0), 
	"LOAN" NUMBER(10,0), 
	"SHOPPING" NUMBER(10,0), 
	"EDUCATION" NUMBER(10,0), 
	"OTHERSS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SETTING
--------------------------------------------------------

  CREATE TABLE "RAHUL"."SETTING" 
   (	"USERNAME" VARCHAR2(20 BYTE), 
	"FOOD" NUMBER(30,0), 
	"TRAVEL" NUMBER(10,0), 
	"MEDICAL" NUMBER(10,0), 
	"LOAN" NUMBER(10,0), 
	"SHOPPING" NUMBER(10,0), 
	"EDUCATION" NUMBER(10,0), 
	"OTHERSS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SIGNUP
--------------------------------------------------------

  CREATE TABLE "RAHUL"."SIGNUP" 
   (	"NAMEE" CHAR(20 BYTE), 
	"EMAIL" CHAR(30 BYTE), 
	"USERNAME" CHAR(20 BYTE), 
	"PWD" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

  CREATE TABLE "RAHUL"."STAFF" 
   (	"STAFF_ID" NUMBER(7,0), 
	"STAFF_NAME" VARCHAR2(10 BYTE), 
	"DEPARTMENT" VARCHAR2(10 BYTE), 
	"SPECIALIZATION_SUBJECT" VARCHAR2(10 BYTE), 
	"STATUS" VARCHAR2(10 BYTE), 
	"EMIAL" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERR
--------------------------------------------------------

  CREATE TABLE "RAHUL"."USERR" 
   (	"USERNAME" CHAR(20 BYTE), 
	"NAMEE" CHAR(20 BYTE), 
	"PASSSWORD" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into RAHUL.DETAILS
SET DEFINE OFF;
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('RAJA','raja',20,9437294829,'M');
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('raju','raju',20,9573038383,'M');
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('SAKETH','sai',19,9848918446,'M');
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('PRANAY','Pranay',20,9003877526,'M');
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('RAHUL','sai rahul',20,9573038383,'M');
Insert into RAHUL.DETAILS (USERNAME,NAMEE,AGE,MOBILENO,GENDER) values ('RAKESH','rakesh',19,9573038383,'M');
commit;
REM INSERTING into RAHUL.EXPENSES
SET DEFINE OFF;
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAJA',20000,400,240,150,200,1000,600,180);
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('raju',0,0,0,0,0,0,0,0);
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('SAKETH',1000,91,0,0,51,0,0,0);
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('PRANAY',8000,100,10,60,10,10,10,410);
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAKESH',1000,50,0,100,0,0,0,0);
Insert into RAHUL.EXPENSES (USERNAME,INCOME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAHUL',2150,850,551,23,0,0,23,0);
commit;
REM INSERTING into RAHUL.SETTING
SET DEFINE OFF;
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('raju',10,10,10,10,10,10,10);
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('SAKETH',10,10,10,10,10,10,10);
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('PRANAY',10,4,15,20,14,39,1);
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAHUL',10,15,10,10,10,10,10);
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAKESH',10,10,10,10,10,10,10);
Insert into RAHUL.SETTING (USERNAME,FOOD,TRAVEL,MEDICAL,LOAN,SHOPPING,EDUCATION,OTHERSS) values ('RAJA',10,10,10,10,10,10,10);
commit;
REM INSERTING into RAHUL.SIGNUP
SET DEFINE OFF;
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('saketh              ','rqhul38@gmail.com             ','SAKETH              ','nullWffmzq>>>       ');
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('raju                ','rqhul38@gmail.com             ','RAJU                ','nullWffmzq>>>       ');
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('RAHUL               ','rqhul38@gmail.com             ','RAHUL               ','nullWffmzq>>>       ');
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('pranay              ','mannampranay2015@gmail.com    ','PRANAY              ','nullWffmzq>>>       ');
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('RAKESH              ','rqhul38@gmail.com             ','RAKESH              ','nullWffmzq>>>       ');
Insert into RAHUL.SIGNUP (NAMEE,EMAIL,USERNAME,PWD) values ('RAJA                ','rqhul38@gmail.com             ','RAJA                ','nullWffmzq>>>       ');
commit;
REM INSERTING into RAHUL.STAFF
SET DEFINE OFF;
REM INSERTING into RAHUL.USERR
SET DEFINE OFF;
Insert into RAHUL.USERR (USERNAME,NAMEE,PASSSWORD) values ('cxc                 ','cxc                 ','cxc                 ');
commit;