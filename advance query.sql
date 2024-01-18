
/*
name:shah khushi Urvishkumar
course : MSC(CS)-III
batch:1
roll no:45
subject:DBMS-II
assignment :1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/




create database first_day;
use first_day;




create table student(
snum int primary key,
sname varchar(30),
major varchar(25),
standing varchar(20),
age int
);





  INSERT INTO student (snum, sname, major, standing, age) VALUES
(051135593, 'Maria White', 'English', 'SR', 21),
(060839453, 'Charles Harris', 'Architecture', 'SR', 22),
(099354543, 'Susan Martin', 'Law', 'JR', 20),
(112348546, 'Joseph Thompson', 'Computer Science', 'SO', 19),
(115987938, 'Christopher Garcia', 'Computer Science', 'JR', 20),
(132977562, 'Angela Martinez', 'History', 'SR', 20),
(269734834, 'Thomas Robinson', 'Psychology', 'SO', 18),
(280158572, 'Margaret Clark', 'Animal Science', 'FR', 18),
(301221823, 'Juan Rodriguez', 'Psychology', 'JR', 20),
(318548912, 'Dorthy Lewis', 'Finance', 'FR', 18),
(320874981, 'Daniel Lee', 'Electrical Engineering', 'FR', 17),
(322654189, 'Lisa Walker', 'Computer Science', 'SO', 17),
(348121549, 'Paul Hall', 'Computer Science', 'JR', 18),
(351565322, 'Nancy Allen', 'Accounting', 'JR', 19),
(451519864, 'Mark Young', 'Finance', 'FR', 18),
(455798411, 'Luis Hernandez', 'Electrical Engineering', 'FR', 17),
(462156489, 'Donald King', 'Mechanical Engineering', 'SO', 19),
(550156548, 'George Wright', 'Education', 'SR', 21),
(552455318, 'Ana Lopez', 'Computer Engineering', 'SR', 19),
(556784565, 'Kenneth Hill', 'Civil Engineering', 'SR', 21),
(567354612, 'Karen Scott', 'Computer Engineering', 'FR', 18),
(573284895, 'Steven Green', 'Kinesiology', 'SO', 19),
(574489456, 'Betty Adams', 'Economics', 'JR', 20),
(578875478, 'Edward Baker', 'Veterinary Medicine', 'SR', 21);


-- output:


/*
51135593	Maria White	English	SR	21
60839453	Charles Harris	Architecture	SR	22
99354543	Susan Martin	Law	JR	20
112348546	Joseph Thompson	Computer Science	SO	19
115987938	Christopher Garcia	Computer Science	JR	20
132977562	Angela Martinez	History	SR	20
269734834	Thomas Robinson	Psychology	SO	18
280158572	Margaret Clark	Animal Science	FR	18
301221823	Juan Rodriguez	Psychology	JR	20
318548912	Dorthy Lewis	Finance	FR	18
320874981	Daniel Lee	Electrical Engineering	FR	17
322654189	Lisa Walker	Computer Science	SO	17
348121549	Paul Hall	Computer Science	JR	18
351565322	Nancy Allen	Accounting	JR	19
451519864	Mark Young	Finance	FR	18
455798411	Luis Hernandez	Electrical Engineering	FR	17
462156489	Donald King	Mechanical Engineering	SO	19
550156548	George Wright	Education	SR	21
552455318	Ana Lopez	Computer Engineering	SR	19
556784565	Kenneth Hill	Civil Engineering	SR	21
567354612	Karen Scott	Computer Engineering	FR	18
573284895	Steven Green	Kinesiology	SO	19
574489456	Betty Adams	Economics	JR	20
578875478	Edward Baker	Veterinary Medicine	SR	21
				
*/
---------------------------------------------------------------------------------------------------------------------------------


create table faculty(
fid int primary key,
fname varchar(30),
deptid int
);






    INSERT INTO faculty (fid, fname, deptid)
VALUES
    (142519864, 'Ivana Teach', 20),
    (242518965, 'James Smith', 68),
    (141582651, 'Mary Johnson', 20),
    (011564812, 'John Williams', 68),
    (254099823, 'Patricia Jones', 68),
    (356187925, 'Robert Brown', 12),
    (489456522, 'Linda Davis', 20),
    (287321212, 'Michael Miller', 12),
    (248965255, 'Barbara Wilson', 12),
    (159542516, 'William Moore', 33),
    (090873519, 'Elizabeth Taylor', 11),
    (486512566, 'David Anderson', 20),
    (619023588, 'Jennifer Thomas', 11),
    (489221823, 'Richard Jackson', 33),
    (548977562, 'Ulysses Teach', 20);




-- output:



/*

11564812	John Williams	68
90873519	Elizabeth Taylor	11
141582651	Mary Johnson	20
142519864	Ivana Teach	20
159542516	William Moore	33
242518965	James Smith	68
248965255	Barbara Wilson	12
254099823	Patricia Jones	68
287321212	Michael Miller	12
356187925	Robert Brown	12
486512566	David Anderson	20
489221823	Richard Jackson	33
489456522	Linda Davis	20
548977562	Ulysses Teach	20
619023588	Jennifer Thomas	11
		
*/
-------------------------------------------------------------------------------------------------------------------------------



create table class(
cname varchar(40) primary key,
meets_at varchar(20),
room varchar(10),
fid int,
foreign key(fid) references faculty(fid)
);






INSERT INTO class (cname, meets_at, room, fid)
VALUES
    ('Data Structures', 'MWF 10', 'R128', 489456522),
    ('Database Systems', 'MWF 12:30-1:45', '1320 DCL', 142519864),
    ('Operating System Design', 'TuTh 12-1:20', '20 AVW', 489456522),
    ('Archaeology of the Incas', 'MWF 3-4:15', 'R128', 248965255),
    ('Aviation Accident Investigation', 'TuTh 1-2:50', 'Q3', 011564812),
    ('Air Quality Engineering', 'TuTh 10:30-11:45', 'R15', 011564812),
    ('Introductory Latin', 'MWF 3-4:15', 'R12', 248965255),
    ('American Political Parties', 'TuTh 2-3:15', '20 AVW', 619023588),
    ('Social Cognition', 'Tu 6:30-8:40', 'R15', 159542516),
    ('Perception', 'MTuWTh 3', 'Q3', 489221823),
    ('Multivariate Analysis', 'TuTh 2-3:15', 'R15', 090873519),
    ('Patent Law', 'F 1-2:50', 'R128', 090873519),
    ('Urban Economics', 'MWF 11', '20 AVW', 489221823),
    ('Organic Chemistry', 'TuTh 12:30-1:45', 'R12', 489221823),
    ('Marketing Research', 'MW 10-11:15', '1320 DCL', 489221823),
    ('Seminar in American Art', 'M 4', 'R15', 489221823),
    ('Orbital Mechanics', 'MWF 8', '1320 DCL', 011564812),
    ('Dairy Herd Management', 'TuTh 12:30-1:45', 'R128', 356187925),
    ('Communication Networks', 'MW 9:30-10:45', '20 AVW', 141582651),
    ('Optical Electronics', 'TuTh 12:30-1:45', 'R15', 254099823),
    ('Introduction to Math', 'TuTh 8-9:30', 'R128', 489221823);




-- output:



/*

Air Quality Engineering	TuTh 10:30-11:45	R15	11564812
American Political Parties	TuTh 2-3:15	20 AVW	619023588
Archaeology of the Incas	MWF 3-4:15	R128	248965255
Aviation Accident Investigation	TuTh 1-2:50	Q3	11564812
Communication Networks	MW 9:30-10:45	20 AVW	141582651
Dairy Herd Management	TuTh 12:30-1:45	R128	356187925
Data Structures	MWF 10	R128	489456522
Database Systems	MWF 12:30-1:45	1320 DCL	142519864
Introduction to Math	TuTh 8-9:30	R128	489221823
Introductory Latin	MWF 3-4:15	R12	248965255
Marketing Research	MW 10-11:15	1320 DCL	489221823
Multivariate Analysis	TuTh 2-3:15	R15	90873519
Operating System Design	TuTh 12-1:20	20 AVW	489456522
Optical Electronics	TuTh 12:30-1:45	R15	254099823
Orbital Mechanics	MWF 8	1320 DCL	11564812
Organic Chemistry	TuTh 12:30-1:45	R12	489221823
Patent Law	F 1-2:50	R128	90873519
Perception	MTuWTh 3	Q3	489221823
Seminar in American Art	M 4	R15	489221823
Social Cognition	Tu 6:30-8:40	R15	159542516
Urban Economics	MWF 11	20 AVW	489221823
			
*/
--------------------------------------------------------------------------------------------------------------------------------


create table enrolled(
snum int,
cname varchar(40),
primary key(snum,cname),
foreign key(snum) references student(snum),
foreign key(cname) references class(cname)
);





    INSERT INTO enrolled (snum, cname)
VALUES
    (112348546, 'Database Systems'),
    (115987938, 'Database Systems'),
    (348121549, 'Database Systems'),
    (322654189, 'Database Systems'),
    (552455318, 'Database Systems'),
    (455798411, 'Operating System Design'),
    (552455318, 'Operating System Design'),
    (567354612, 'Operating System Design'),
    (112348546, 'Operating System Design'),
    (115987938, 'Operating System Design'),
    (322654189, 'Operating System Design'),
    (567354612, 'Data Structures'),
    (552455318, 'Communication Networks'),
    (455798411, 'Optical Electronics'),
    (301221823, 'Perception'),
    (301221823, 'Social Cognition'),
    (301221823, 'American Political Parties'),
    (556784565, 'Air Quality Engineering'),
    (099354543, 'Patent Law'),
    (574489456, 'Urban Economics');




-- output:

/*
99354543	Patent Law
112348546	Database Systems
112348546	Operating System Design
115987938	Database Systems
115987938	Operating System Design
301221823	American Political Parties
301221823	Perception
301221823	Social Cognition
322654189	Database Systems
322654189	Operating System Design
348121549	Database Systems
455798411	Operating System Design
455798411	Optical Electronics
552455318	Communication Networks
552455318	Database Systems
552455318	Operating System Design
556784565	Air Quality Engineering
567354612	Data Structures
567354612	Operating System Design
574489456	Urban Economics
	
*/
--------------------------------------------------------------------------------------------------------------------------------



create table suppliers(
sid int primary key,
sname varchar(30),
address varchar(40)
);





INSERT INTO suppliers (sid, sname, address)
VALUES
    (1, 'Acme Widget Suppliers', '1 Grub St., Potemkin Village, IL 61801'),
    (2, 'Big Red Tool and Die', '4 My Way, Bermuda Shorts, OR 90305'),
    (3, 'Perfunctory Parts', '99999 Short Pier, Terra Del '),
    (4, 'Alien Aircraft Inc.', '2 Groom Lake, Rachel, NV 51902');
    select * from suppliers;



-- output:


/*
1	Acme Widget Suppliers	1 Grub St., Potemkin Village, IL 61801
2	Big Red Tool and Die	4 My Way, Bermuda Shorts, OR 90305
3	Perfunctory Parts	99999 Short Pier, Terra Del 
4	Alien Aircraft Inc.	2 Groom Lake, Rachel, NV 51902
		

*/
--------------------------------------------------------------------------------------------------------------------------------
create table parts(
pid int primary key,
pname varchar(40),
color varchar(15)
);




   
INSERT INTO parts (pid, pname, color)
VALUES
    (1, 'Left Handed Bacon Stretcher Cover', 'Red'),
    (2, 'Smoke Shifter End', 'Black'),
    (3, 'Acme Widget Washer', 'Red'),
    (4, 'Acme Widget Washer', 'Silver'),
    (5, 'I Brake for Crop Circles Sticker', 'Translucent'),
    (6, 'Anti-Gravity Turbine Generator', 'Cyan'),
    (7, 'Anti-Gravity Turbine Generator', 'Magenta'),
    (8, 'Fire Hydrant Cap', 'Red'),
    (9, '7 Segment Display', 'Green');



/*
output:



1	Left Handed Bacon Stretcher Cover	Red
2	Smoke Shifter End	Black
3	Acme Widget Washer	Red
4	Acme Widget Washer	Silver
5	I Brake for Crop Circles Sticker	Translucent
6	Anti-Gravity Turbine Generator	Cyan
7	Anti-Gravity Turbine Generator	Magenta
8	Fire Hydrant Cap	Red
9	7 Segment Display	Green
		
*/
--------------------------------------------------------------------------------------------------------------------------------




create table catalog(
sid int,
pid int,
cost int,
primary key(sid,pid),
foreign key(sid) references suppliers(sid),
foreign key(pid) references parts(pid)
);





INSERT INTO catalog (sid, pid, cost)
VALUES
    (3, 1, 0.50),
    (1, 4, 0.50),
    (1, 8, 11.70),
    (2, 3, 0.55),
    (2, 8, 7.95),
    (2, 1, 16.50),
    (3, 8, 12.50),
    (3, 9, 1.00),
    (4, 5, 2.20),
    (4, 6, 1247548.23),
    (4, 7, 1247548.23);

/*
output:





1	4	1
1	8	12
2	1	17
2	3	1
2	8	8
3	1	1
3	8	13
3	9	1
4	5	2
4	6	1247548
4	7	1247548


*/
		
  
----------------------------------------------------------------------------------------------------------------------------------
 


   
create table dept(
did int primary key,
dname varchar(20),
budget int,
managerid int,
foreign key(managerid) references emp(eid)
);






INSERT INTO dept (did, dname, budget, managerid)
VALUES
    (1, 'Hardware', 1048572.12, 141582651),
    (2, 'Operations', 12099101.00, 287321212),
    (3, 'Legal', 222988.13, 248965255),
    (4, 'Marketing', 538099.54, 548977562),
    (5, 'Software', 400011.12, 141582651),
    (6, 'Production', 12099101.00, 578875478),
    (7, 'Shipping', 5.00, 489456522);

   
   
/*

output:




1	Hardware	1048572	141582651
2	Operations	12099101	287321212
3	Legal	222988	248965255
4	Marketing	538100	548977562
5	Software	400011	141582651
6	Production	12099101	578875478
7	Shipping	5	489456522
			
*/
--------------------------------------------------------------------------------------------------------------------------------



create table works(
eid int,
did int,
pct_time int,
primary key(eid,did),
foreign key(eid) references emp(eid),
foreign key(did) references dept(did)
);





    INSERT INTO works (eid, did, pct_time)
VALUES
    (142519864, 2, 100),
    (242518965, 1, 100),
    (141582651, 1, 50),
    (141582651, 5, 50),
    (141582657, 1, 25),
    (011564812, 3, 100),
    (254099823, 3, 100),
    (356187925, 2, 100),
    (489456522, 7, 100),
    (287321212, 2, 100),
    (248965255, 3, 100),
    (159542516, 4, 100),
    (090873519, 2, 100),
    (486512566, 4, 100),
    (619023588, 1, 100),
    (548977562, 4, 100),
     (578875478, 6, 100),
     (112348546, 2, 100),
    (115987938, 2, 100),
    (132977562, 2, 100),
    (269734834, 2, 100),
    (280158572, 2, 100),
    (301221823, 2, 100),
    (318548912, 2, 100),
    (320874981, 2, 100),
 (322654189, 2, 100),
    (348121549, 2, 100),
    (351565322, 2, 100),
    (451519864, 2, 100),
    (455798411, 2, 100),
(550156548, 2, 50),
    (552455318, 2, 25),
    (556784565, 2, 25),
    (567354612, 2, 75),
    (573284895, 2, 50),
    (574489456, 2, 50),
     (274878974, 6, 100),
     (289562686, 6, 100),
     (291795563, 6, 100),
    (334568786, 6, 100),
    (355548984, 6, 100),
     (310454876, 6, 100),
    (390487451, 6, 100),
    (454565232, 6, 50);


/*
output:


142519864	2	100
242518965	1	100
141582651	1	50
141582651	5	50
141582657	1	25
11564812	3	100
254099823	3	100
356187925	2	100
489456522	7	100
287321212	2	100
248965255	3	100
159542516	4	100
90873519	2	100
486512566	4	100
619023588	1	100
548977562	4	100
578875478	6	100
112348546	2	100
115987938	2	100
132977562	2	100
269734834	2	100
280158572	2	100
301221823	2	100
318548912	2	100
320874981	2	100
322654189	2	100
348121549	2	100
351565322	2	100
451519864	2	100
455798411	2	100
550156548	2	50
552455318	2	25
556784565	2	25
567354612	2	75
573284895	2	50
574489456	2	50
274878974	6	100
289562686	6	100
291795563	6	100
334568786	6	100
355548984	6	100
310454876	6	100
390487451	6	100
454565232	6	50

*/
---------------------------------------------------------------------------------------------------------------------------------

select * from emp;




create table emp(
eid int primary key,
ename varchar(30),
age int,
salary int
);




INSERT INTO emp(eid, ename, age, salary)
VALUES
    (142519864, 'Susan Martin', 39, 56990),
    (242518965, 'James Smith', 68, 27099),
    (141582651, 'Mary Johnson', 44, 94011),
    (011564812, 'John Williams', 35, 74098),
    (254099823, 'Patricia Jones', 28, 42783),
    (356187925, 'Robert Brown', 28, 35431),
    (489456522, 'Linda Davis', 26, 25971),
    (287321212, 'Michael Miller', 62, 131072),
    (248965255, 'Barbara Wilson', 48, 95021),
    (159542516, 'Matt Nelson', 33, 48990),
    (090873519, 'Elizabeth Taylor', 27, 33055),
    (486512566, 'David Anderson', 20, 25199),
    (619023588, 'Jennifer Thomas', 24, 34654),
    (112348546, 'Joseph Thompson', 26, 24998),
    (115987938, 'Christopher Garcia', 60, 24998),
    (132977562, 'Angela Martinez', 31, 24998),
    (269734834, 'Rick Carter', 38, 24998),
    (280158572, 'Margaret Clark', 40, 24998),
    (301221823, 'Juan Rodriguez', 30, 32175),
    (318548912, 'Ann Mitchell', 23, 32175),
    (320874981, 'Daniel Lee', 23, 32175),
    (322654189, 'Lisa Walker', 38, 32175),
    (348121549, 'Trey Phillips', 69, 32175),
    (351565322, 'Nancy Allen', 30, 39910),
    (451519864, 'Mark Young', 34, 39910),
    (455798411, 'Luis Hernandez', 44, 39910),
    (550156548, 'George Wright', 42, 41008),
    (552455318, 'Ana Lopez', 35, 41008),
    (556784565, 'Kenneth Hill', 81, 41008),
    (567354612, 'Karen Scott', 70, 39910),
    (573284895, 'Steven Green', 29, 39910),
    (574489456, 'Betty Adams', 39, 39910),
    (156454894, 'Daniel Evans', 25, 40312),
    (156478151, 'Gene Edwards', 51, 41008),
    (154899853, 'Dorthy Lewis', 33, 41008),
    (152784544, 'Eric Collins', 23, 41008),
    (147454898, 'Scott Bell', 23, 70100),
    (156459694, 'Gil Richardson', 32, 70100),
    (154478452, 'Dorthy Howard', 28, 40312),
    (154465461, 'Eric Cooper', 26, 24998),
    (128678823, 'William Ward', 33, 24998),
    (174949844, 'Chad Stewart', 29, 24998),
    (198459474, 'Lisa Gray', 31, 24998),
    (274878974, 'Harry Watson', 30, 24998),
    (167894232, 'Paul Hall', 25, 24998),
    (154898314, 'Gim Rogers', 25, 32175),
    (489421823, 'Richard Jackson', 33, 32996),
    (548977562, 'Donald King', 43, 92048),
    (289562686, 'Thomas Robinson', 34, 32175),
    (291795563, 'Haywood Kelly', 36, 32175),
    (578875478, 'Edward Baker', 50, 101071),
    (511355593, 'Maria White', 22, 24998),
    (608394533, 'Charles Harris', 24, 24998),
    (334568786, 'William Moore', 32, 32175),
    (355548984, 'Tom Murphy', 41, 32175),
    (310454876, 'Milo Brooks', 22, 39910),
    (390487451, 'Mark Coleman', 42, 39910),
    (454565232, 'Louis Jenkins', 20, 39910),
    (141582657, 'Stanley Browne', 23, 14093);
   



-- output:

/*
11564812	John Williams	35	74098
90873519	Elizabeth Taylor	27	33055
112348546	Joseph Thompson	26	24998
115987938	Christopher Garcia	60	24998
128678823	William Ward	33	24998
132977562	Angela Martinez	31	24998
141582651	Mary Johnson	44	94011
141582657	Stanley Browne	23	14093
142519864	Susan Martin	39	56990
147454898	Scott Bell	23	70100
152784544	Eric Collins	23	41008
154465461	Eric Cooper	26	24998
154478452	Dorthy Howard	28	40312
154898314	Gim Rogers	25	32175
154899853	Dorthy Lewis	33	41008
156454894	Daniel Evans	25	40312
156459694	Gil Richardson	32	70100
156478151	Gene Edwards	51	41008
159542516	Matt Nelson	33	48990
167894232	Paul Hall	25	24998
174949844	Chad Stewart	29	24998
198459474	Lisa Gray	31	24998
242518965	James Smith	68	27099
248965255	Barbara Wilson	48	95021
254099823	Patricia Jones	28	42783
269734834	Rick Carter	38	24998
274878974	Harry Watson	30	24998
280158572	Margaret Clark	40	24998
287321212	Michael Miller	62	131072
289562686	Thomas Robinson	34	32175
291795563	Haywood Kelly	36	32175
301221823	Juan Rodriguez	30	32175
310454876	Milo Brooks	22	39910
318548912	Ann Mitchell	23	32175
320874981	Daniel Lee	23	32175
322654189	Lisa Walker	38	32175
334568786	William Moore	32	32175
348121549	Trey Phillips	69	32175
351565322	Nancy Allen	30	39910
355548984	Tom Murphy	41	32175
356187925	Robert Brown	28	35431
390487451	Mark Coleman	42	39910
451519864	Mark Young	34	39910
454565232	Louis Jenkins	20	39910
455798411	Luis Hernandez	44	39910
486512566	David Anderson	20	25199
489421823	Richard Jackson	33	32996
489456522	Linda Davis	26	25971
511355593	Maria White	22	24998
548977562	Donald King	43	92048
550156548	George Wright	42	41008
552455318	Ana Lopez	35	41008
556784565	Kenneth Hill	81	41008
567354612	Karen Scott	70	39910
573284895	Steven Green	29	39910
574489456	Betty Adams	39	39910
578875478	Edward Baker	50	101071
608394533	Charles Harris	24	24998
619023588	Jennifer Thomas	24	34654
	
    */

----------------------------------------------------------------------------------------------------------------------------------


create table flights(
flno int primary key,
origin varchar(20),
destination varchar(20),
distance int,
departs date,
arrives date,
price int
);






    INSERT INTO flights (flno, origin, destination, distance, departs, arrives, price)
VALUES
    (99, 'Los Angeles', 'Washington D.C.', 2308, '2005-04-12 09:30', '2005-04-12 21:40', 235.98),
    (13, 'Los Angeles', 'Chicago', 1749, '2005-04-12 08:45', '2005-04-12 20:45', 220.98),
    (346, 'Los Angeles', 'Dallas', 1251, '2005-04-12 11:50', '2005-04-12 19:05', 225.43),
    (387, 'Los Angeles', 'Boston', 2606, '2005-04-12 07:03', '2005-04-12 17:03', 261.56),
    (7, 'Los Angeles', 'Sydney', 7487, '2005-04-12 22:30', '2005-04-14 06:10', 1278.56),
    (2, 'Los Angeles', 'Tokyo', 5478, '2005-04-12 12:30', '2005-04-13 15:55', 780.99),
    (33, 'Los Angeles', 'Honolulu', 2551, '2005-04-12 09:15', '2005-04-12 11:15', 375.23),
    (34, 'Los Angeles', 'Honolulu', 2551, '2005-04-12 12:45', '2005-04-12 15:18', 425.98),
    (76, 'Chicago', 'Los Angeles', 1749, '2005-04-12 08:32', '2005-04-12 10:03', 220.98),
    (68, 'Chicago', 'New York', 802, '2005-04-12 09:00', '2005-04-12 12:02', 202.45),
    (7789, 'Madison', 'Detroit', 319, '2005-04-12 06:15', '2005-04-12 08:19', 120.33),
    (701, 'Detroit', 'New York', 470, '2005-04-12 08:55', '2005-04-12 10:26', 180.56),
    (702, 'Madison', 'New York', 789, '2005-04-12 07:05', '2005-04-12 10:12', 202.34),
    (4884, 'Madison', 'Chicago', 84, '2005-04-12 22:12', '2005-04-12 23:02', 112.45),
    (2223, 'Madison', 'Pittsburgh', 517, '2005-04-12 08:02', '2005-04-12 10:01', 189.98),
    (5694, 'Madison', 'Minneapolis', 247, '2005-04-12 08:32', '2005-04-12 09:33', 120.11),
    (304, 'Minneapolis', 'New York', 991, '2005-04-12 10:00', '2005-04-12 13:39', 101.56),
    (149, 'Pittsburgh', 'New York', 303, '2005-04-12 09:42', '2005-04-12 12:09', 116.50);




-- output:


/*
2	Los Angeles	Tokyo	5478	2005-04-12	2005-04-13	781
7	Los Angeles	Sydney	7487	2005-04-12	2005-04-14	1279
13	Los Angeles	Chicago	1749	2005-04-12	2005-04-12	221
33	Los Angeles	Honolulu	2551	2005-04-12	2005-04-12	375
34	Los Angeles	Honolulu	2551	2005-04-12	2005-04-12	426
68	Chicago	New York	802	2005-04-12	2005-04-12	202
76	Chicago	Los Angeles	1749	2005-04-12	2005-04-12	221
99	Los Angeles	Washington D.C.	2308	2005-04-12	2005-04-12	236
149	Pittsburgh	New York	303	2005-04-12	2005-04-12	117
304	Minneapolis	New York	991	2005-04-12	2005-04-12	102
346	Los Angeles	Dallas	1251	2005-04-12	2005-04-12	225
387	Los Angeles	Boston	2606	2005-04-12	2005-04-12	262
701	Detroit	New York	470	2005-04-12	2005-04-12	181
702	Madison	New York	789	2005-04-12	2005-04-12	202
2223	Madison	Pittsburgh	517	2005-04-12	2005-04-12	190
4884	Madison	Chicago	84	2005-04-12	2005-04-12	112
5694	Madison	Minneapolis	247	2005-04-12	2005-04-12	120
7789	Madison	Detroit	319	2005-04-12	2005-04-12	120
						
*/

--------------------------------------------------------------------------------------------------------------------------------
create table aircraft(
aid int primary key,
aname varchar(30),
crusingrange int
);





    INSERT INTO aircraft (aid, aname, crusingrange)
VALUES
    (1, 'Boeing 747-400', 8430),
    (2, 'Boeing 737-800', 3383),
    (3, 'Airbus A340-300', 7120),
    (4, 'British Aerospace Jetstream 41', 1502),
    (5, 'Embraer ERJ-145', 1530),
    (6, 'SAAB 340', 2128),
    (7, 'Piper Archer III', 520),
    (8, 'Tupolev 154', 4103),
    (16, 'Schwitzer 2-33', 30),
    (9, 'Lockheed L1011', 6900),
    (10, 'Boeing 757-300', 4010),
    (11, 'Boeing 777-300', 6441),
    (12, 'Boeing 767-400ER', 6475),
    (13, 'Airbus A320', 2605),
    (14, 'Airbus A319', 1805),
    (15, 'Boeing 727', 1504);


/*
output:


1	Boeing 747-400	8430
2	Boeing 737-800	3383
3	Airbus A340-300	7120
4	British Aerospace Jetstream 41	1502
5	Embraer ERJ-145	1530
6	SAAB 340	2128
7	Piper Archer III	520
8	Tupolev 154	4103
9	Lockheed L1011	6900
10	Boeing 757-300	4010
11	Boeing 777-300	6441
12	Boeing 767-400ER	6475
13	Airbus A320	2605
14	Airbus A319	1805
15	Boeing 727	1504
16	Schwitzer 2-33	30
		
*/
--------------------------------------------------------------------------------------------------------------------------------




create table employees(
eid int primary key,
ename varchar(30),
salary int
);





    INSERT INTO employees (eid, ename, salary)
VALUES
    (242518965, 'James Smith', 120433),
    (141582651, 'Mary Johnson', 178345),
    (011564812, 'John Williams', 153972),
    (567354612, 'Lisa Walker', 256481),
    (552455318, 'Larry West', 101745),
    (550156548, 'Karen Scott', 205187),
    (390487451, 'Lawrence Sperry', 212156),
    (274878974, 'Michael Miller', 99890),
    (254099823, 'Patricia Jones', 24450),
    (356187925, 'Robert Brown', 44740),
    (355548984, 'Angela Martinez', 212156),
    (310454876, 'Joseph Thompson', 212156),
    (489456522, 'Linda Davis', 127984),
    (489221823, 'Richard Jackson', 23980),
    (548977562, 'William Ward', 84476),
    (310454877, 'Chad Stewart', 33546),
    (142519864, 'Betty Adams', 227489),
    (269734834, 'George Wright', 289950),
    (287321212, 'Michael Miller', 48090),
    (552455348, 'Dorthy Lewis', 92013),
    (248965255, 'Barbara Wilson', 43723),
    (159542516, 'William Moore', 48250),
    (348121549, 'Haywood Kelly', 32899),
    (090873519, 'Elizabeth Taylor', 32021),
    (486512566, 'David Anderson', 743001),
    (619023588, 'Jennifer Thomas', 54921),
    (015645489, 'Donald King', 18050),
    (556784565, 'Mark Young', 205187),
    (573284895, 'Eric Cooper', 114323),
    (574489456, 'William Jones', 105743),
    (574489457, 'Milo Brooks', 20);


/*
output:


11564812	John Williams	153972
15645489	Donald King	18050
90873519	Elizabeth Taylor	32021
141582651	Mary Johnson	178345
142519864	Betty Adams	227489
159542516	William Moore	48250
242518965	James Smith	120433
248965255	Barbara Wilson	43723
254099823	Patricia Jones	24450
269734834	George Wright	289950
274878974	Michael Miller	99890
287321212	Michael Miller	48090
310454876	Joseph Thompson	212156
310454877	Chad Stewart	33546
348121549	Haywood Kelly	32899
355548984	Angela Martinez	212156
356187925	Robert Brown	44740
390487451	Lawrence Sperry	212156
486512566	David Anderson	743001
489221823	Richard Jackson	23980
489456522	Linda Davis	127984
548977562	William Ward	84476
550156548	Karen Scott	205187
552455318	Larry West	101745
552455348	Dorthy Lewis	92013
556784565	Mark Young	205187
567354612	Lisa Walker	256481
573284895	Eric Cooper	114323
574489456	William Jones	105743
574489457	Milo Brooks	20
619023588	Jennifer Thomas	54921
		
*/
-------------------------------------------------------------------------------------------------------------------------------



create table certified(
eid int,
aid int,
primary key(eid,aid),
foreign key(eid) references employees(eid),
foreign key(aid) references aircraft(aid)
);





--    

INSERT INTO certified (eid, aid)
VALUES
    (567354612, 1),
    (567354612, 2),
    (567354612, 10),
    (567354612, 11),
    (567354612, 12),
    (567354612, 15),
    (567354612, 7),
    (567354612, 9),
    (567354612, 3),
    (567354612, 4),
    (567354612, 5),
    (552455318, 2),
    (552455318, 14),
    (550156548, 1),
    (550156548, 12),
    (390487451, 3),
    (390487451, 13),
    (390487451, 14),
    (274878974, 10),
    (274878974, 12),
    (355548984, 8),
    (355548984, 9),
    (310454876, 8),
    (310454876, 9),
    (548977562, 7),
    (142519864, 1),
    (142519864, 11),
    (142519864, 12),
    (142519864, 10),
    (142519864, 3),
    (142519864, 2),
    (142519864, 13),
    (142519864, 7),
    (269734834, 1),
    (269734834, 2),
    (269734834, 3),
    (269734834, 4),
    (269734834, 5),
    (269734834, 6),
    (269734834, 7),
    (269734834, 8),
    (269734834, 9),
    (269734834, 10),
    (269734834, 11),
    (269734834, 12),
    (269734834, 13),
    (269734834, 14),
    (269734834, 15),
    (552455318, 7),
    (556784565, 5),
    (556784565, 2),
    (556784565, 3),
    (573284895, 3),
    (573284895, 4),
    (573284895, 5),
    (574489456, 8),
    (574489456, 6),
    (574489457, 7),
    (242518965, 2),
    (242518965, 10),
    (141582651, 2),
    (141582651, 10),
    (141582651, 12),
    (011564812, 2),
    (011564812, 10),
    (356187925, 6),
    (159542516, 5),
    (159542516, 7),
    (090873519, 6);



/*
output:


11564812	2
11564812	10
90873519	6
141582651	2
141582651	10
141582651	12
142519864	1
142519864	2
142519864	3
142519864	7
142519864	10
142519864	11
142519864	12
142519864	13
159542516	5
159542516	7
242518965	2
242518965	10
269734834	1
269734834	2
269734834	3
269734834	4
269734834	5
269734834	6
269734834	7
269734834	8
269734834	9
269734834	10
269734834	11
269734834	12
269734834	13
269734834	14
269734834	15
274878974	10
274878974	12
310454876	8
310454876	9
355548984	8
355548984	9
356187925	6
390487451	3
390487451	13
390487451	14
548977562	7
550156548	1
550156548	12
552455318	2
552455318	7
552455318	14
556784565	2
556784565	3
556784565	5
567354612	1
567354612	2
567354612	3
567354612	4
567354612	5
567354612	7
567354612	9
567354612	10
567354612	11
567354612	12
567354612	15
573284895	3
573284895	4
573284895	5
574489456	6
574489456	8
574489457	7
	
    */
-------------------------------------------------------------------------------------------------------------------------------

-- ==========================================================================================================
-- queries(5.1)
-- ==========================================================================================================


---------------------------------------------------------------------------------------------------------------------

-- Query :1   Find the narnes of all Juniors (level= JR) who are enrolled in a class taught by I. Teach .

-------------------------------------------------------------------------------------------------------------------------



select student.sname,student.standing,class.cname,faculty.fname from student
inner join enrolled on student.snum = enrolled.snum
inner join class on class.cname = enrolled.cname
inner join faculty on faculty.fid = class.fid
where student.standing = "JR" and fname = "Ivana Teach";


/*
output:



Christopher Garcia	JR	Database Systems	Ivana Teach
Paul Hall	JR	Database Systems	Ivana Teach */
------------------------------------------------------------------------------------------------------------------------------
-- Query:2  Find the age of the oldest student who is either a History major or enrolled in a course  taught by I. Teach .

---------------------------------------------------------------------------------------------------------------------------------


select student.sname,max(student.age) from student
inner join enrolled on student.snum = enrolled.snum
inner join class on class.cname = enrolled.cname
inner join faculty on faculty.fid = class.fid
where major = "History" or fname = "Ivana Teach"
group by student.sname;


/*
output:



Ana Lopez	19
Christopher Garcia	20
Joseph Thompson	19
Lisa Walker	17
Paul Hall	18
*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:3   Find the names of all classes that either meet in room Rl28 or have live or more students  enrolled.

---------------------------------------------------------------------------------------------------------------------------------


 select class.cname,class.room from enrolled
 inner join class on enrolled.cname = class.cname
 where class.room = "R128" or (select count(class.cname) > 5 from class)
group by class.cname,class.room;


/*
output:



Air Quality Engineering	R15
American Political Parties	20 AVW
Communication Networks	20 AVW
Data Structures	R128
Database Systems	1320 DCL
Operating System Design	20 AVW
Optical Electronics	R15
Patent Law	R128
Perception	Q3
Social Cognition	R15
Urban Economics	20 AVW

*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:4    Find the narnes of all students who are enrolled in two classes that meet at the same time.

---------------------------------------------------------------------------------------------------------------------------------



SELECT DISTINCT s.sname
FROM student s
INNER JOIN enrolled e1 ON s.snum = e1.snum
INNER JOIN enrolled e2 ON s.snum = e2.snum AND e1.cname <> e2.cname
INNER JOIN class c1 ON e1.cname = c1.cname
INNER JOIN class c2 ON e2.cname = c2.cname AND c1.meets_at = c2.meets_at;



---------------------------------------------------------------------------------------------------------------------------------
-- Query:5  find the names of faculty members who teach in every room in which some class is taught.

---------------------------------------------------------------------------------------------------------------------------------




SELECT f.fname,f.fid
FROM faculty as f
    WHERE f.fid in ( SELECT fid FROM class
GROUP BY fid
            HAVING COUNT(*)=(SELECT COUNT(DISTINCT room) FROM class) );



/*output:


Richard Jackson	489221823
	*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:6  

---------------------------------------------------------------------------------------------------------------------------------


SELECT f.fname
FROM faculty f
INNER JOIN class c ON f.fid = c.fid
INNER JOIN enrolled e ON c.cname = e.cname
GROUP BY f.fname
HAVING SUM(1) < 5;



-- output:



/*
Elizabeth Taylor
Jennifer Thomas
John Williams
Mary Johnson
Patricia Jones
Richard Jackson
William Moore

*/

---------------------------------------------------------------------------------------------------------------------------------
-- Query:7
---------------------------------------------------------------------------------------------------------------------------------




SELECT standing AS level, AVG(age) AS average_age
FROM student
GROUP BY standing;

/*
output:



FR	17.6667
JR	19.5000
SO	18.4000
SR	20.7143
*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:8
---------------------------------------------------------------------------------------------------------------------------------


SELECT standing AS level, AVG(age) AS average_age
FROM student
WHERE standing != "jr"
GROUP BY standing;


/*output:



FR	17.6667
SO	18.4000
SR	20.7143

*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:9
---------------------------------------------------------------------------------------------------------------------------------


select f.fname,c.room from Faculty f natural join Class c
natural join Enrolled e where c.room = 'R128' group by fname;



/*
output:



Elizabeth Taylor	R128
Linda Davis	R128

*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:10
---------------------------------------------------------------------------------------------------------------------------------


 select e.snum,e.cname from Enrolled e natural join Student s
 group by e.snum,e.cname order by count(*) limit 1;


/*
output:




301221823	American Political Parties*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:11
---------------------------------------------------------------------------------------------------------------------------------


SELECT * FROM Student S
 LEFT OUTER JOIN enrolled C ON S.snum = C.snum
where C.snum IS NULL;

/*
output:



51135593	Maria White	English	SR	21		
60839453	Charles Harris	Architecture	SR	22		
132977562	Angela Martinez	History	SR	20		
269734834	Thomas Robinson	Psychology	SO	18		
280158572	Margaret Clark	Animal Science	FR	18		
318548912	Dorthy Lewis	Finance	FR	18		
320874981	Daniel Lee	Electrical Engineering	FR	17		
351565322	Nancy Allen	Accounting	JR	19		
451519864	Mark Young	Finance	FR	18		
462156489	Donald King	Mechanical Engineering	SO	19		
550156548	George Wright	Education	SR	21		
573284895	Steven Green	Kinesiology	SO	19		
578875478	Edward Baker	Veterinary Medicine	SR	21		

*/
---------------------------------------------------------------------------------------------------------------------------------
-- Query:12
---------------------------------------------------------------------------------------------------------------------------------


select s.age,s.standing
from student s
group by s.age,s.standing
having s.standing in (select s1.standing from student s1
where s1.age = s.age group by s1.standing,s1.age
having count(*) >= all (select count(*) from student s2
where s1.age = s2.age
group by s2.standing,s2.age));


/*output:



17	FR
18	FR
19	SO
20	JR
21	SR
22	SR

*/
============================================================================================================================================================================================





------------------------------------------------------------------------------------------------
exercise (5.2) 
------------------------------------------------------------------------------------------




create database db3;
use db3;

CREATE TABLE Suppliers (
    sid INTEGER PRIMARY KEY,
    sname VARCHAR(255),
    address VARCHAR(255)
);





CREATE TABLE Parts (
    pid INTEGER PRIMARY KEY,
    pname VARCHAR(255),
    color VARCHAR(50)
);






CREATE TABLE Catalog (
    sid INTEGER,
    FOREIGN KEY (sid) REFERENCES Suppliers(sid),
    pid INTEGER,
     FOREIGN KEY (pid) REFERENCES Parts(pid),
    cost REAL
    );
    




    
    INSERT INTO Suppliers (sid, sname, address)
VALUES(1,'Acme Widget Suppliers',"1 Grub St., Potemkin Village, IL 61801");

 INSERT INTO Suppliers (sid, sname, address)
VALUES(2,'Big Red Tool and Die',"4 My Way, Bermuda Shorts, OR 90305");

 INSERT INTO Suppliers (sid, sname, address)
VALUES(3,'Perfunctory Parts',"99999 Short Pier, Terra Del Fuego, TX 41299");

 INSERT INTO Suppliers (sid, sname, address)
VALUES(4,'Alien Aircaft Inc.',"2 Groom Lake, Rachel, NV 51902");






INSERT INTO Parts (pid, pname, color)
values(1,'Left Handed Bacon Stretcher Cover','Red');

INSERT INTO Parts (pid, pname, color)
values(2,'Smoke Shifter End','Black');

INSERT INTO Parts (pid, pname, color)
values(3,'Acme Widget Washer','Red');

INSERT INTO Parts (pid, pname, color)
values(4,'Acme Widget Washer','Silver');

INSERT INTO Parts (pid, pname, color)
values(5,'I Brake for Crop Circles Sticker','Translucent');

INSERT INTO Parts (pid, pname, color)
values(6,'Anti-Gravity Turbine Generator','Cyan');

INSERT INTO Parts (pid, pname, color)
values(7,'Anti-Gravity Turbine Generator','Magenta');

INSERT INTO Parts (pid, pname, color)
values(8,'Fire Hydrant Cap','Red');

INSERT INTO Parts (pid, pname, color)
values(9,'7 Segment Display','Green');








INSERT INTO Catalog (sid, pid, cost)
VALUES(1, 3, 0.50);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(1, 4, 0.50);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(1, 8, 11.70);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(2, 3, 0.55);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(2, 8, 7.95);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(2, 1, 16.50);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(3, 8, 12.50);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(3, 9, 1.00);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(4, 5, 2.20);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(4, 6, 1247548.23);
    
    INSERT INTO Catalog (sid, pid, cost)
    VALUES(4, 7, 1247548.23);






-------------------------------------------------------------------------------
-- query:1
----------------------------------------------------------------------------------



    
SELECT DISTINCT Parts.pname
FROM Parts
INNER JOIN Catalog ON Parts.pid = Catalog.pid;


output:




Left Handed Bacon Stretcher Cover
Acme Widget Washer
I Brake for Crop Circles Sticker
Anti-Gravity Turbine Generator
Fire Hydrant Cap
7 Segment Display
----------------------------------------------------------------------------
-- query:2
---------------------------------------------------------------------------



SELECT sname
FROM   suppliers
WHERE  ( SELECT COUNT(*)
         FROM   catalog
         WHERE  pid = sid)=9;



output:



no records
--------------------------------------------------------------------
         
-- query3: Find the names of suppliers who supply every red part.

----------------------------------------------------------------------


SELECT sname
FROM   suppliers AS s
WHERE  s.id IN ( SELECT s.id
                 FROM (parts AS p JOIN catalog AS c ON p.id=c.pid)
                 WHERE p.color='Red' AND s.id=c.sid);



---------------------------------------------------------------------
-- query:5
-----------------------------------------------------------------------



SELECT DISTINCT Parts.pname
FROM Parts
INNER JOIN Catalog ON Parts.pid = Catalog.pid
LEFT JOIN Catalog AS OtherSuppliers ON Parts.pid = OtherSuppliers.pid AND OtherSuppliers.sid <> 4
WHERE Catalog.sid = 4 AND OtherSuppliers.pid IS NULL;


output:



I Brake for Crop Circles Sticker
Anti-Gravity Turbine Generator



----------------------------------------------------------------------------
-- query6:
----------------------------------------------------------------------------



SELECT sname
FROM   suppliers JOIN catalog AS c0 ON id=c0.sid 
WHERE  c0.cost=(SELECT MAX(c1.cost) FROM catalog AS c1        
                WHERE c0.pid=c1.pid);


output:


no record

--------------------------------------------------------------------------------
-- query:8
--------------------------------------------------------------------------------



SELECT DISTINCT Catalog.sid
FROM Catalog
INNER JOIN Parts ON Catalog.pid = Parts.pid
WHERE Parts.color IN ('Red', 'Green')
GROUP BY Catalog.sid
HAVING COUNT(DISTINCT CASE WHEN Parts.color = 'Red' THEN Catalog.pid END) >= 1
   AND COUNT(DISTINCT CASE WHEN Parts.color = 'Green' THEN Catalog.pid END) >= 1;
   

output:


3
   
--------------------------------------------------------------------------------------   
 -- query -9  
-------------------------------------------------------------------------------------


 
 
   SELECT DISTINCT Catalog.sid
FROM Catalog
INNER JOIN Parts ON Catalog.pid = Parts.pid
WHERE Parts.color IN ('Red', 'Green');



output:


2
3
1


------------------------------------------------------------------------------------------
-- query:10
-------------------------------------------------------------------------------------------


SELECT Suppliers.sname, COUNT(Catalog.pid) AS total_green_parts
FROM Suppliers
INNER JOIN Catalog ON Suppliers.sid = Catalog.sid
INNER JOIN Parts ON Catalog.pid = Parts.pid
WHERE Parts.color = 'Green'
GROUP BY Suppliers.sname
HAVING COUNT(DISTINCT Catalog.pid) = (
    SELECT COUNT(*)
    FROM Parts
    WHERE color = 'Green'
);


output:


Perfunctory Parts	1


-------------------------------------------------------------------------------------------
-- query:11
------------------------------------------------------------------------------------------

SELECT Suppliers.sname, MAX(Catalog.cost) AS max_cost
FROM Suppliers
INNER JOIN Catalog ON Suppliers.sid = Catalog.sid
INNER JOIN Parts ON Catalog.pid = Parts.pid
WHERE Parts.color IN ('Green', 'Red')
GROUP BY Suppliers.sname
HAVING COUNT(DISTINCT CASE WHEN Parts.color = 'Green' THEN Catalog.pid END) >= 1
   AND COUNT(DISTINCT CASE WHEN Parts.color = 'Red' THEN Catalog.pid END) >= 1;



output:


Perfunctory Parts	13

=====================================================================================================================================================================================


------------------------------------------------------------------------------------------------
exercise 5.3 (queries)
----------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------------------------------------
Query:1
---------------------------------------------------------------------------------------------------------------------------------



SELECT DISTINCT A.aname
FROM Aircraft A
WHERE A.Aid IN (SELECT C.aid
FROM Certified C, Employees E
WHERE C.eid = E.eid AND
NOT EXISTS ( SELECT *
FROM Employees E1
WHERE E1.eid = E.eid AND E1.salary < 80000 ));





output:




Boeing 747-400
Boeing 737-800
Airbus A340-300
British Aerospace Jetstream 41
Embraer ERJ-145
SAAB 340
Piper Archer III
Tupolev 154
Lockheed L1011
Boeing 757-300
Boeing 777-300
Boeing 767-400ER
Airbus A320
Airbus A319
Boeing 727

---------------------------------------------------------------------------------------------------------------------------------
Query:2
---------------------------------------------------------------------------------------------------------------------------------


SELECT C.eid, MAX(A.crusingrange)
FROM Certified C, Aircraft A
WHERE C.aid = A.aid
GROUP BY C.eid
HAVING COUNT(*) > 3;




output:



142519864	8430
269734834	8430
567354612	8430

---------------------------------------------------------------------------------------------------------------------------------
Query:3
---------------------------------------------------------------------------------------------------------------------------------


 SELECT DISTINCT *
FROM Employees E
WHERE E.salary < ( SELECT MIN(flights.price)
FROM flights
WHERE flights.origin = "Los angeles" AND flights.destination = "Honolulu" );





output:



574489457	Milo Brooks	20
		

---------------------------------------------------------------------------------------------------------------------------------
Query:4
---------------------------------------------------------------------------------------------------------------------------------


SELECT Temp.name, Temp.AvgSalary
FROM ( SELECT A.aid, A.aname AS name,
AVG (E.salary) AS AvgSalary
FROM Aircraft A, Certified C, Employees E
WHERE A.aid = C.aid AND
C.eid = E.eid AND A.crusingrange > 1000
GROUP BY A.aid, A.aname ) AS Temp;





output:




Boeing 747-400	244776.7500
Boeing 737-800	191700.2500
Airbus A340-300	217597.6667
British Aerospace Jetstream 41	220251.3333
Embraer ERJ-145	182838.2000
SAAB 340	118113.5000
Tupolev 154	205001.2500
Lockheed L1011	242685.7500
Boeing 757-300	189508.5714
Boeing 777-300	257973.3333
Boeing 767-400ER	209557.0000
Airbus A320	243198.3333
Airbus A319	201283.6667
Boeing 727	273215.5000

---------------------------------------------------------------------------------------------------------------------------------
Query:5
---------------------------------------------------------------------------------------------------------------------------------


SELECT DISTINCT E.ename
FROM Employees E, Certified C, Aircraft A
WHERE E.eid = C.eid AND
C.aid = A.aid AND
A.aname LIKE "Boeing%";



output:




Betty Adams
George Wright
Karen Scott
Lisa Walker
John Williams
Mary Johnson
James Smith
Larry West
Mark Young
Michael Miller

---------------------------------------------------------------------------------------------------------------------------------
Query:6
---------------------------------------------------------------------------------------------------------------------------------


SELECT A.aid,A.aname
FROM Aircraft A
WHERE A.crusingrange > ( SELECT MIN(F.distance)
FROM Flights F
WHERE F.origin = "Los Angeles" AND F.destination = "Chicago" );






output:



1	Boeing 747-400
2	Boeing 737-800
3	Airbus A340-300
6	SAAB 340
8	Tupolev 154
9	Lockheed L1011
10	Boeing 757-300
11	Boeing 777-300
12	Boeing 767-400ER
13	Airbus A320
14	Airbus A319
	

---------------------------------------------------------------------------------------------------------------------------------
Query:7
---------------------------------------------------------------------------------------------------------------------------------

SELECT DISTINCT F.origin, F.destination
FROM Flights F
WHERE NOT EXISTS ( SELECT *
FROM Employees E
WHERE E.salary > 100000
AND
NOT EXISTS (SELECT *
FROM Aircraft A, Certified C
WHERE A.crusingrange > F.distance
AND E.eid = C.eid
AND A.aid = C.aid) );




---------------------------------------------------------------------------------------------------------------------------------
Query:8
---------------------------------------------------------------------------------------------------------------------------------


SELECT DISTINCT E.ename
FROM Employees E
WHERE E.eid IN ( ( SELECT C.eid
FROM Certified C
WHERE EXISTS ( SELECT A.aid
FROM Aircraft A
WHERE A.aid = C.aid
AND A.crusingrange > 3000 )
AND
NOT EXISTS ( SELECT A1.aid FROM Aircraft A1
WHERE A1.aid = C.aid AND A1.aname LIKE "Boeing%" )));


output:




Betty Adams
George Wright
Joseph Thompson
Angela Martinez
Lawrence Sperry
Mark Young
Lisa Walker
Eric Cooper
William Jones




---------------------------------------------------------------------------------------------------------------------------------
Query:10
---------------------------------------------------------------------------------------------------------------------------------


SELECT Temp1.avg - Temp2.avg
FROM (SELECT AVG (E.salary) AS avg
FROM Employees E
WHERE E.eid IN (SELECT DISTINCT C.eid
FROM Certified C )) AS Temp1,
(SELECT AVG (E1.salary) AS avg
FROM Employees E1 ) AS Temp2;


output:



11449.6452


---------------------------------------------------------------------------------------------------------------------------------
Query:11
---------------------------------------------------------------------------------------------------------------------------------


SELECT E.ename, E.salary
FROM Employees E
WHERE E.eid NOT IN ( SELECT DISTINCT C.eid
FROM Certified C ) AND E.salary > ( SELECT AVG (E1.salary)
FROM Employees E1
WHERE E1.eid IN
( SELECT DISTINCT C1.eid
FROM Certified C1 ) );




output:




David Anderson	743001


---------------------------------------------------------------------------------------------------------------------------------
Query:12
---------------------------------------------------------------------------------------------------------------------------------


SELECT Employees.ename,Aircraft.crusingrange  FROM Employees
inner join Certified on  Employees.eid = Certified.eid
inner join Aircraft on  Certified.aid = Aircraft.aid
where Aircraft.crusingrange > 5000;



output:




Betty Adams	8430
George Wright	8430
Karen Scott	8430
Lisa Walker	8430
Betty Adams	7120
George Wright	7120
Lawrence Sperry	7120
Mark Young	7120
Lisa Walker	7120
Eric Cooper	7120
George Wright	6900
Joseph Thompson	6900
Angela Martinez	6900
Lisa Walker	6900
Betty Adams	6441
George Wright	6441
Lisa Walker	6441
Mary Johnson	6475
Betty Adams	6475
George Wright	6475
Michael Miller	6475
Karen Scott	6475
Lisa Walker	6475

---------------------------------------------------------------------------------------------------------------------------------
Query:13
---------------------------------------------------------------------------------------------------------------------------------


SELECT Employees.ename,Aircraft.crusingrange  FROM Employees
inner join Certified on  Employees.eid = Certified.eid
inner join Aircraft on  Certified.aid = Aircraft.aid
group by Employees.ename,Aircraft.crusingrange
having Aircraft.crusingrange > 1000 and count(*) > 1;



---------------------------------------------------------------------------------------------------------------------------------
Query:14
---------------------------------------------------------------------------------------------------------------------------------

SELECT Employees.ename,Aircraft.aname  FROM Employees
right join Certified on  Employees.eid = Certified.eid
right join Aircraft on  Certified.aid = Aircraft.aid
group by Employees.ename,Aircraft.aname,Aircraft.crusingrange
having Aircraft.crusingrange > 1000 and Aircraft.aname like "Boeing%";



output:



Betty Adams	Boeing 737-800
Betty Adams	Boeing 747-400
Betty Adams	Boeing 757-300
Betty Adams	Boeing 767-400ER
Betty Adams	Boeing 777-300
George Wright	Boeing 727
George Wright	Boeing 737-800
George Wright	Boeing 747-400
George Wright	Boeing 757-300
George Wright	Boeing 767-400ER
George Wright	Boeing 777-300
James Smith	Boeing 737-800
James Smith	Boeing 757-300
John Williams	Boeing 737-800
John Williams	Boeing 757-300
Karen Scott	Boeing 747-400
Karen Scott	Boeing 767-400ER
Larry West	Boeing 737-800
Lisa Walker	Boeing 727
Lisa Walker	Boeing 737-800
Lisa Walker	Boeing 747-400
Lisa Walker	Boeing 757-300
Lisa Walker	Boeing 767-400ER
Lisa Walker	Boeing 777-300
Mark Young	Boeing 737-800
Mary Johnson	Boeing 737-800
Mary Johnson	Boeing 757-300
Mary Johnson	Boeing 767-400ER
Michael Miller	Boeing 757-300
Michael Miller	Boeing 767-400ER


=====================================================================================================================================================================================



-----------------------------------------------------------------------------------------------------
exercise 5.4
----------------------------------------------------------------------------------------------------

 


create database db1;
use db1;
 create table dept(
 did int primary key,
 dname varchar(20),
 budget int,
 managerid int,
 foreign key(managerid) references emp(eid)
 );




 INSERT INTO dept (did, dname, budget, managerid)
 VALUES
     (1, 'Hardware', 1048572.12, 141582651),
     (2, 'Operations', 12099101.00, 287321212),
     (3, 'Legal', 222988.13, 248965255),
     (4, 'Marketing', 538099.54, 548977562),
    (5, 'Software', 400011.12, 141582651),
     (6, 'Production', 12099102.00, 578875478),
     (7, 'Shipping', 5.00, 489456522);





   
 create table works(
 eid int,
 did int,
 pct_time int,
 primary key(eid,did),
 foreign key(eid) references emp(eid),
 foreign key(did) references dept(did)
 );





     INSERT INTO works (eid, did, pct_time)
VALUES
     (142519864, 2, 100),
     (242518965, 1, 100),
     (141582651, 1, 50),
    (141582651, 5, 50),
     (141582657, 1, 25),
     (011564812, 3, 100),
    (254099823, 3, 100),
     (356187925, 2, 100),
     (489456522, 7, 100),
     (287321212, 2, 100),
     (248965255, 3, 100),
    (159542516, 4, 100),
     (090873519, 2, 100),
     (486512566, 4, 100),
    (619023588, 1, 100),
     (548977562, 4, 100),
      (578875478, 6, 100),
      (112348546, 2, 100),
     (115987938, 2, 100),
    (132977562, 2, 100),
     (269734834, 2, 100),
     (280158572, 2, 100),
     (301221823, 2, 100),
     (318548912, 2, 100),
     (320874981, 2, 100),
  (322654189, 2, 100),
     (348121549, 2, 100),
     (351565322, 2, 100),
     (451519864, 2, 100),
     (455798411, 2, 100),
 (550156548, 2, 50),
     (552455318, 2, 25),
     (556784565, 2, 25),
     (567354612, 2, 75),
     (573284895, 2, 50),
     (574489456, 2, 50),
      (274878974, 6, 100),
     (289562686, 6, 100),
      (291795563, 6, 100),
     (334568786, 6, 100),
     (355548984, 6, 100),
     (310454876, 6, 100),
     (390487451, 6, 100),
     (454565232, 6, 50);



     select * from emp;




 create table emp(
 eid int primary key,
 ename varchar(30),
 age int,
 salary int
 );





 INSERT INTO emp(eid, ename, age, salary)
 VALUES
     (142519864, 'Susan Martin', 39, 56990),
     (242518965, 'James Smith', 68, 27099),
     (141582651, 'Mary Johnson', 44, 94011),
     (011564812, 'John Williams', 35, 74098),
     (254099823, 'Patricia Jones', 28, 42783),
     (356187925, 'Robert Brown', 28, 35431),
    (489456522, 'Linda Davis', 26, 25971),
     (287321212, 'Michael Miller', 62, 131072),
     (248965255, 'Barbara Wilson', 48, 95021),
     (159542516, 'Matt Nelson', 33, 48990),
     (090873519, 'Elizabeth Taylor', 27, 33055),
     (486512566, 'David Anderson', 20, 25199),
     (619023588, 'Jennifer Thomas', 24, 34654),
     (112348546, 'Joseph Thompson', 26, 24998),
     (115987938, 'Christopher Garcia', 60, 24998),
     (132977562, 'Angela Martinez', 31, 24998),
     (269734834, 'Rick Carter', 38, 24998),
    (280158572, 'Margaret Clark', 40, 24998),
     (301221823, 'Juan Rodriguez', 30, 32175),
    (318548912, 'Ann Mitchell', 23, 32175),
     (320874981, 'Daniel Lee', 23, 32175),
     (322654189, 'Lisa Walker', 38, 32175),
     (348121549, 'Trey Phillips', 69, 32175),
     (351565322, 'Nancy Allen', 30, 39910),
     (451519864, 'Mark Young', 34, 39910),
     (455798411, 'Luis Hernandez', 44, 39910),
     (550156548, 'George Wright', 42, 41008),
     (552455318, 'Ana Lopez', 35, 41008),
     (556784565, 'Kenneth Hill', 81, 41008),
     (567354612, 'Karen Scott', 70, 39910),
     (573284895, 'Steven Green', 29, 39910),
     (574489456, 'Betty Adams', 39, 39910),
     (156454894, 'Daniel Evans', 25, 40312),
     (156478151, 'Gene Edwards', 51, 41008),
     (154899853, 'Dorthy Lewis', 33, 41008),
     (152784544, 'Eric Collins', 23, 41008),
     (147454898, 'Scott Bell', 23, 70100),
    (156459694, 'Gil Richardson', 32, 70100),
     (154478452, 'Dorthy Howard', 28, 40312),
     (154465461, 'Eric Cooper', 26, 24998),
     (128678823, 'William Ward', 33, 24998),
    (174949844, 'Chad Stewart', 29, 24998),
     (198459474, 'Lisa Gray', 31, 24998),
    (274878974, 'Harry Watson', 30, 24998),
    (167894232, 'Paul Hall', 25, 24998),
    (154898314, 'Gim Rogers', 25, 32175),
     (489421823, 'Richard Jackson', 33, 32996),
     (548977562, 'Donald King', 43, 92048),
     (289562686, 'Thomas Robinson', 34, 32175),
     (291795563, 'Haywood Kelly', 36, 32175),
     (578875478, 'Edward Baker', 50, 101071),
    (511355593, 'Maria White', 22, 24998),
     (608394533, 'Charles Harris', 24, 24998),
     (334568786, 'William Moore', 32, 32175),
     (355548984, 'Tom Murphy', 41, 32175),
     (310454876, 'Milo Brooks', 22, 39910),
     (390487451, 'Mark Coleman', 42, 39910),
     (454565232, 'Louis Jenkins', 20, 39910),
     (141582657, 'Stanley Browne', 23, 14093);

-------------------------------------------------------------------
queries
----------------------------------------------------------------------

   

--------------------------------------------------------------------------------------------
  -- 1). Print the names and ages of each employee who works in both the Hardware department

---------------------------------------------------------------------------------------------

  
     
select ename,age,dname
from emp e
join works w on e.eid=w.eid
join dept d on d.did =w.did
where dname="Hardware" or dname="software";

/*


output:




James Smith	68	Hardware
Mary Johnson	44	Hardware
Stanley Browne	23	Hardware
Jennifer Thomas	24	Hardware
Mary Johnson	44	Software

----------------------------------------------------------------------------
-- 2).For each department with more than 20 full-time-equivalent employees
 (i.e. where the part-time and full-time employees add up to at least that many
 full-time employees), print the did together with the number of employees that
 work in that department.
 */
-----------------------------------------------------------------------------------



select did,sum(pct_time) from Works group by did having sum(pct_time) > 2000;
 
 


---------------------------------------------------------------------------------------------------------------------------
-- 3).print the name of each employee whose salary exceeds the budget of all of the departments that he or she works in.
---------------------------------------------------------------------------------------------------------------------------



select e.ename
 from Emp e
 natural join Works w
 natural join Dept d
 where e.salary > d.budget;



output:


Linda Davis


---------------------------------------------------------------------------------------------------------------------------

-- 4). Find the managerids of managers who manage only departments with budgets greater than $1 million.
---------------------------------------------------------------------------------------------------------------------------


 



 select * from Dept where budget > 1000000.00;




output:



1	Hardware	1048572	141582651
2	Operations	12099101	287321212
6	Production	12099101	578875478
			

---------------------------------------------------------------------------------------------------------------------------

-- 5). Find the enames of managers who manage the departments with the largest budgets.

------------------------------------------------------------------------------------------------------------------------------



select ename,dname,budget
 from emp e, dept d where e.eid = d.managerid and d.budget = (select max(budget) from Dept);




output:


Michael Miller	Operations	12099101
Edward Baker	Production	12099101

---------------------------------------------------------------------------------------------------------------------------
 
 -- 6). If a manager manages more than one department, he or she controls the sum of all the
 -- budgets for those departments. Find the managerids of managers who control more than
-- $5 million.
---------------------------------------------------------------------------------------------------------------------------



  select managerid,dname
  from Dept
  group by managerid
  having sum(budget)>5000000;
 


output:


287321212	Operations
578875478	Production

---------------------------------------------------------------------------------------------------------------------------

  -- 7). find the managerid of managers who control the largest amounts.
---------------------------------------------------------------------------------------------------------------------------


 
 select managerid
 from Dept
 group by managerid
 having sum(budget) = (select sum(budget) from Dept group by managerid order by sum(budget) desc limit 1);
 

output:


287321212
578875478

---------------------------------------------------------------------------------------------------------------------------

 -- 8). Find the enames of managers who manage only departments with budgets larger than $1 million, but at least one department with a budget less than $5 million.

---------------------------------------------------------------------------------------------------------------------------



 select ename
 from Emp e, Dept d
 where e.eid = d.managerid and d.budget >1000000 and d.managerid in(select managerid from Dept where budget < 5000000);


output:


Mary Johnson

=====================================================================================================================================================================================


----------------------------------------------------------------------------------------------------
exercise 5.5
-------------------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------------------------------------

Print the average ,sum and count of sailor's ratings
---------------------------------------------------------------------------------------------------------------------------

*/
SELECT AVG (S.rating) AS AVERAGE
FROM Sailors S;



SELECT SUM(S.rating)
FROM Sailors S;



SELECT COUNT(S.rating)
FROM Sailors S;




/*
-- OUTPUT
# AVERAGE
5.3333



# SUM(S.rating)
16



# COUNT(S.rating)
3

__________________________________________________________________________________________________________________________________________
*/


/*__________________________________________________________________________________________________________________________________________

(a) Show the left outer join of S with itself, with the join condition being sid=sid.
(b) Show the right outer join of S with itself, with the join condition being
sid=sid.
(c) Show the full outer join of S with itself, with the join condition being sid=sid.
(d) Show the left outer join of S1 with S2, with the join condition being sid=sid.
(e) Show the right outer join of S1 with S2, with the join condition being sid=sid.
(f) Show the full outer join of S1 with S2, with the join condition being sid=sid
*/



SELECT S1.*, S2.*
FROM Sailors AS S1
LEFT OUTER JOIN Sailors AS S2 ON S1.sid = S2.sid;



SELECT S1.*, S2.*
FROM Sailors AS S1
RIGHT OUTER JOIN Sailors AS S2 ON S1.sid = S2.sid;



SELECT * FROM Sailors AS S1 FULL OUTER JOIN
 Sailors AS S2 ON S1.sid = S2.sid;
 


SELECT S1.*, S2.*
FROM sailors as S1
LEFT OUTER JOIN sailors as S2 ON S1.sid = S2.sid;



SELECT S1.*, S2.*
FROM sailors as S1
right OUTER JOIN sailors as S2 ON S1.sid = S2.sid;



SELECT COALESCE(S1.sid, S2.sid) AS sid,
       S1.column1 AS column1_S1,
       S1.column2 AS column2_S1,
       -- Include other columns from S1 as needed
       S2.column1 AS column1_S2,
       S2.column2 AS column2_S2 FROM S1
FULL OUTER JOIN S2 ON S1.sid = S2.sid;




/*
-- OUTPUT
# sid sname rating age sid sname rating age
18 jones 3 30 18 jones 3 30
22 ahab 7 44 22 ahab 7 44
41 jonah 6 56 41 jonah 6 56
63 moby 15 63 moby 15



# sid sname rating age sid sname rating age
18 jones 3 30 18 jones 3 30
22 ahab 7 44 22 ahab 7 44
41 jonah 6 56 41 jonah 6 56
63 moby 15 63 moby 15



# sid sname rating age sid sname rating age
18 jones 3 30 18 jones 3 30
22 ahab 7 44 22 ahab 7 44
41 jonah 6 56 41 jonah 6 56
63 moby 15 63 moby 15



# sid sname rating age sid sname rating age
18 jones 3 30 18 jones 3 30
22 ahab 7 44 22 ahab 7 44
41 jonah 6 56 41 jonah 6 56
63 moby 15 63 moby 15





=====================================================================================================================================================================================


------------------------------------------------------------------------------------
exercise 5.7
---------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------------------------------------

1.- Define a table constraint on Emp that will ensure that every employee makes at least $10,000.
---------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Emp (eid INTEGER,
 ename CHAR(10),
 age INTEGER,
 salary REAL,
 PRIMARY KEY (eid),
 CHECK (salary >= 10000)
 )
 


---------------------------------------------------------------------------------------------------------------------------
 
 -- 2. Define a table constraint on Dept that will ensure that all managers have age >30.
---------------------------------------------------------------------------------------------------------------------------


 
CREATE TABLE Dept (did INTEGER,
 buget REAL,
 managerid INTEGER,
 PRIMARY KEY (did),
 FOREIGN KEY (managerid) REFERENCES Emp,
 CHECK((SELECT E.age
FROM Emp E, Dept D)
WHERE E.eid=D.managerid)>30)



---------------------------------------------------------------------------------------------------------------------------

-- 3. Define an assertion on Dept that will ensure that all managers have age >30
---------------------------------------------------------------------------------------------------------------------------



CREATE TABLE Dept (did INTEGER,
 budget REAL,
 managerid INTEGER,
 PRIMARY KEY (did))



=====================================================================================================================================================================================


