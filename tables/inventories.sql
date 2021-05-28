CREATE TABLE IF NOT EXISTS `Inventories` (
  tavernID INT,
  supplyID INT,
  lastUpdated VARCHAR(8),
  quantity INT,
  pricePerUnit DECIMAL(5,2),
  CONSTRAINT `fk_inventory_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (`TavernID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_inventory_supply`
    FOREIGN KEY (supplyID) REFERENCES SupplyCatalogue (`SupplyID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Inventories (tavernID,supplyID,lastUpdated,quantity,pricePerUnit) VALUES
(1,3,'12122020',5,10.00),
(1,2,'08012021',30,40.00),
(3,1,'20122020',40,20.00),
(4,5,'05012021',10,30.00),
(1,2,'08012021',60,5.00);
