
DROP TABLE IF EXISTS `ano2013`;
DROP TABLE IF EXISTS `ano2014`;
DROP TABLE IF EXISTS `ano2015`;
DROP TABLE IF EXISTS `ano2016`;
DROP TABLE IF EXISTS `ano2017`;
DROP TABLE IF EXISTS `ano2018`;
DROP TABLE IF EXISTS `ano2019`;
DROP TABLE IF EXISTS `ano2020`;
DROP TABLE IF EXISTS `ano2021`;
DROP TABLE IF EXISTS `ano2022`;


CREATE TABLE `ano2013` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2014` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2015` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2016` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2017` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2018` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2019` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2020` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2021` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `ano2022` (
  `mes` VARCHAR(255) DEFAULT NULL,
  `nascidosVivos` tinyint unsigned DEFAULT NULL,
  `masculinos` tinyint unsigned DEFAULT NULL,
  `femininos` tinyint unsigned DEFAULT NULL,
  `cesario` tinyint unsigned DEFAULT NULL,
  `vaginal` tinyint unsigned DEFAULT NULL,
  `gemeos` tinyint unsigned DEFAULT NULL,
  `rn_baixopeso` tinyint unsigned DEFAULT NULL,
  `rn_pesoadequado` tinyint unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;



INSERT INTO `ano2013` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 89, 48, 41, 34, 55, 4, 10, 79),
    ('fevereiro', 92, 42, 50, 48, 44, 2, 9, 83),
    ('marco', 119, 62, 56, 51, 68, 4, 12, 107),
    ('abril', 104, 54, 50, 38, 66, 2, 6, 98),
    ('maio', 94, 45, 49, 43, 51, 2, 15, 79),
    ('junho', 111, 63, 48, 49, 62, 2, 7, 104),
    ('julho', 118, 60, 58, 43, 75, 0, 9, 109),
    ('agosto', 83, 43, 40, 38, 45, 1, 6, 77),
    ('setembro', 108, 62, 46, 48, 60, 0, 5, 103),
    ('outubro', 78, 34, 44, 45, 33, 2, 6, 72),
    ('novembro', 96, 52, 44, 46, 50, 0, 6, 90),
    ('dezembro', 97, 49, 48, 57, 40, 2, 6, 91);



INSERT INTO ano2014 (mes, nascidosVivos, masculinos, femininos, cesario, vaginal, gemeos, rn_baixopeso, rn_pesoadequado)
VALUES 
    ('janeiro', 97, 55, 42, 43, 54, 2, 9, 88),
    ('fevereiro', 103, 51, 52, 43, 60, 4, 10, 93),
    ('marco', 105, 57, 48, 44, 61, 0, 9, 96),
    ('abril', 98, 41, 57, 44, 54, 5, 6, 92),
    ('maio', 116, 65, 51, 56, 60, 4, 9, 107),
    ('junho', 97, 57, 40, 47, 50, 0, 1, 96),
    ('julho', 95, 52, 42, 36, 59, 0, 8, 87),
    ('agosto', 102, 50, 52, 48, 54, 2, 13, 89),
    ('setembro', 116, 55, 61, 64, 52, 2, 5, 111),
    ('outubro', 95, 50, 45, 47, 48, 0, 6, 89),
    ('novembro', 89, 49, 40, 47, 42, 6, 7, 82),
    ('dezembro', 119, 58, 61, 51, 68, 2, 6, 113);





INSERT INTO `ano2015` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 94, 39, 55, 52, 42, 0, 5, 89),
    ('fevereiro', 98, 52, 46, 54, 44, 0, 9, 89),
    ('marco', 120, 65, 55, 51, 68, 4, 11, 109),
    ('abril', 118, 62, 56, 56, 62, 2, 12, 106),
    ('maio', 127, 64, 63, 73, 54, 6, 13, 114),
    ('junho', 124, 65, 59, 68, 56, 0, 7, 117),
    ('julho', 114, 62, 52, 46, 68, 7, 11, 103),
    ('agosto', 104, 47, 57, 60, 43, 4, 10, 94),
    ('setembro', 110, 51, 59, 63, 47, 0, 8, 102),
    ('outubro', 106, 53, 53, 64, 42, 1, 10, 96),
    ('novembro', 44, 26, 18, 27, 17, 3, 7, 37),
    ('dezembro', 115, 59, 56, 61, 54, 0, 7, 108);





INSERT INTO `ano2016` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 101, 52, 49, 53, 48, 2, 7, 94),
    ('fevereiro', 95, 52, 43, 43, 52, 4, 7, 88),
    ('marco', 113, 62, 51, 61, 52, 4, 4, 109),
    ('abril', 115, 63, 52, 60, 55, 4, 8, 107),
    ('maio', 108, 56, 52, 52, 56, 0, 8, 100),
    ('junho', 108, 52, 56, 54, 54, 4, 4, 94),
    ('julho', 125, 64, 61, 72, 53, 0, 10, 115),
    ('agosto', 109, 54, 55, 60, 49, 4, 8, 101),
    ('setembro', 98, 48, 48, 59, 39, 4, 5, 93),
    ('outubro', 111, 53, 58, 66, 45, 0, 6, 105),
    ('novembro', 82, 43, 39, 44, 38, 1, 5, 77),
    ('dezembro', 112, 59, 53, 66, 46, 6, 12, 100);







INSERT INTO `ano2017` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 99, 59, 40, 64, 35, 2, 12, 87),
    ('fevereiro', 73, 29, 44, 45, 28, 6, 9, 64),
    ('marco', 120, 66, 54, 63, 57, 1, 6, 114),
    ('abril', 121, 56, 65, 67, 54, 0, 10, 111),
    ('maio', 122, 63, 59, 80, 41, 2, 4, 116),
    ('junho', 95, 46, 49, 53, 41, 0, 9, 86),
    ('julho', 104, 49, 55, 60, 44, 2, 11, 93),
    ('agosto', 121, 63, 58, 70, 51, 5, 7, 114),
    ('setembro', 121, 55, 66, 67, 54, 5, 14, 107),
    ('outubro', 105, 48, 57, 62, 43, 4, 13, 92),
    ('novembro', 120, 62, 58, 75, 45, 2, 11, 109),
    ('dezembro', 106, 48, 58, 59, 47, 2, 9, 97);







INSERT INTO `ano2018` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 149, 67, 82, 97, 52, 0, 8, 141),
    ('fevereiro', 104, 45, 59, 66, 38, 2, 6, 98),
    ('marco', 116, 66, 50, 64, 52, 4, 3, 113),
    ('abril', 122, 69, 53, 58, 64, 2, 6, 116),
    ('maio', 120, 61, 59, 67, 53, 4, 9, 111),
    ('junho', 113, 54, 59, 65, 48, 1, 10, 103),
    ('julho', 128, 62, 66, 68, 59, 5, 8, 120),
    ('agosto', 119, 71, 48, 78, 41, 6, 10, 109),
    ('setembro', 129, 61, 68, 82, 47, 3, 4, 125),
    ('outubro', 123, 67, 56, 78, 45, 0, 8, 115),
    ('novembro', 106, 51, 55, 65, 41, 0, 6, 100),
    ('dezembro', 109, 60, 49, 73, 36, 0, 5, 104);




INSERT INTO `ano2019` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 122, 58, 64, 73, 49, 0, 4, 118),
    ('fevereiro', 94, 41, 53, 58, 36, 4, 5, 89),
    ('marco', 114, 64, 50, 71, 43, 6, 16, 98),
    ('abril', 143, 81, 62, 86, 56, 7, 15, 128),
    ('maio', 128, 68, 60, 67, 61, 1, 13, 115),
    ('junho', 104, 58, 46, 69, 35, 5, 8, 98),
    ('julho', 104, 48, 56, 65, 39, 2, 8, 96),
    ('agosto', 111, 58, 53, 70, 41, 2, 3, 108),
    ('setembro', 116, 51, 64, 74, 42, 0, 6, 110),
    ('outubro', 113, 51, 62, 72, 41, 3, 13, 100),
    ('novembro', 97, 53, 44, 62, 35, 0, 5, 92),
    ('dezembro', 129, 64, 65, 82, 47, 2, 11, 118);


INSERT INTO `ano2020` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 115, 54, 61, 69, 46, 4, 12, 103),
    ('fevereiro', 93, 49, 44, 62, 31, 1, 12, 81),
    ('marco', 97, 43, 54, 62, 35, 2, 5, 92),
    ('abril', 114, 54, 60, 78, 36, 1, 11, 103),
    ('maio', 114, 62, 52, 70, 44, 2, 7, 107),
    ('junho', 107, 60, 47, 61, 46, 4, 9, 98),
    ('julho', 123, 57, 66, 77, 46, 4, 7, 116),
    ('agosto', 103, 44, 59, 68, 35, 2, 12, 91),
    ('setembro', 88, 50, 38, 58, 30, 2, 6, 82),
    ('outubro', 98, 44, 54, 69, 29, 2, 9, 89),
    ('novembro', 91, 45, 46, 62, 29, 4, 9, 82),
    ('dezembro', 124, 60, 64, 86, 38, 0, 5, 119);





INSERT INTO `ano2021` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 94, 38, 56, 57, 37, 4, 10, 84),
    ('fevereiro', 98, 48, 50, 71, 27, 0, 10, 88),
    ('marco', 116, 56, 60, 78, 38, 0, 6, 110),
    ('abril', 113, 55, 58, 77, 36, 2, 5, 108),
    ('maio', 110, 53, 57, 84, 26, 6, 7, 93),
    ('junho', 105, 53, 52, 81, 24, 2, 15, 90),
    ('julho', 104, 49, 55, 75, 29, 4, 13, 91),
    ('agosto', 87, 45, 42, 63, 24, 4, 9, 78),
    ('setembro', 108, 48, 59, 73, 35, 2, 8, 100),
    ('outubro', 91, 44, 47, 63, 28, 2, 10, 81),
    ('novembro', 92, 51, 41, 62, 30, 2, 5, 87),
    ('dezembro', 116, 63, 53, 82, 34, 6, 11, 105);







INSERT INTO `ano2022` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 98, 42, 56, 63, 35, 0, 6, 92),
    ('fevereiro', 110, 53, 57, 68, 42, 1, 11, 99),
    ('marco', 111, 57, 54, 80, 31, 2, 11, 100),
    ('abril', 94, 54, 40, 64, 30, 2, 9, 85),
    ('maio', 94, 48, 46, 51, 43, 0, 6, 88),
    ('junho', 110, 61, 49, 78, 32, 6, 8, 102),
    ('julho', 92, 44, 48, 65, 27, 4, 8, 84),
    ('agosto', 110, 59, 51, 82, 28, 0, 6, 104),
    ('setembro', 91, 39, 52, 57, 34, 2, 6, 85),
    ('outubro', 95, 58, 37, 69, 26, 2, 11, 84),
    ('novembro', 103, 48, 55, 72, 31, 2, 4, 99),
    ('dezembro', 104, 52, 52, 75, 29, 4, 12, 92);




