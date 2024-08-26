
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
    ('janeiro', 89, 48, 41, 34, 55, 4, 2, 8),
    ('fevereiro', 92, 42, 50, 48, 44, 2, 2, 8),
    ('marco', 119, 62, 56, 51, 68, 4, 2, 8),
    ('abril', 104, 54, 50, 38, 66, 2, 2, 8),
    ('maio', 94, 45, 49, 43, 51, 2, 2, 8),
    ('junho', 111, 63, 48, 49, 62, 2, 2, 8),
    ('julho', 118, 60, 58, 43, 75, 0, 2, 8),
    ('agosto', 83, 43, 40, 38, 45, 1, 2, 8),
    ('setembro', 108, 62, 46, 48, 60, 0, 2, 8),
    ('outubro', 78, 34, 44, 45, 33, 2, 2, 8),
    ('novembro', 96, 52, 44, 46, 50, 0, 2, 8),
    ('dezembro', 97, 49, 48, 57, 40, 2, 2, 8);



INSERT INTO `ano2014` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
('janeiro', 97, 55, 42, 43, 54, 2, 8, 2),
('fevereiro', 103, 51, 52, 43, 60, 4, 8, 2),
('marco', 105, 57, 48, 44, 61, 0, 8, 2),
('abril', 98, 41, 57, 44, 54, 5, 8, 2),
('maio', 116, 65, 51, 56, 60, 4, 8, 2),
('junho', 97, 57, 40, 47, 50, 0, 8, 2),
('julho', 95, 52, 42, 36, 59, 0, 8, 2),
('agosto', 102, 50, 52, 48, 54, 2, 8, 2),
('setembro', 116, 55, 61, 64, 52, 2, 8, 2),
('outubro', 95, 50, 45, 47, 48, 0, 8, 2),
('novembro', 89, 49, 40, 47, 42, 6, 8, 2),
('dezembro', 119, 58, 61, 51, 68, 2, 8, 2);




INSERT INTO `ano2015` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
('janeiro', 94, 39, 55, 52, 42, 0, 8, 2),
('fevereiro', 98, 52, 46, 54, 44, 0, 8, 2),
('marco', 120, 65, 55, 51, 68, 4, 8, 2),
('abril', 118, 62, 56, 56, 62, 2, 8, 2),
('maio', 127, 64, 63, 73, 54, 6, 8, 2),
('junho', 124, 65, 59, 68, 56, 0, 8, 2),
('julho', 114, 62, 52, 46, 68, 7, 8, 2),
('agosto', 104, 47, 57, 60, 43, 4, 8, 2),
('setembro', 110, 51, 59, 63, 47, 0, 8, 2),
('outubro', 106, 53, 53, 64, 42, 1, 8, 2),
('novembro', 44, 26, 18, 27, 17, 3, 8, 2),
('dezembro', 115, 59, 56, 61, 54, 0, 8, 2);




INSERT INTO `ano2016` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
('janeiro', 101, 52, 49, 53, 48, 2, 8, 2),
('fevereiro', 95, 52, 43, 43, 52, 4, 8, 2),
('marco', 113, 62, 51, 61, 52, 4, 8, 2),
('abril', 115, 63, 52, 60, 55, 4, 8, 2),
('maio', 108, 56, 52, 52, 56, 0, 8, 2),
('junho', 108, 52, 56, 54, 54, 4, 8, 2),
('julho', 125, 64, 61, 72, 53, 0, 8, 2),
('agosto', 109, 54, 55, 60, 49, 4, 8, 2),
('setembro', 98, 48, 48, 59, 39, 4, 8, 2),
('outubro', 111, 53, 58, 66, 45, 0, 8, 2),
('novembro', 82, 43, 39, 44, 38, 1, 8, 2),
('dezembro', 112, 59, 53, 66, 46, 6, 8, 2);





INSERT INTO `ano2017` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
('janeiro', 99, 59, 40, 64, 35, 2, 8, 2),
('fevereiro', 73, 29, 44, 45, 28, 6, 8, 2),
('marco', 120, 66, 54, 63, 57, 1, 8, 2),
('abril', 121, 56, 65, 67, 54, 0, 8, 2),
('maio', 122, 63, 59, 80, 41, 2, 8, 2),
('junho', 95, 46, 49, 53, 41, 0, 8, 2),
('julho', 104, 49, 55, 60, 44, 2, 8, 2),
('agosto', 121, 63, 58, 70, 51, 5, 8, 2),
('setembro', 121, 55, 66, 67, 54, 5, 8, 2),
('outubro', 105, 48, 57, 62, 43, 4, 8, 2),
('novembro', 120, 62, 58, 75, 45, 2, 8, 2),
('dezembro', 106, 48, 58, 59, 47, 2, 8, 2);





INSERT INTO `ano2018` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 149, 67, 82, 97, 52, 2, 8, 2),
    ('fevereiro', 104, 45, 59, 66, 38, 2, 8, 2),
    ('marco', 116, 66, 50, 64, 52, 2, 8, 2),
    ('abril', 122, 69, 53, 58, 64, 2, 8, 2),
    ('maio', 120, 61, 59, 67, 53, 2, 8, 2),
    ('junho', 113, 54, 59, 65, 48, 2, 8, 2),
    ('julho', 128, 62, 66, 68, 59, 2, 8, 2),
    ('agosto', 119, 71, 48, 78, 41, 2, 8, 2),
    ('setembro', 129, 61, 68, 82, 47, 2, 8, 2),
    ('outubro', 123, 67, 56, 78, 45, 2, 8, 2),
    ('novembro', 106, 51, 55, 65, 41, 2, 8, 2),
    ('dezembro', 109, 60, 49, 73, 36, 2, 8, 2);




INSERT INTO `ano2019` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 122, 58, 64, 73, 49, 2, 8, 2),
    ('fevereiro', 94, 41, 53, 58, 36, 2, 8, 2),
    ('marco', 114, 64, 50, 71, 43, 2, 8, 2),
    ('abril', 143, 81, 62, 86, 56, 2, 8, 2),
    ('maio', 128, 68, 60, 67, 61, 2, 8, 2),
    ('junho', 104, 58, 46, 69, 35, 2, 8, 2),
    ('julho', 104, 48, 56, 65, 39, 2, 8, 2),
    ('agosto', 111, 58, 53, 70, 41, 2, 8, 2),
    ('setembro', 116, 51, 64, 74, 42, 2, 8, 2),
    ('outubro', 113, 51, 62, 72, 41, 2, 8, 2),
    ('novembro', 97, 53, 44, 62, 35, 2, 8, 2),
    ('dezembro', 129, 64, 65, 82, 47, 2, 8, 2);




INSERT INTO `ano2020` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 115, 54, 61, 69, 46, 2, 8, 2),
    ('fevereiro', 93, 49, 44, 62, 31, 2, 8, 2),
    ('marco', 97, 43, 54, 62, 35, 2, 8, 2),
    ('abril', 114, 54, 60, 78, 36, 2, 8, 2),
    ('maio', 114, 62, 52, 70, 44, 2, 8, 2),
    ('junho', 107, 60, 47, 61, 46, 2, 8, 2),
    ('julho', 123, 57, 66, 77, 46, 2, 8, 2),
    ('agosto', 103, 44, 59, 68, 35, 2, 8, 2),
    ('setembro', 88, 50, 38, 58, 30, 2, 8, 2),
    ('outubro', 98, 44, 54, 69, 29, 2, 8, 2),
    ('novembro', 91, 45, 46, 62, 29, 2, 8, 2),
    ('dezembro', 124, 60, 64, 86, 38, 2, 8, 2);



INSERT INTO `ano2021` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 94, 38, 56, 57, 37, 2, 8, 2),
    ('fevereiro', 98, 48, 50, 71, 27, 2, 8, 2),
    ('marco', 116, 56, 60, 78, 38, 2, 8, 2),
    ('abril', 113, 55, 58, 77, 36, 2, 8, 2),
    ('maio', 110, 53, 57, 84, 26, 2, 8, 2),
    ('junho', 105, 53, 52, 81, 24, 2, 8, 2),
    ('julho', 104, 49, 55, 75, 29, 2, 8, 2),
    ('agosto', 87, 45, 42, 63, 24, 2, 8, 2),
    ('setembro', 108, 48, 59, 73, 35, 2, 8, 2),
    ('outubro', 91, 44, 47, 63, 28, 2, 8, 2),
    ('novembro', 92, 51, 41, 62, 30, 2, 8, 2),
    ('dezembro', 116, 63, 53, 82, 34, 2, 8, 2);




INSERT INTO `ano2022` (`mes`, `nascidosVivos`, `masculinos`, `femininos`, `cesario`, `vaginal`, `gemeos`, `rn_baixopeso`, `rn_pesoadequado`)
VALUES 
    ('janeiro', 98, 42, 56, 63, 35, 2, 8, 2),
    ('fevereiro', 110, 53, 57, 68, 42, 2, 8, 2),
    ('marco', 111, 57, 54, 80, 31, 2, 8, 2),
    ('abril', 94, 54, 40, 64, 30, 2, 8, 2),
    ('maio', 94, 48, 46, 51, 43, 2, 8, 2),
    ('junho', 110, 61, 49, 78, 32, 2, 8, 2),
    ('julho', 92, 44, 48, 65, 27, 2, 8, 2),
    ('agosto', 110, 59, 51, 82, 28, 2, 8, 2),
    ('setembro', 91, 39, 52, 57, 34, 2, 8, 2),
    ('outubro', 95, 58, 37, 69, 26, 2, 8, 2),
    ('novembro', 103, 48, 55, 72, 31, 2, 8, 2),
    ('dezembro', 104, 52, 52, 75, 29, 2, 8, 2);

