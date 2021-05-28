CREATE SCHEMA IF NOT EXISTS `teav4` DEFAULT CHARACTER SET utf8 ;
USE `teav4` ;

-- -----------------------------------------------------
-- Table `teav4`.`harvest_method`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`harvest_method` (
  `idharvest_method` INT NOT NULL AUTO_INCREMENT,
  `season harvested` VARCHAR(45) NOT NULL,
  `order of flush` VARCHAR(45) NULL,
  `leaf picking method` VARCHAR(45) NULL,
  `picking grade` VARCHAR (45) NULL,
  `distinguishing manufacturing process` VARCHAR (45) NULL,
  PRIMARY KEY (`idharvest_method`))
ENGINE = InnoDB DEFAULT CHARSET=latin1
COMMENT = '- this table is only for teas that are made from tea plant.\n- will have a \"hasa\" relationship with picking method; leaf picking or processing is a part of the harvesting of tea.\n- \n\n';

#sri lankan teas -3
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default,'autumn', '3rd', 'hand', 'machine', '6 stage manufacture');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default,'autumn', '1st', 'hand', 'machine', 'orthodox');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', '2 young leaves + bud', '6 stage manufacture');

####originally for a white tea that no longer exists!! INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', 'bud', '6 stage manufacture');

# indian teas-5
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'fall', '3rd', 'hand', 'multi leaf', 'CTC');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'summer', '2nd', 'hand', '2 young leaves + bud', 'high heat oxidation inhibition');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'summer', '2nd', 'hand', 'multi leaf', 'CTC');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'machine', 'machine', 'CTC');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'summer', '2nd', 'hand', 'multi leaf', 'CTC');

#chinese teas-5
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', '2 young leaves + bud', 'high heat oxidation inhibition');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', 'bud', 'no oxidation');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', '2 young leaves + bud', 'smoked');

#dont need INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', 'fine', 'high heat oxidation inhibition');

INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', '2 young leaves + bud', 'fermented');

#method 6 = 2!!!! SKIPINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', 'bud', 'no oxidation');

INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'all', '1st-6th', 'hand', '2 young leaves + bud', '6 stage manufacture');

#dont needINSERT INTO `harvest_method` (`idharvest_method` `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'all', #'1st-6th', 'hand', 'fine', '6 stage manufacture');
#dont needINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', #'1st', 'hand', 'fine', 'high heat oxidation inhibition');
#dont needINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', #'1st', 'hand', 'fine', 'high heat oxidation inhibition');
#dont needINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', #'1st', 'hand', 'fine', 'high heat oxidation inhibition');

#japanese teas-4
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'autumn', '3rd', 'machine', 'machine', 'high heat oxidation inhibition');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'machine', '2 young leaves + bud', 'grounded');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'machine', '2 young leaves + bud', 'high heat oxidation inhibition');
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'spring', '1st', 'hand', '2 young leaves + bud', 'shaded');

#kenyan tea-1
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'winter', '2nd', 'hand', '2 young leaves + bud', 'CTC');

#Taiwanese tea-1
INSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'all', '>3', 'hand', '2 young leaves + bud', '6 stage manufacture');
#dont needINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'all', #'>3', 'hand', 'fine', '6 stage manufacture');
# dont needINSERT INTO `harvest_method` (`idharvest_method`, `season harvested`, `order of flush`, `leaf picking method`, `picking grade`, `distinguishing manufacturing process`) VALUES (default, 'all', #'>3', 'hand', 'fine', '6 stage manufacture');


-- -----------------------------------------------------
-- Table `teav4`.`raw_tea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`raw_tea` (
  `idraw_tea` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `caffeine level` ENUM('low', 'medium', 'high') NULL,
  `brew flavor` VARCHAR(45) NULL,
  `store 1` DECIMAL(5,2) NULL,
  `store 2` DECIMAL(5,2) NULL,
  `store 3` DECIMAL(5,2) NULL,
  `idharvest_method` INT default NULL,
  PRIMARY KEY (`idraw_tea`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_raw_tea_idharvest_method1_idx` (`idharvest_method` ASC),
  CONSTRAINT `fk_raw_tea_harvest_method1`
    FOREIGN KEY (`idharvest_method`)
    REFERENCES `teav4`.`harvest_method` (`idharvest_method`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB DEFAULT CHARSET=latin1
COMMENT = 'all raw teas will have a harvest method to them.\n\nfd: `name` --> all other columns.';

#sri lankan teas - 3
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'dimbula orange pekoe', 'black', 'medium', 'black cherry', '008.97', '010.50', '010.87', 1);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'arugam spring rain', 'black', 'medium', 'sunflower', '022.35','025.45', '023.85', 2);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'generic ceylon', 'black', 'low', 'tart raspberry', '022.35','025.45', '023.85', 3);


#indian teas - 4
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'karnataka plains delight', 'green', 'medium', 'sweet grass', '08.97', '010.50', '010.87', 4);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'nilgiri black tea', 'black', 'medium', 'roasted cacao', '032.97', '031.87', '030.99', 5);

#INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'nilgiri #green tea', 'green', 'high', 'cooked peas', '008.97', '009.97', '008.77', 6);

INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'super north assam', 'black', 'low', 'blackberry', '004.97', '005.02', '004.90', 7);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'darjeeling soft black', 'black', 'medium', 'muscat grape', '005.97', '006.87', '006.99', 8);

#chinese teas - 11
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'liquid gold', 'yellow', 'high', 'kolrabi', '555.97', '600.50', '565.00', 9);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'white porcelin tea', 'white', 'high', 'wheat', '455.97', '445.50', '460.99', 10);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'lapsong suchong', 'black', 'low', 'tar', '023.97', '022.50', '023.99', 11);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'yunnan green tea', 'green', 'high', 'cut plum tree', '012.99', '013.25', '012.00', 9);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'southern pu-erh', 'pu-erh', 'low', 'cow pasture', '032.99', '032.89', '033.00', 12);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'flowery white tea', 'white', 'high', 'caramel', '032.99', '032.89', '033.00', 10);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'fujian oolong', 'oolong', 'medium', 'earthy', '022.99', '022.79', '022.79', 13);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'northestern oolong ', 'oolong', 'medium', 'chestnut', '026.99', '030.99', '026.99', 13);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'dragon tears', 'green', 'high', 'alfalfa', '82.99', '73.25', '81.79', 9);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'rare vermillion blessing', 'yellow', 'high', 'mixed greens', '355.97', '356.50', '360.00', 9);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'royal sun', 'yellow', 'high', 'toasted corn', '255.97', '240.50', '254.00', 9);


#japanese teas - 4
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'bancha', 'green', 'medium', 'hay', '008.99', '007.79', '008.89', 14);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'macha', 'green', 'medium', 'savory-sweet grass', '400.99', '402.79', '405.79', 15);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'sencha', 'green', 'medium', 'grass', '300.99', '289.99', '299.99', 16);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'gyokuro', 'green', 'medium', 'hazelnut', '230.45', '237.75', '240.00', 17);

#Kenyan teas -1
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'rift valley pekoe', 'black', 'medium', 'honey', '8.99', '7.79', '8.89', 18);


#taiwan teas -3
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'taste of taipei', 'oolong', 'medium', 'citrus', '026.99', '030.99', '026.99', 19);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'generic oolong', 'oolong', 'medium', 'lilac', '036.99', '030.99', '034.99', 19);
INSERT INTO `raw_tea` (`idraw_tea`, `name`, `type`, `caffeine level`, `brew flavor`, `store 1`, `store 2`, `store 3`, `idharvest_method`) VALUES (default, 'sweet spring news', 'oolong', 'medium', 'almonds', '023.99', '025.89', '020.99', 19);
# 26 total


-- -----------------------------------------------------
-- Table `teav4`.`mixed_tea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`mixed_tea` (
  `idmixed_tea` INT,
  #`fk` INT default NULL,
  `mixed tea name` VARCHAR(45) NOT NULL,
  `main non-tea ingredient` VARCHAR(45) NULL,
  `part of plant` VARCHAR(45) NULL,
  PRIMARY KEY (`idmixed_tea`),
  UNIQUE INDEX `mixed_tea_name_UNIQUE` (`mixed tea name` ASC),
  UNIQUE INDEX `idmixed_tea_UNIQUE` (`idmixed_tea` ASC),
  CONSTRAINT `fk_mixed_tea_1`
    FOREIGN KEY (`idmixed_tea`)
    REFERENCES `teav4`.`raw_tea` (`idraw_tea`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB DEFAULT CHARSET=latin1
COMMENT = '- mixed_tea \'isa\" subset of raw_tea; each mixed tea is comprised of at least 1 raw_tea (found in superclass, denoted by primary and foreign key)\n + some other ingredients that aren\'t tea.\n- subclass; constraints:\n	 disjoint (at most, any tea can belong to 1 sublass only or none).\n	partial (only some of the objects of raw_tea are found in mixed_tea)\n	\nFD: mixed tea `name`';

INSERT INTO `mixed_tea` (`idmixed_tea`, `mixed tea name`, `main non-tea ingredient`, `part of plant`) VALUES (5, 'chai variant #1', 'cinnamon', 'bark');
INSERT INTO `mixed_tea` (`idmixed_tea`, `mixed tea name`, `main non-tea ingredient`, `part of plant`) VALUES (3, 'earl grey tea', 'bergamot oil', 'fruit essential oil');
INSERT INTO `mixed_tea` (`idmixed_tea`, `mixed tea name`, `main non-tea ingredient`, `part of plant`) VALUES (11, 'jasmine green tea', 'jasmine', 'flower');
INSERT INTO `mixed_tea` (`idmixed_tea`, `mixed tea name`, `main non-tea ingredient`, `part of plant`) VALUES (23, 'morrocan herbal tea', 'mint', 'leaves');


-- -----------------------------------------------------
-- Table `teav4`.`countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`countries` (
  `idcountries` INT NOT NULL,
  `countries` VARCHAR(45) NOT NULL,
  `local growth region` VARCHAR(225) NOT NULL,
  `elevation` ENUM('low','medium','high') NULL,
  `avg rainfall(in)` INT(11) NULL,
  `avg harvest temp(F)` INT(11) NULL,
  `tea produced locally(mil. lbs.)` DECIMAL(6,3) NULL,
  PRIMARY KEY (`idcountries`))
  ENGINE = InnoDB DEFAULT CHARSET=latin1;

#sri lanka-used info from wikipedia page https://en.wikipedia.org/wiki/Tea_production_in_Sri_Lanka#cite_note-History_of_Ceylon_tea-15
#-3
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (1, 'sri lanka', 'dimbula', 'high', '65', '75', '002.450');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (2, 'sri lanka', 'uva', 'high', '62', '60', '000.550');
#INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. #lbs.)`) VALUES (3, 'sri lanka', 'uva', 'high', '62', '60', '000.055');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (3, 'sri lanka', 'nuwara eliya', 'high', '62', '58', '000.045');

#india-4
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (4, 'india', 'karnataka', 'low', '65', '75', '000.980');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (5, 'india', 'nilgiri', 'low', '70', '55', '002.500');

#DROP!INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. #lbs.)`) VALUES (7, 'india', 'nilgiri', 'low', '70', '55', '002.500');

INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (6, 'india', 'assam', 'low', '55', '95', '112.000');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (7, 'india', 'darjeeling', 'high', '119', '88', '089.000');

#China-8
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (8, 'China', 'Yunnan', 'medium', '55', '88', '001.200');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (9, 'China', 'Sichuan', 'high', '58', '96', '001.770');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (10, 'China', 'Zhejiang', 'low', '70', '90', '007.130');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (11, 'China', 'Fujian', 'low', '70', '88', '004.540');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (12, 'China', 'Hunan', 'medium', '63', '88', '003.800');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`)
VALUES (13, 'China', 'jiangxi', 'medium', '68', '88', '002.540');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (14, 'China', 'Guangxi', 'low', '67', '88', '006.650');

INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (15, 'China', 'Guangdong', 'low', '72', '85', '006.740');

#japan-5
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (16, 'japan', 'Shizuoka', 'low', '67', '75', '000.160');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (17, 'japan', 'nara', 'low', '61', '68', '000.580');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (18, 'japan', 'kyoto', 'medium', '65', '88', '000.870');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (19, 'japan', 'tokushima', 'low', '61', '70', '000.540');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (20, 'japan', 'kumamoto', 'low', '71', '88', '002.540');

#kenya-3
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (21, 'kenya', 'samburu', 'high', '60', '78', '001.840');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (22, 'kenya', 'baringo', 'high', '61', '67', '000.898');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (23, 'kenya', 'nyandarua', 'high', '60', '69', '00.940');


# taiwan-4
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (24, 'taiwan', 'nantou', 'high', '74', '87', '000.440');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (25, 'taiwan', 'hualien', 'medium', '70', '88', '000.043');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (26, 'taiwan', 'taipei', 'low', '68', '85', '00.369');
INSERT INTO `countries` (`idcountries`, `countries`, `local growth region`, `elevation`,`avg rainfall(in)`,`avg harvest temp(F)`, `tea produced locally(mil. lbs.)`) VALUES (27, 'taiwan', 'changhua', 'medium', '70', '88', '000.540');

#total -27



-- -----------------------------------------------------
-- Table `teav4`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`companies` (
  `idcompanies` INT NOT NULL AUTO_INCREMENT,
  `company name` VARCHAR(45) NULL,
  `main business` ENUM('plantation', 'trader', 'blending', 'wholesale', 'retail') NULL,
  `established` YEAR(4) NULL,
  `website` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `primary customer` ENUM('consumer retail', 'corporate retail', 'food industry', 'restuarant') NULL,
  `international business` BOOLEAN NULL,
  `id.countries` INT NOT NULL,
  PRIMARY KEY (`idcompanies`, `id.countries`),
  INDEX `fk_companies_countries1_idx` (`id.countries` ASC),
  CONSTRAINT `fk_companies_countries1`
    FOREIGN KEY (`id.countries`)
    REFERENCES `teav4`.`countries` (`idcountries`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB DEFAULT CHARSET=latin1; 

#Sri Lankan companies
INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'haffordshire plantation ltd.', 'plantation', 1901, 'www.haffordshire.com', 'mike.localrep@hpl.com', 'corporate retail', 1, 1);

INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'teally great! LC.', 'retail', 2001, 'www.teallygreat.si.com', 'retail@teelygreat.com', 'consumer retail', 0, 2); 

INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'royal celon ltd.', 'trader', 1923, 'www.royalcelon.si.com', 'ordersd@royalcelon.com', 'corporate retail', 1, 3); 

# indian companies
INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'ponnapur estate', 'plantation', 1907, 'www.pnestate.id.com', 'business@pnestate.com', 'corporate retail', 1, 5);

INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'dharmik kryta aprahan', 'plantation', 1923, 'www.dka.id.com', 'solicit.orders@dka.com', 'corporate retail', 1, 4); 
 
INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'suprabhaat chai estate', 'plantation', 1931, 'www.chaisupra.id.com', 'requests@suprachai.com', 'food industry', 1, 7); 


# Chinese companies
INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'karp scale mountain co.', 'plantation', 1901, 'www.ksmco.com', 'order.submission@ksmco.ch.com', 'food industry', 0, 9); 
INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'guangdong agriculture tea supplier.', 'retail', 1989, 'www.guanagri.biz.com.', 'orders@alibaba.order.com', 'consumer retail', 0, 15); 
#INSERT INTO `companies` (`idcompanies`, `company name`, `main business`, `established`,`website`,`email`, `primary customer`, `international business`, `id.countries`) VALUES (default, 'foundational tea llc.', 'blending', 1950, 'www.blending.roc.com', 'orders@blendingorder.com.ch', 'food industry', 0, 13); 



-- -----------------------------------------------------
-- Table `teav4`.`raw_tea_has_countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teav4`.`raw_tea_has_countries` (
  `rt` INTEGER,
  `c` INTEGER,
  PRIMARY KEY (`rt`, `c`),
  INDEX `fk_raw_tea_has_countries_c1_idx` (`c` ASC),
  INDEX `fk_raw_tea_has_countries_rt1_idx` (`rt` ASC),
  CONSTRAINT `fk_raw_tea_has_countries_rt1`
    FOREIGN KEY (`rt`)
    REFERENCES `teav4`.`raw_tea` (`idraw_tea`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_raw_tea_has_countries_c1`
    FOREIGN KEY (`c`)
    REFERENCES `teav4`.`countries` (`idcountries`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
  )
  ENGINE = InnoDB DEFAULT
  CHARSET=latin1;

#ALTER TABLE raw_tea_has_countries ADD `raw tea` int;
#ALTER TABLE raw_tea_has_countries ADD `countries` int;

#UPDATE raw_tea_has_countries 
#    SET `raw tea` = (
#        SELECT idraw_tea
#        FROM raw_tea
#         );

#UPDATE raw_tea_has_countries 
#    SET `countries` = (
#        SELECT idcountries
#        FROM countries
#          );

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(1,1), (2,2), (3,3), (3,1), (4,4), (5,5), (6,6), (7,7), (7,4), (7,5);

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(8,9), (9,8), (10,11), (11, 8), (12,12), (13,10), (14,10), (15,10), (16,9);

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(12,13); #(16,14), (17,15), (18,13), (19,16), (19,17), (19,18), (20,18), (21,18);

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(16,14);
    
INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(17,15);

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(18,13); 

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES (19,16), (19,17), (19,18), (20,18), (21,18);

INSERT INTO `raw_tea_has_countries` (`rt`, `c`) VALUES
	(22,16), (22,20), (23,21), (23,22), (23,23), (24, 24), (24,26), (25,25),
	(25,27), (26,24);

