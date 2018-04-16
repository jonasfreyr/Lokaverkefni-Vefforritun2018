create database 2801002260_Lokaverkefni;

use 2801002260_Lokaverkefni;

create Table Part(
	PART_NUM int unique,
    PART_DESC varchar(200),
    PART_WEIGHT int,
    PART_SIZE varchar(40)
);