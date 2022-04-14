CREATE TABLE `Movies`
(
 `ID`         integer(10) NOT NULL ,
 `Name`       varchar(255) NOT NULL ,
 `Actor_Id`   integer(10) NOT NULL ,
 `Title`      varchar(255) NOT NULL ,
 `Year`       date NOT NULL ,
 `Producer`   varchar(255) NOT NULL ,
 `Movie_Type` varchar(255) NOT NULL ,
 `Country`    varchar(255) NOT NULL ,
 `Rating`     decimal(4,2) NOT NULL ,

PRIMARY KEY (`ID`),
KEY `FK_575` (`Actor_Id`),
CONSTRAINT `FK_573` FOREIGN KEY `FK_575` (`Actor_Id`) REFERENCES `Actors` (`Id`)
);