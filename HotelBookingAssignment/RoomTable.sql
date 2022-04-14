
CREATE TABLE `Room`
(
 `RoomID`       int NOT NULL ,
 `Floor_No`     int NOT NULL ,
 `Room_Type_ID` int NOT NULL ,
 `HotelID`      int NOT NULL ,
 `Price`        decimal(10,2) NOT NULL ,

PRIMARY KEY (`RoomID`),
KEY `FK_305` (`HotelID`),
CONSTRAINT `FK_303` FOREIGN KEY `FK_305` (`HotelID`) REFERENCES `Hotel` (`HotelID`),
KEY `FK_311` (`Room_Type_ID`),
CONSTRAINT `FK_309` FOREIGN KEY `FK_311` (`Room_Type_ID`) REFERENCES `RoomType` (`Room_Type_ID`)
);