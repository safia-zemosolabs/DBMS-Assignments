CREATE TABLE IF NOT EXISTS `FoodDelivery`.`Items` (
  `idItems` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Item_name` VARCHAR(45) NOT NULL,
  `Item_price` FLOAT NOT NULL,
  `Item_description` VARCHAR(45) NULL,
  PRIMARY KEY (`idItems`),
  UNIQUE INDEX `idItems_UNIQUE` (`idItems` ASC))
ENGINE = InnoDB;