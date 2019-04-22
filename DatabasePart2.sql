/*
Sales Table
*/

CREATE TABLE Sale
(
Sale_id varchar (20),
S_name varchar (20),
Beginning_date Date,
End_date Date,
Details varchar (30),
primary key (Sale_id)

);

/*
Customer Table
*/
CREATE TABLE CUSTOMER
(
Customer_id varchar(20),
Username varchar (10),
Customer_Password varchar(15),
Customer_number varchar(10),
Customer_name varchar(10),
CVC int,
Expiration_date Date,
Birth_date Date,
First_name varchar(10),
Last_name varchar(10),
Sex varchar(7),
Phone_number int,
Email varchar(20),
Deleted varchar (10),
primary key (Customer_id)
);

/*
Customer Support table
*/
CREATE TABLE Customer_Suppport
(
Customer_support_id int,
First_name varchar(20),
Last_name varchar(20),
Email varchar (20),
Is_admin varchar(10),
primary key (Customer_support_id)
);

/*
Videgame table
*/
CREATE TABLE Videogame 
(
Video_game_id int,
Title varchar(15),
Price int,
Release_date Date,
Download_size int,
ESRB_rating int,
Developer_name varchar(10),
Game_Description varchar(25),
System_requirements varchar (30),
Add_on varchar(15),
Installed boolean,
Publisher_id int,

primary key (Video_game_id),
foreign key (Publisher_id) references Publisher (Publisher_id)
);

CREATE TABLE Video_game_langauge
(
Video_game_id int,
foreign key (Video_game_id) references Videogame (Video_game_id)
);

CREATE TABLE  Video_game_platform
(
Video_game_id int,
foreign key (Video_game_id) references Videogame (Video_game_id)
);

CREATE TABLE Video_game_genre
(
Video_game_id int,
foreign key (Video_game_id) references Videogame (Video_game_id)
);

CREATE TABLE Publisher
(
Publisher_id int,
Publisher_name varchar(20),
Publisher_country varchar (20),
Email varchar (20),
primary key (Publsiher_id)
);
