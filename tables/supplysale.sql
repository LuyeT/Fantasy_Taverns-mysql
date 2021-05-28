CREATE TABLE IF NOT EXISTS `SupplySale` (
  transactionID INT NOT NULL,
  supplyID INT NOT NULL,
  quantity INT NOT NULL,
  pricePerUnit DECIMAL(10,2),
  CONSTRAINT `fk_supplysale_transactionID`
    FOREIGN KEY (transactionID) REFERENCES SupplyTransactions (TransactionID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_supplysale_supplyID`
    FOREIGN KEY (supplyID) REFERENCES SupplyCatalogue (SupplyID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);
