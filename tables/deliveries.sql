CREATE TABLE IF NOT EXISTS `Deliveries` (
  orderID INT,
  supplyID INT,
  quantity INT,
  CONSTRAINT `fk_deliveries_orders`
    FOREIGN KEY (orderID) REFERENCES Orders (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_deliveries_supply`
    FOREIGN KEY (supplyID) REFERENCES SupplyCatalogue (`SupplyID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

INSERT INTO Deliveries (orderID,supplyID,quantity) VALUES
(1,3,5),
(1,2,10),
(1,1,50),
(3,4,5),
(2,5,8),
(3,5,100),
(3,2,50),
(5,2,30),
(4,2,50);
