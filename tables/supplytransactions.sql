CREATE TABLE IF NOT EXISTS `SupplyTransactions` (
  TransactionID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  guestID INT NOT NULL,
  tavernID INT NOT NULL,
  totalCost DECIMAL(10,2),
  CONSTRAINT `fk_supply-transactions_guest`
    FOREIGN KEY (guestID) REFERENCES Guests (GuestID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_supply-transactions_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (TavernID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);
