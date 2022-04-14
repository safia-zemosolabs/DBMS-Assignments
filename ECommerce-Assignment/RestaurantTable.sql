CREATE TABLE IF NOT EXISTS `FoodDelivery`.`Restaurant` (
  `idRestaurant` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Restaurant_name` VARCHAR(45) NOT NULL,
  `Restaurant_addrID` INT NULL,
  PRIMARY KEY (`idRestaurant`),
  UNIQUE INDEX `idRestaurant_UNIQUE` (`idRestaurant` ASC))
ENGINE = InnoDB;
