CREATE TABLE IF NOT EXISTS `FoodDelivery`.`Customer` (
  `idCustomer` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Customer_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomer`),
  UNIQUE INDEX `idCustomer_UNIQUE` (`idCustomer` ASC))
ENGINE = InnoDB;