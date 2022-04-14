CREATE TABLE `TV Series`
(
 `Id`          integer(10) NOT NULL ,
 `Name`        varchar(255) NOT NULL ,
 `Actor_ID`    integer(10) NOT NULL ,
 `Title`       varchar(255) NOT NULL ,
 `year`        date NOT NULL ,
 `Rating`      decimal(4,2) NOT NULL ,
 `Producer`    varchar(255) NOT NULL ,
 `Series_Type` varchar(255) NOT NULL ,
 `Country`     varchar(255) NOT NULL ,

PRIMARY KEY (`Id`),
KEY `FK_578` (`Actor_ID`),
CONSTRAINT `FK_576` FOREIGN KEY `FK_578` (`Actor_ID`) REFERENCES `Actors` (`Id`)
);