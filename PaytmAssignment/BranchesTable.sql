CREATE TABLE `Branches`
(
 `ID`               integer(10) NOT NULL ,
 `Name`             varchar(255) NOT NULL ,
 `NumberOfAccounts` integer(10) NOT NULL ,
 `BranchCode`       integer(20) NOT NULL ,
 `Address`          varchar(300) NOT NULL ,

PRIMARY KEY (`ID`)
);