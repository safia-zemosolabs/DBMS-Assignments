CREATE TABLE IF NOT EXISTS `IRCTC`.`Customer` (
  `idCustomer` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Customer_name` VARCHAR(45) NOT NULL,
  `Customer_gender` ENUM('Male', 'Female', 'TransGender') NOT NULL,
  `Customer_age` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCustomer`, `Customer_age`),
  UNIQUE INDEX `idCustomer_UNIQUE` (`idCustomer` ASC))
ENGINE = InnoDB;