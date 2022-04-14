
CREATE TABLE `Reserved`
(
 `Reserved_ID`      int NOT NULL ,
 `CustID`           numeric NOT NULL ,
 `Arrival`          timestamp NOT NULL ,
 `Departure`        timestamp NOT NULL ,
 `Discount_Percent` decimal(5,2) NOT NULL ,
 `Final_Price`      numeric NOT NULL ,

PRIMARY KEY (`Reserved_ID`),
KEY `FK_206` (`CustID`),
CONSTRAINT `FK_204` FOREIGN KEY `FK_206` (`CustID`) REFERENCES `Customer` (`CustID`)
);
