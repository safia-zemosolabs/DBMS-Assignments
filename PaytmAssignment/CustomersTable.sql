CREATE TABLE `Customers`
(
 `ID`        integer(10) NOT NULL ,
 `FirstName` varchar(200) NOT NULL ,
 `LastName`  varchar(200) NULL ,
 `Mobile`    integer(10) NOT NULL ,
 `DOB`       date NOT NULL ,

PRIMARY KEY (`ID`)
);