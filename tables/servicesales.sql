CREATE TABLE IF NOT EXISTS `ServiceSales` (
  SaleID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tavernID INT,
  serviceID INT,
  guestname VARCHAR(256),
  totalCost DECIMAL(8,2),
  CONSTRAINT `fk_sales_service`
    FOREIGN KEY (serviceID) REFERENCES ServiceCatalogue (`ServiceID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_sales_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (`TavernID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

INSERT INTO ServiceSales (tavernID,serviceID,guestname) VALUES
(2,1,'Jacob'),
(1,1,'Alex'),
(1,3,'Martin'),
(3,2,'Yvonne'),
(5,4,'Elizabeth'),
(4,4,'Karl');

UPDATE ServiceSales
SET
totalCost= (
SELECT
  cost
FROM
  ServiceCatalogue
WHERE
  ServiceCatalogue.ServiceID = ServiceSales.serviceID);
