CREATE TABLE IF NOT EXISTS `FoodDelivery`.`OrderItem` (
  `idOrderItem` INT UNSIGNED NOT NULL,
  `orderID` INT UNSIGNED NOT NULL,
  `itemID` INT UNSIGNED NOT NULL,
  `item_quantity` INT UNSIGNED NOT NULL,
  `discount` FLOAT NOT NULL DEFAULT 0.0,
  `OrderItem_price` FLOAT NOT NULL,
  PRIMARY KEY (`idOrderItem`, `orderID`),
  UNIQUE INDEX `idOrderItem_UNIQUE` (`idOrderItem` ASC),
  INDEX `fk_OrderItem_1_idx` (`orderID` ASC),
  INDEX `fk_OrderItem_2_idx` (`itemID` ASC),
  CONSTRAINT `fk_OrderItem_1`
    FOREIGN KEY (`orderID`)
    REFERENCES `FoodDelivery`.`Order` (`idOrder`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_OrderItem_2`
    FOREIGN KEY (`itemID`)
    REFERENCES `FoodDelivery`.`Items` (`idItems`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;