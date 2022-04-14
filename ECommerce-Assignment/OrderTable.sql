CREATE TABLE IF NOT EXISTS `FoodDelivery`.`Order` (
  `idOrder` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customerID` INT UNSIGNED NOT NULL,
  `Order_deliveryboy` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idOrder`, `customerID`, `Order_deliveryboy`),
  UNIQUE INDEX `idOrder_UNIQUE` (`idOrder` ASC),
  INDEX `fk_Order_2_idx` (`Order_deliveryboy` ASC),
  INDEX `fk_Order_1_idx` (`customerID` ASC),
  CONSTRAINT `fk_Order_2`
    FOREIGN KEY (`Order_deliveryboy`)
    REFERENCES `FoodDelivery`.`DeliveryPerson` (`idDeliveryPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `FoodDelivery`.`CustomerRestaurant` (`customerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;