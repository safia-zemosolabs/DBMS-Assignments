CREATE TABLE `Room_Reserved`
(
 `ID`          numeric NOT NULL ,
 `RoomID`      int NOT NULL ,
 `Reserved_ID` int NOT NULL ,
 `Price`       decimal(10,2) NOT NULL ,

PRIMARY KEY (`ID`),
KEY `FK_320` (`Reserved_ID`),
CONSTRAINT `FK_318` FOREIGN KEY `FK_320` (`Reserved_ID`) REFERENCES `Reserved` (`Reserved_ID`),
KEY `FK_532` (`RoomID`),
CONSTRAINT `FK_530` FOREIGN KEY `FK_532` (`RoomID`) REFERENCES `Room` (`RoomID`)
);