CREATE SCHEMA IF NOT EXISTS mydb;

USE mydb;

/*
Sales Table
*/

CREATE TABLE IF NOT EXISTS Sale
(
Sale_id varchar (20),
Sale_name varchar (20),
Beginning_date Date,
End_date Date,
Details varchar (30),
primary key (Sale_id)

);

/*
Customer Table
*/
CREATE TABLE IF NOT EXISTS Customer
(
Customer_id varchar(20),
Customer_username varchar (10),
Customer_password varchar(15),
Customer_number varchar(10),
Customer_fname varchar(10),
Customer_lname varchar(10),
Credit_card varchar(20),
CVC int,
Expiration_date Date,
Birth_date Date,
Sex varchar(7),
Phone_number int,
Email varchar(20),
Deleted tinyint,
primary key (Customer_id)
);

/*
Customer Support table
*/
CREATE TABLE IF NOT EXISTS Customer_support
(
Customer_support_id varchar(20),
Customer_support_fname varchar(20),
Customer_support_lname varchar(20),
Email varchar (20),
Is_admin tinyint,
primary key (Customer_support_id)
);

CREATE TABLE IF NOT EXISTS Publisher
(
Publisher_id varchar(20),
Publisher_name varchar(20),
Publisher_country varchar (20),
Email varchar (20),
primary key (Publisher_id)
);

CREATE TABLE IF NOT EXISTS Issue
(
Issue_id varchar(20),
Issue_type varchar(20),
Issue_description varchar(100),
Submitted_date date,
Resolved_date date,
primary key (Issue_id)
);

/*
Video game table
*/
CREATE TABLE IF NOT EXISTS Video_game 
(
Video_game_id varchar(20),
Title varchar(30),
Price float,
Release_date Date,
Download_size int,
ESRB_rating varchar(10),
Developer_name varchar(10),
Game_description varchar(100),
System_requirements varchar (200),
Add_on varchar(15),
Installed tinyint,
Publisher_id varchar(20),
Genre varchar(10),
Number_of_downloads int,
primary key (Video_game_id),
foreign key (Publisher_id) references Publisher (Publisher_id)
);

CREATE TABLE IF NOT EXISTS Video_game_langauge
(
Video_game_id varchar(20),
foreign key (Video_game_id) references Video_game (Video_game_id)
);

CREATE TABLE IF NOT EXISTS Video_game_platform
(
Video_game_id varchar(20),
foreign key (Video_game_id) references Video_game (Video_game_id)
);

CREATE TABLE IF NOT EXISTS Video_game_genre
(
Video_game_id varchar(20),
foreign key (Video_game_id) references Video_game (Video_game_id)
);
