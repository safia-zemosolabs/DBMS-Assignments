CREATE TABLE IF NOT EXISTS `FoodDelivery`.`RestaurantItems` (
  `restaurantID` INT UNSIGNED NOT NULL,
  `itemID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`restaurantID`, `itemID`),
  INDEX `fk_RestaurantItems_1_idx` (`itemID` ASC),
  CONSTRAINT `fk_RestaurantItems_1`
    FOREIGN KEY (`itemID`)
    REFERENCES `FoodDelivery`.`Items` (`idItems`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_RestaurantItems_2`
    FOREIGN KEY (`restaurantID`)
    REFERENCES `FoodDelivery`.`Restaurant` (`idRestaurant`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
