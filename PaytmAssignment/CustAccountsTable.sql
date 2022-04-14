CREATE TABLE `CustAccounts`
(
 `Id`            integer(10) NOT NULL ,
 `CustID`        integer(10) NOT NULL ,
 `AccountNumber` integer(10) NOT NULL ,
 `BranchID`      integer(10) NOT NULL ,

PRIMARY KEY (`Id`),
KEY `FK_745` (`CustID`),
CONSTRAINT `FK_743` FOREIGN KEY `FK_745` (`CustID`) REFERENCES `Customers` (`ID`),
KEY `FK_755` (`AccountNumber`),
CONSTRAINT `FK_753` FOREIGN KEY `FK_755` (`AccountNumber`) REFERENCES `Accounts` (`AccountNumber`)
);