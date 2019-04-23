USE mydb;

-- Query 1: find the number of active customers
SELECT COUNT(*) FROM customer
WHERE Deleted=0;

-- Query 2: find the username, first name, and last name of active customers
SELECT customer_username, customer_fname, customer_lname
FROM mydb.customer
WHERE Deleted=0;

-- Query 3: find the video games that are published by a Japanese publisher
SELECT VG.Title, VG.Price, VG.Release_date, P.Publisher_name, P.Publisher_country
FROM Publisher AS P, Video_game AS VG
WHERE P.Publisher_country='Japan' AND P.Publisher_id=VG.Publisher_id;

-- Query 4: find the total price of all video games broken down by publisher country
SELECT P.Publisher_country, SUM(VG.Price)
FROM Publisher AS P, Video_game AS VG
WHERE P.Publisher_id=VG.Publisher_id
GROUP BY P.Publisher_country;

-- Query 5: find the sales that occured between the dates 04/20/2018 and 05/01/2018 ordered by beginning_date
SELECT Details, Beginning_date, End_Date
FROM Sale
WHERE ((Date('2018-04-20') BETWEEN Beginning_date AND End_date) AND (Date('2018-05-01') BETWEEN Beginning_date AND End_date))
ORDER BY Beginning_date;