CREATE TABLE IF NOT EXISTS `IRCTC`.`ReservedTicket` (
  `ReservedTicket_ticketid` INT UNSIGNED NOT NULL,
  `ReservedTicket_trainid` INT UNSIGNED NOT NULL,
  `ReservedTicket_seatNcoach` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ReservedTicket_ticketid`, `ReservedTicket_trainid`),
  UNIQUE INDEX `ReservedTicket_ticketid_UNIQUE` (`ReservedTicket_ticketid` ASC),
  INDEX `fk_ReservedTicket_1_idx` (`ReservedTicket_trainid` ASC),
  CONSTRAINT `fk_ReservedTicket_1`
    FOREIGN KEY (`ReservedTicket_trainid`)
    REFERENCES `IRCTC`.`Train` (`idTrain`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ReservedTicket_2`
    FOREIGN KEY (`ReservedTicket_ticketid`)
    REFERENCES `IRCTC`.`Ticket` (`idTicket`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
