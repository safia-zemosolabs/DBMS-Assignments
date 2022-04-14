CREATE TABLE `Actors`
(
 `Id`         integer(10) NOT NULL ,
 `First Name` varchar(255) NOT NULL ,
 `LastName`   varchar(255) NULL ,
 `Rating`     decimal(4,2) NOT NULL ,
 `Gender`     enum("male","female") NOT NULL ,
 `Country`    varchar(255) NOT NULL ,

PRIMARY KEY (`Id`)
);