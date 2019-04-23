use mydb;

INSERT INTO Customer(Customer_id, Customer_username, Customer_password, Customer_fname, Customer_lname, Credit_card, CVC, Expiration_date, Birth_date, Sex, Phone_number, Email, Deleted)
VALUES 	(1, 'sxt168530', '12345', 'Steven', 'Ta', 4344576893849382, 123, 0322, '2019-01-01', 'male', '1234567890', 'sxt168530@utdallas.edu', 0),
        (2, 'axa157730', 'password', 'Afham', 'Ahmed', 8294729488014294, 098, 0724, '2022-02-03', 'male', '2987654321', 'axa157730@utdallas.edu', 0),  
        (3, 'vtm160030', 'admin', 'Victor', 'Mao', 0013784973962271, 728, 0220, '2024-07-01', 'male', '5929017294', 'vtm160030@utdallas.edu', 0), 
        (4, 'mnl150430', 'abc123', 'Matt', 'Le', 8381093487291049, 912, 1122, '2020-11-02', 'male', '9720128934', 'mnl150430@utdallas.edu', 0);
        
INSERT INTO Sale(Sale_id, Beginning_date, End_date, Details)
VALUES 	(187, '2018-04-12', '2018-05-12', '30%OFF'),
		(203, '2018-07-07', '2019-02-07', '50%OFF'),
        (530, '2017-09-02', '2018-10-10', '10%OFF'),
        (812, '2016-01-12', '2017-12-01', '70%OFF'),
        (700, '2019-03-02', '2019-04-07', '40%OFF');
    
INSERT INTO Publisher(Publisher_id, Publisher_name, Publisher_country, Email)
VALUES (9876, 'Santa Monica Studio', 'America','sms@gmail.com'),
       (3423, 'Bandai Namco', 'Japan', 'bn@gmail.com'),
       (2345, 'Activision', 'England', 'act@gmail.com'),
       (2365, 'Nintendo', 'Japan', 'nin@gmail.com'),
       (1234, 'Namco', 'Japan', 'nam@gmail.com');    

INSERT INTO Video_game(Video_game_id, Title, Price, Release_date, Download_size, ESRB_rating, Developer_name, Game_description, System_requirements, Add_on, Installed, Publisher_id, Genre, Number_of_downloads)
VALUES (777, 'God of War', 60, '2018-02-03', 3.3, '18+', 'Santa Monica Studio', '4th installment to the God of War franchise', '1080 GTX', 'none', 'Installed', 9876, 'RPG', 1000000),
       (666, 'Tekken', 50, '2017-03-03', 2.6, '14+', 'Bandai Namco', '7th installment of the game where the Mishima saga comes to an end', '1060 GTX', 'DLC','Installed', 3423, 'Fighting', 700000),
       (555, 'Call of Duty', 60, '2016-05-07', 2.0, '17+', 'Activision', 'All new fps that will blow your mind', '1050 GTX', 'none','Installed', 2345, 'FPS', 1600000),
       (444, 'Super Mario Bros', 20,'1997-06-07', 0.3, '3+', 'Nintendo', 'Classic side scrolling mario game', '256 MB RAM', 'none', 'Installed', 2365, 'Adventure', 100000000),
       (333, 'Street fighter', 40, '2015-02-04', 2.0, '5+', 'Namco', '2D fighting game', '1050 GTX', 'DLC', 'Installed', 1234, 'Fighting', 1000000);
       
INSERT INTO Issue(Issue_id, Issue_type, Issue_description, Submitted_date, Resolved_date)
VALUES 	(120, 'Executable', 'Game crashes on launch', '2016-01-02', '2016-01-04'),
		(412, 'Install', 'Unable to install properly', '2017-07-07', '2017-07-09'),
        (631, 'Executable', 'Game crashes halfway into game', '2018-01-08', '2018-02-01'), 
        (815, 'Visual bug', 'Trouble seeing environment in game', '2019-08-01', '2019-08-10');
        
INSERT INTO Customer_support(Customer_support_id, Customer_support_fname, Customer_support_lname, Email, Is_admin)
VALUES (797, 'Afham', 'Ahmed', 'axa157730@utdallas.edu', 'Yes'),
	   (867, 'Steven', 'Ta', 'sxt168530@utdallas.edu', 'Yes'),
       (197, 'Victor', 'Mao', 'vtm160030@utdallas.edu', 'Yes'),
       (234, 'Matt', 'Le', 'mnl150430@utdallas.edu', 'Yes');
        
        
        

       