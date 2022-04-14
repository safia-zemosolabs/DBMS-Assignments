CREATE TABLE IF NOT EXISTS `IRCTC`.`UnreservedTicket` (
  `UnreservedTicket_ticketid` INT UNSIGNED NOT NULL,
  `UnreservedTicket_traintype` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`UnreservedTicket_ticketid`),
  UNIQUE INDEX `UnreservedTicket_ticketid_UNIQUE` (`UnreservedTicket_ticketid` ASC),
  CONSTRAINT `fk_UnreservedTicket_1`
    FOREIGN KEY (`UnreservedTicket_ticketid`)
    REFERENCES `IRCTC`.`Ticket` (`idTicket`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;