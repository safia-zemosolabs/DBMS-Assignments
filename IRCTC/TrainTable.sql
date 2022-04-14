CREATE TABLE IF NOT EXISTS `IRCTC`.`Train` (
  `idTrain` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Train_name` VARCHAR(45) NOT NULL,
  `Train_start` VARCHAR(45) NOT NULL,
  `Train_destination` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTrain`),
  UNIQUE INDEX `idTrain_UNIQUE` (`idTrain` ASC))
ENGINE = InnoDB;