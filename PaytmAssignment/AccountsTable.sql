CREATE TABLE `Accounts`
(
 `AccountNumber` integer(10) NOT NULL ,
 `AccountType`   integer(10) NOT NULL ,
 `Branch_ID`     integer(10) NOT NULL ,
 `Balance`       integer NOT NULL ,

PRIMARY KEY (`AccountNumber`),
KEY `FK_601` (`Branch_ID`),
CONSTRAINT `FK_599` FOREIGN KEY `FK_601` (`Branch_ID`) REFERENCES `Branches` (`ID`)
);