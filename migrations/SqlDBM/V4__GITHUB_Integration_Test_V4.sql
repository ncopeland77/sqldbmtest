-- *********************** SqlDBM: Snowflake ************************
-- ******************************************************************

CREATE FILE FORMAT FileFormat_19
 TYPE = PARQUET;

-- ************************************** testschema.COMPANY
CREATE TABLE testschema.COMPANY
(
 COMPANY_ID   bigint NOT NULL,
 COMPANY_NAME  NOT NULL,
 CONSTRAINT PK_14 PRIMARY KEY ( COMPANY_ID )
);

-- ************************************** testschema.EMPLOYEE
CREATE TABLE testschema.EMPLOYEE
(
 EMPLOYEE_ID     NOT NULL,
 FIRST_NAME     varchar(100) NOT NULL,
 COMPANY_ID     bigint NOT NULL,
 LAST_NAME      varchar(100) NOT NULL,
 ADDRESS_LINE_1 varchar(512) NOT NULL,
 CITY_NAME      varchar(100) NOT NULL,
 STATE          char(2) NOT NULL,
 POSTAL_CODE    char(5) NOT NULL,
 CONSTRAINT PK_5 PRIMARY KEY ( EMPLOYEE_ID ),
 CONSTRAINT FK_16 FOREIGN KEY ( COMPANY_ID ) REFERENCES testschema.COMPANY ( COMPANY_ID )
);

