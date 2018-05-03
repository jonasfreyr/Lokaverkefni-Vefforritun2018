create database 2801002260_Lokaverkefni_VEF;

use 2801002260_Lokaverkefni_VEF;

create Table Part(
	PART_NUM int unique primary key,
    PART_NAME varchar(30),
    PART_DESC varchar(200),
    PART_WEIGHT int,
    PART_SIZE varchar(40),
    PART_PRICE int,
    PART_AVAIL bool
);

create table Shipment(
	SHIPMENT_NUM int unique primary key,
    SHIPMENT_CONAME varchar(30),
    SHIPMENT_ADDRESS varchar(30),
    SHIPMENT_COUNTRY varchar(30),
    SHIPMENT_ARRIVAL date,
    PART_NUM int unique,
    foreign key (PART_NUM) references Part(PART_NUM)
);

create table Sale(
	SALE_NUM int unique primary key,
    SALE_DATE date,
    PART_NUM int unique,
    SHIPMENT_NUM int unique,
    SALE_TOTAL int,
    foreign key (PART_NUM) references Part(PART_NUM),
    foreign key (SHIPMENT_NUM) references Shipment(SHIPMENT_NUM)
    
);