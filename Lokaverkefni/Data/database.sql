drop database 2801002260_Lokaverkefni_VEF;

create database 2801002260_Lokaverkefni_VEF;

use 2801002260_Lokaverkefni_VEF;

create table Post(
	POST_ID INT unique PRIMARY KEY,
    POST_IMG VARCHAR(100),
    POST_DESC VARCHAR(300),
    USER_ID INT unique,
    foreign key Post(USER_ID) references Notandi(USER_ID)
	
);

CREATE TABLE Pcomment(
	COMMENT_ID INT unique PRIMARY KEY,
    COMMENT_DESC VARCHAR(100),
    POST_ID INT unique,
    foreign key Pcomment(POST_ID) REFERENCES Post(POST_ID)

);

CREATE TABLE Notandi(
	USER_ID INT UNIQUE PRIMARY KEY,
    USER_NAME VARCHAR(50)

);