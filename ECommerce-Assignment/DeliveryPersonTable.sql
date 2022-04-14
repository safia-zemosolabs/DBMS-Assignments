CREATE TABLE IF NOT EXISTS `FoodDelivery`.`DeliveryPerson` (
  `idDeliveryPerson` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `DeliveryPerson_name` VARCHAR(45) NULL,
  `DeliveryPerson_mobileno` VARCHAR(10) NULL,
  PRIMARY KEY (`idDeliveryPerson`),
  UNIQUE INDEX `idDeliveryPerson_UNIQUE` (`idDeliveryPerson` ASC))
ENGINE = InnoDB;