CREATE TABLE IF NOT EXISTS `FoodDelivery`.`CustomerRestaurant` (
  `customerID` INT UNSIGNED NOT NULL,
  `restaurantID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`customerID`, `restaurantID`),
  INDEX `fk_CustomerRestaurant_2_idx` (`restaurantID` ASC),
  UNIQUE INDEX `customerID_UNIQUE` (`customerID` ASC),
  CONSTRAINT `fk_CustomerRestaurant_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `FoodDelivery`.`Customer` (`idCustomer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_CustomerRestaurant_2`
    FOREIGN KEY (`restaurantID`)
    REFERENCES `FoodDelivery`.`Restaurant` (`idRestaurant`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;