CREATE TABLE `Hotel`
(
 `HotelID`      int NOT NULL ,
 `HotelName`    varchar(45) NOT NULL ,
 `TotalRooms`   numeric NOT NULL ,
 `Desciription` varchar(45) NOT NULL ,
 `City`         varchar(45) NOT NULL ,

PRIMARY KEY (`HotelID`)
);