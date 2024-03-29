CREATE DATABASE IF NOT EXISTS collages_in_india;
use collages_in_india;
SHOW DATABASES;
SHOW tables;
CREATE TABLE IF NOT EXISTS collage(
iit_id_code INT PRIMARY KEY NOT NULL UNIQUE,
name_of_iit VARCHAR(50) NOT NULL UNIQUE,
numbers_of_student INT NOT NULL,
nirf_ranking INT NOT NULL UNIQUE
);
INSERT INTO collage
(iit_id_code,name_of_iit,numbers_of_student,nirf_ranking)

VALUES
(1, "iit madaras", 4233, 1),
(2, "iit delhi", 356 , 2),
(3, "iit bombaby " ,  2344 ,3 ),
(4, "iit kanpur " ,4215 ,4 ),
(5, "iit roorkee " ,4534 ,5 ),
(6, "iit kharagpur " ,5466 ,6 ),
(7, "iit guwahati " ,4353 ,7 ),
(8, "iit hayderabad " ,4662 ,8 ),
(9, "iit bhu " ,3456 ,15 ),
(10, "iit dhanbad " ,3465 ,17 ),
(11 , "iit indore  " ,2355 ,14 ),
(12 , "iit ropar  " , 5475,22 ),
(13 , "iit mandi " ,3456 ,33 ),
(14 , "iit gandhinager " ,4367 ,18 ),
(15 , "iit jodhapur " , 4577,30 ),
(16 , " iit patna" ,5467 ,41 ),
(17, "iit bhubaneshwar " ,5467 ,27 ),
(18, "iit tirupati" , 4367,59 ),
(20 , "iit palakkad " ,1935 ,69 ),
(21 , "iit jammu " , 2856,67 ),
(22 , " iit dharwad" ,6735 ,93 ),
(23, "iit bahailai " ,1646 ,81 ),
(24,"nit trichy",3534,9),
(25,"nit karnataka",4567,12),
(26,"nit rourkela",4673,16),
(27,"nit warangal",3567,21),
(29,"nit calicut",4547,23),
(31,"nit durgpur",5373,43),
(32,"nit silchar",3578,40),
(33,"nit jaipur",4537,37),
(34,"nit allahabad",5757,49),
(35,"nit kurukshetra",5384,58),
(36,"nit jalandhar",8294,46),
(37,"nit surat",2345,65),
(38,"nit meghalaya",5636,73),
(40,"nit raipur",8734,70),
(41,"nit srinagar",1845,82),
(42,"nit bhopal",215,80),
(43,"nit agartala",949,91),
(44,"nit goa",346,90),
(45,"nit manipur",235,95),
(46,"nit delhi",2463,51),
(47,"iiit hayderabad",546,62),
(48,"iiit gwalior",7578,78),
(49,"iiit jabalpur",7554,83),
(50,"iiit kanchipuram",4573,184);

SELECT *FROM collage;

/* applying multiple column with from*/

SELECT nirf_ranking FROM collage;

SELECT nirf_ranking, iit_id_code,name_of_iit FROM collage;

/*(iit_id_code,name_of_iit,numbers_of_student,nirf_ranking)*/

/* WHERE Clause */

SELECT * FROM collage WHERE nirf_ranking<20;
SELECT name_of_iit FROM collage WHERE numbers_of_student >1000;

/*Operators Used in WHERE Clause */

SELECT * FROM collage WHERE nirf_ranking = 1;
SELECT * FROM collage WHERE name_of_iit != 'iit delhi';

/*(iit_id_code,name_of_iit,numbers_of_student,nirf_ranking)*/

SELECT * FROM collage WHERE numbers_of_student <2000;
SELECT * FROM collage WHERE numbers_of_student>2000;
SELECT name_of_iit,numbers_of_student FROM collage WHERE nirf_ranking <=10;
SELECT name_of_iit,numbers_of_student FROM collage WHERE numbers_of_student >=1000;

SELECT * FROM collage WHERE iit_id_code AND numbers_of_student <1000;
SELECT * FROM collage WHERE nirf_ranking <10 OR numbers_of_student <1000;

SELECT * FROM collage WHERE NOT numbers_of_student >1000;
SELECT * FROM collage WHERE NOT name_of_iit = 'nit kurukshetra';

/* BETWEEN AND */

SELECT * FROM collage WHERE nirf_ranking BETWEEN 1 AND 10;

/* IN work liKe 'IS A' */

SELECT * FROM collage WHERE nirf_ranking IN (1,2,3,4,5,6,7,8,9,10);
SELECT * FROM collage WHERE nirf_ranking NOT IN (1,2,3,4,5,6,7,8,9,10);
SELECT * FROM collage WHERE name_of_iit IN ("nit rourkela","iit tirupati");
SELECT * FROM collage WHERE name_of_iit NOT IN ("nit rourkela","iit tirupati");

/*IS NULL*/

SELECT * FROM collage WHERE name_of_iit  IS NULL;
SELECT * FROM collage WHERE numbers_of_student IS NOT NULL;
SELECT * FROM collage WHERE nirf_ranking NOT IN (1,2,3,4,5,6,7,8,9,10) IS NOT NULL;

/* pater searching/wildcard*/

SELECT * FROM collage WHERE numbers_of_student LIKE '4___';
SELECT * FROM collage WHERE numbers_of_student LIKE '_ __';
SELECT * FROM collage WHERE numbers_of_student LIKE '___';
SELECT * FROM collage WHERE numbers_of_student LIKE '_4__';
SELECT * FROM collage WHERE numbers_of_student LIKE '___7';
SELECT * FROM collage WHERE numbers_of_student LIKE '___';
SELECT * FROM collage WHERE numbers_of_student LIKE '_5%';

SELECT * FROM collage WHERE numbers_of_student LIKE '%1 ';
SELECT * FROM collage WHERE numbers_of_student LIKE '2%';
SELECT * FROM collage WHERE numbers_of_student LIKE '%4';
SELECT * FROM collage WHERE numbers_of_student LIKE '__4%';
SELECT * FROM collage WHERE numbers_of_student LIKE '%';

/* LIKE*/

SELECT * FROM collage WHERE numbers_of_student LIKE 5384;
SELECT * FROM collage WHERE name_of_iit LIKE "nit rourkela";
SELECT * FROM collage WHERE numbers_of_student LIKE ' ';

/*sorting/order by*/

SELECT * FROM collage ORDER BY numbers_of_student ASC;
SELECT * FROM collage WHERE numbers_of_student >1000 AND nirf_ranking <10  ORDER BY numbers_of_student DESC;

/*LIMITS*/

SELECT * FROM collage LIMIT 5;
SELECT * FROM collage WHERE nirf_ranking <20 ORDER BY numbers_of_student ASC;
SELECT * FROM collage WHERE iit_id_code <20 AND nirf_ranking <20 AND numbers_of_student >5000 ORDER BY nirf_ranking ASC LIMIT 1;

/*DISTINCT = SHOW ONLY unique value*/

SELECT DISTINCT numbers_of_student,iit_id_code  FROM collage ;
SELECT COUNT(DISTINCT numbers_of_student) FROM collage;