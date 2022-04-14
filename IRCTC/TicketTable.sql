CREATE TABLE IF NOT EXISTS `IRCTC`.`Ticket` (
  `idTicket` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Ticket_customerid` INT UNSIGNED NOT NULL,
  `Ticket_price` FLOAT NOT NULL,
  `Ticket_doi` DATE NOT NULL,
  PRIMARY KEY (`idTicket`, `Ticket_customerid`),
  UNIQUE INDEX `idTicket_UNIQUE` (`idTicket` ASC),
  UNIQUE INDEX `Ticket_customerid_UNIQUE` (`Ticket_customerid` ASC),
  CONSTRAINT `fk_Ticket_1`
    FOREIGN KEY (`Ticket_customerid`)
    REFERENCES `IRCTC`.`Customer` (`idCustomer`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;