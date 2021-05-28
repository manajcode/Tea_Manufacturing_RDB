#~~~~~~~~~~ phase 3 stuff~~~~~~~~~~~~~~~~~~
select *
from harvest_method;

select *
from countries;

select * 
from raw_tea;

#2
select `name`, `distinguishing manufacturing process`
from raw_tea right join harvest_method on raw_tea.idharvest_method = harvest_method.idharvest_method
where `distinguishing manufacturing process` = 'CTC';

explain (select `name`, `distinguishing manufacturing process`
from raw_tea right join harvest_method on raw_tea.idharvest_method = harvest_method.idharvest_method
where `distinguishing manufacturing process` = 'CTC');

#3.
select `name`, `picking grade`, `distinguishing manufacturing process`
from raw_tea join harvest_method on raw_tea.idharvest_method = harvest_method.idharvest_method
where not `distinguishing manufacturing process` = 'CTC' and `picking grade` = 'fine';

explain(select `name`, `picking grade`, `distinguishing manufacturing process`
from raw_tea join harvest_method on raw_tea.idharvest_method = harvest_method.idharvest_method
where not `distinguishing manufacturing process` = 'CTC' and `picking grade` = 'fine');

#ADDED ON 5/12/18
#phase3, 5.3
select `name`
from `raw_tea` join `z`
where `idraw_tea` = `rt`;  

#this is the virtual intermediary table when elevation = high
CREATE VIEW `z` AS (select *
from raw_tea_has_countries 
where `c` IN (
			select `idcountries`
			from countries 
			Where `elevation` = 'high'));

EXPLAIN(select `name`
from `raw_tea` join `z`
where `idraw_tea` = `rt`);

#5.4
select `name`
from `raw_tea` join `A`
where `idraw_tea` = `rt`;  

CREATE VIEW `A` AS (select *
from raw_tea_has_countries 
where `c` IN (
			select `idcountries`
			from countries join companies
			Where `avg rainfall(in)` > 64 and elevation = 'high' and `main business` = 'plantation'));

EXPLAIN(select `name`
from `raw_tea` join `A`
where `idraw_tea` = `rt`);  

            
select *
from companies;


#5.5
SELECT `state`, `local growth region`
FROM `countries`
WHERE `idcountries` IN (
	SELECT `id.countries`
	FROM `companies`
	WHERE `international business` = 1);

EXPLAIN(
SELECT `state`, `local growth region`
FROM `countries`
WHERE `idcountries` IN (
	SELECT `id.countries`
	FROM `companies`
	WHERE `international business` = 1));




# attempted code for #4 and 5 of phase 3
select *
from raw_tea_has_countries;


#4.
SELECT `name`
FROM raw_tea JOIN raw_tea_has_countries join countries ON `raw_tea`.`idraw_tea` = `raw_tea_has_countries`.`pk_raw_tea`
WHERE `raw_tea_has_countries`.`pk_countries` = 


select (`store 1` + `store 2` +`store 3`)/3 as 'avg price'
from raw_tea, countries,  on 
where `elevation` = 'high'; 

#5
select distinct (`store 1` + `store 2` +`store 3`)/3 as 'avg price', `name`
from raw_tea, countries
where `elevation` = 'low'; 



#~~~~code for phase 4~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# question 2.a
#1.
DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news');
22:41:18	DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news')	2 row(s) affected	0.048 sec

EXPLAIN(DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news'));
# id, select_type, table, partitions, type, possible_keys, key, key_len, ref, rows, filtered, Extra
'1', 'DELETE', 'raw_tea', NULL, 'range', 'name_UNIQUE', 'name_UNIQUE', '47', 'const', '2', '100.00', 'Using where'


#2.
INSERT INTO raw_tea_has_countries (`pk_raw_tea`, `pk_countries`) VALUES
	(1,1), (1,3), (2,2), (3,3), (4,4), (5,5), (6,5), (7,6), (8,7),
	(9,9), (10,8), (11,11), (12,8), (13,14), (13,15), (14,10), (15,11)
	(16,10), (17,10), (17,11), (17,14), (18,15), (19,13), (20,19)
	(20,20), (20,21), (21,21), (22,20), (23,22), (23,23), (24,16)
	(25,26), (26,24), (26,25), (26,27), (27,24);


explain INSERT INTO raw_tea_has_countries (`pk_raw_tea`, `pk_countries`) VALUES
	(1,1), (1,3), (2,2), (3,3), (4,4), (5,5), (6,5), (7,6), (8,7),
	(9,9), (10,8), (11,11), (12,8), (13,14), (13,15), (14,10), (15,11)
	(16,10), (17,10), (17,11), (17,14), (18,15), (19,13), (20,19)
	(20,20), (20,21), (21,21), (22,20), (23,22), (23,23), (24,16)
	(25,26), (26,24), (26,25), (26,27), (27,24);

# id, select_type, table, partitions, type, possible_keys, key, key_len, ref, rows, filtered, Extra
'1', 'INSERT', 'raw_tea_has_countries', NULL, 'ALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL


#3. delete in countries table: 2 uva, 2nd nilgiri, duplicates
ALTER IGNORE TABLE countries
ADD UNIQUE INDEX idx_name (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`);



#4. insert the row avg for tea prices in raw_tea
ALTER TABLE `raw_tea` ADD `average` decimal(6,3);
UPDATE `raw_tea` SET `average` = (`store 1` + `store 2` +`store 3`)/3;
SELECT `average`
FROM `raw_tea`;

EXPLAIN select `average`
from `raw_tea`;

# id, select_type, table, partitions, type, possible_keys, key, key_len, ref, rows, filtered, Extra
'1', 'SIMPLE', 'raw_tea', NULL, 'ALL', NULL, NULL, NULL, NULL, '25', '100.00', NULL


#5. DELETE guanxi row.
DELETE FROM raw_tea WHERE (`name`) IN ('Guangxi');

explain DELETE FROM raw_tea WHERE (`name`) IN ('Guangxi');
# id, select_type, table, partitions, type, possible_keys, key, key_len, ref, rows, filtered, Extra
'1', 'DELETE', 'raw_tea', NULL, 'range', 'name_UNIQUE', 'name_UNIQUE', '47', 'const', '1', '100.00', 'Using where'


# question 2.b

explain((DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news'));


explain(INSERT INTO raw_tea_has_countries (`pk_raw_tea`, `pk_countries`) VALUES
	(1,1), (1,3), (2,2), (3,3), (4,4), (5,5), (6,5), (7,6), (8,7),
	(9,9), (10,8), (11,11), (12,8), (13,14), (13,15), (14,10), (15,11)
	(16,10), (17,10), (17,11), (17,14), (18,15), (19,13), (20,19)
	(20,20), (20,21), (21,21), (22,20), (23,22), (23,23), (24,16)
	(25,26), (26,24), (26,25), (26,27), (27,24));


explain(ALTER IGNORE TABLE countries
ADD UNIQUE INDEX idx_name (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`);
);

explain(UPDATE `raw_tea` SET `average` = (`store 1` + `store 2` +`store 3`)/3);

explain(DELETE FROM raw_tea WHERE (`name`) IN ('Guangxi'));


#QUESTION 3.A- 2 views and their response:

CREATE VIEW `A` AS (
	SELECT `name`, `type`, `caffeine level`  
	FROM `raw_tea`
	WHERE `caffeine level` = 'high'
	);

select *
from A;    
# name, type, caffeine level
'nilgiri green tea', 'green', 'high'
'liquid gold', 'yellow', 'high'
'white porcelin tea', 'white', 'high'
'yunnan green tea', 'green', 'high'
'flowery white tea', 'white', 'high'
'dragon tears', 'green', 'high'
'rare vermillion blessing', 'yellow', 'high'
'royal sun', 'yellow', 'high'



CREATE VIEW `B` AS (
	SELECT `copmany name`, `id.countries`
	FROM companies
	WHERE `primary customer` = 'consumer retail'
	);
select *
from B; 
# company name, id.countries
'teally great! LC.', '2'
'guangdong agriculture tea supplier.', '17'




# QUESTON3.B- show a query using each view and their response: 
SELECT 'name'
FROM A
WHERE `type` = 'green' AND `caffeine level` = 'medium';
# name




SELECT `local growth region`, `elevation`
FROM B, countries
WHERE `id.countries` = `idcountries`;
# local growth region, elevation
'uva', 'high'
'Guangdong', 'low'



# QUESTION 3.C insert stuff into views
INSERT INTO A (`name`, `type`, `caffeine level`) VALUES ('mystery tea', 'red', 'high');
select * 
from A;

#added row!
# name, type, caffeine level
'nilgiri green tea', 'green', 'high'
'liquid gold', 'yellow', 'high'
'white porcelin tea', 'white', 'high'
'yunnan green tea', 'green', 'high'
'flowery white tea', 'white', 'high'
'dragon tears', 'green', 'high'
'rare vermillion blessing', 'yellow', 'high'
'royal sun', 'yellow', 'high'
'mystery tea', 'red', 'high'


INSERT INTO B (`company name`, `id.countries`) VALUES ('ponzi scheme tea','2');
select * 
from B;
# no add
# company name, id.countries
'teally great! LC.', '2'
'guangdong agriculture tea supplier.', '17'



# QUESTION 4.A
#1.
CREATE PROCEDURE chinarain(
	#in rain DECIMAL (6,3),
	#OUT mean DECIMAL(6,3)
	#)
BEGIN
DECLARE rain CURSOR FOR
	SELECT `avg rainfall(in)`
	FROM `countries`
	WHERE `countries` = 'China';
DECLARE newlength INTEGER(11);
DECLARE rain.counts INTEGER(11);

SET rain.counts = 0;
SET mean = 0;
	OPEN rain;
	LOOP
		FETCH FROM rain INTO newlength;	
		SET rain.counts = rain.counts + 1;
		SET mean = mean + newlength;	
	END LOOP;
	set mean = mean/rain.counts;
CLOSE rain;
END;

#2.
CREATE PROCEDURE meanTemp (
	IN s INTEGER
	OUT mean DECIMAL
	)
DECLARE temp CURSOR FOR
	SELECT `avg harvest temp(F)`
	FROM countries
	WHERE `countries` = 'China';
DECLARE temp.counts INTEGER;

BEGIN
	SET temp.counts = 0;
	SET mean = 0.0;
	OPEN temp;
	temploop: LOOP
		FETCH FROM temp INTO newlength;
		SET temp.counts = temp.counts +1;
		SET mean = mean + newlength;
	END LOOP;
	SET mean = mean/temp.counts;
	CLOSE temp;
END;

































#~~~~~~~~~~~~~~
		DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news');

EXPLAIN DELETE FROM raw_tea WHERE (`name`) IN ('horrible', 'sweet spring news');

EXPLAIN INSERT INTO raw_tea_has_countries (`pk_raw_tea`, `pk_countries`) VALUES
	(1,1), (1,3), (2,2), (3,3), (4,4), (5,5), (6,5), (7,6), (8,7),
	(9,9), (10,8), (11,11), (12,8), (13,14), (13,15), (14,10), (15,11),
	(16,10), (17,10), (17,11), (17,14), (18,15), (19,13), (20,19),
	(20,20), (20,21), (21,21), (22,20), (23,22), (23,23), (24,16),
	(25,26), (26,24), (26,25), (26,27), (27,24);

#3.
ALTER IGNORE TABLE countries
ADD UNIQUE INDEX idx_name (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`);

#4.
ALTER TABLE `raw_tea` ADD `average` decimal(6,3);
UPDATE `raw_tea` SET `average` = (`store 1` + `store 2` +`store 3`)/3;

select `average`
from `raw_tea`;

explain select `average`
from `raw_tea`;


DELETE FROM raw_tea WHERE (`name`) IN ('Guangxi');

explain DELETE FROM raw_tea WHERE (`name`) IN ('Guangxi');


#3.a
CREATE VIEW `A` AS (
	SELECT `name`, `type`, `caffeine level`  
	FROM `raw_tea`
	WHERE `caffeine level` = 'high'
	);
select *
from A;    


CREATE VIEW `B` AS (
	SELECT `company name`, `id.countries`
	FROM companies
	WHERE `primary customer` = 'consumer retail'
	);
select *
from B;    


SELECT 'name'
FROM A
WHERE `type` = 'green' AND `caffeine level` = 'medium';

SELECT `local growth region`, `elevation`
FROM B, countries
WHERE `id.countries` = `idcountries`;


INSERT INTO A (`name`, `type`, `caffeine level`) VALUES ('mystery tea', 'red', 'high');
select * 
from A;

INSERT INTO B (`company name`, `id.countries`) VALUES ('ponzi scheme tea','2');
select * 
from B;



CREATE PROCEDURE chinarain(
	in r DECIMAL (6,3)
	OUT mean DECIMAL
	)
DECLARE rain CURSOR FOR
	SELECT `avg rainfall(in)`
	FROM `countries`
	WHERE `countries` = 'China';
DECLARE newlength INTEGER;

DECLARE rain.counts INTEGER;

BEGIN
	SET rain.counts = 0;
	SET mean = 0.0;
	OPEN rain;
	rainloop: LOOP
		FETCH FROM rain INTO newlength;	
		SET rain.counts = rain.counts + 1;
		SET mean = mean + newlength;	
	END LOOP;
	set mean = mean/rain.counts;
	CLOSE rain;
END;

