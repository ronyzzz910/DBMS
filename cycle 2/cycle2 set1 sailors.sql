create database cycle2;
CREATE TABLE SAILORS
(
SID INT,
SNAME VARCHAR(25),
RATING INT,
AGE INT
);
DESCRIBE SAILORS;
CREATE TABLE BOATS
(
BID INT,
BNAME VARCHAR(25),
COLOR VARCHAR(25)
);
DESCRIBE BOATS;
CREATE TABLE RESERVES
(
SID INT,
BID INT,
DAY DATE
);
DESCRIBE RESERVES;
INSERT INTO SAILORS (SID,SNAME,RATING,AGE)VALUES(22,'DUSTIN',7,45),(29,'BRUTAS',1,33),(31,'LUBBER',8,55),(32,'ANDY',8,25),(58,'RUSTY',10,35),(64,'HORATIO',7,35),(71,'ZORBA',10,16),(74,'HORATIO',9,35),(85,'ART',3,26),(95,'BOB',3,64);
SELECT * FROM SAILORS;
INSERT INTO BOATS(BID,BNAME,COLOR)VALUES(101,'INTERLAKE','BLUE'),(102,'INTERLAKE','RED'),(103,'CLIPPER','GREEN'),(104,'MARINE','RED');
SELECT * FROM BOATS;
INSERT INTO RESERVES VALUES
   (22, 101, '98-10-10'),
   (22, 102, '98-10-10'),
   (22, 103, '98-08-10'),
   (22, 104, '98-07-10'),
   (31, 102, '98-10-11'),
   (31, 103, '98-06-11'),
   (31, 104, '98-12-11'),
   (64, 101, '98-05-09'),
   (64, 102, '98-08-09'),
   (74, 103, '98-08-09');
 SELECT sname, age FROM sailors;
  SELECT * FROM SAILORS,RESERVES WHERE SAILORS.SID = RESERVES.SID AND BID = 101;
  SELECT sname FROM SAILORS WHERE rating > 7;
  SELECT sname FROM SAILORS,RESERVES WHERE bid = 103 AND sailors.sid = reserves.sid;
  SELECT DISTINCT sname FROM SAILORS,RESERVES,BOATS WHERE color = 'Red'AND boats.bid = reserves.bid 
AND sailors.sid = reserves.sid ORDER BY AGE;
SELECT DISTINCT sname FROM SAILORS,RESERVES,BOATS WHERE ( color = 'Red'OR color = 'Green') 
AND boats.bid = reserves.bid AND sailors.sid = reserves.sid;
SELECT DISTINCT sname FROM SAILORS,RESERVES,BOATS WHERE ( color = 'Red'OR color = 'Green') 
AND boats.bid = reserves.bid AND sailors.sid = reserves.sid;
SELECT DISTINCT sname FROM SAILORS,RESERVES,BOATS WHERE color = 'Red'AND
boats.bid = reserves.bid AND sailors.sid = reserves.sid;
SELECT DISTINCT sname FROM SAILORS,RESERVES WHERE reserves.sid = sailors.sid;
SELECT sname,reserves.sid FROM RESERVES,SAILORS WHERE sailors.sid = reserves.sid 
 GROUP BY DAY,reserves.sid,sname HAVING COUNT(DAY)>1 ;
SELECT sname,age FROM SAILORS WHERE age =(SELECT MIN(age) FROM sailors) ;
SELECT sname,rating FROM SAILORS WHERE rating >(SELECT MAX(rating) FROM SAILORS WHERE sname = 'Horatio');
SELECT sname FROM(SELECT sname,reserves.sid,COUNT(bid) AS id FROM RESERVES,SAILORS
  WHERE reserves.sid = sailors.sid GROUP BY reserves.SID,sname) a WHERE id =( SELECT COUNT(bid) FROM BOATS);
SELECT COUNT(c.sname)FROM(SELECT DISTINCT sname FROM Sailors) c;
SELECT AVG(age) FROM SAILORS;
SELECT rating,AVG(age) FROM SAILORS GROUP BY rating;
SELECT a.rating,b.mean FROM(SELECT COUNT(sname) AS num,rating FROM SAILORS GROUP BY rating HAVING COUNT(sname)>1)a,
(SELECT rating,AVG(age) AS mean FROM SAILORS GROUP BY rating ) b WHERE a.rating = b.rating;




