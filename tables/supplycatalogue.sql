CREATE TABLE IF NOT EXISTS `SupplyCatalogue` (
  SupplyID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(256),
  amount FLOAT,
  unit VARCHAR(32)
);

INSERT INTO SupplyCatalogue (name,amount,unit) VALUES
('Carlsberg',0.5,'liters'),
('Carlsberg',5.0,'liters'),
('Filet Mignon',0.200,'kilograms'),
('Burgers',10.0,'150g'),
('Fries',5.0,'kg'),
('Wine',50.0,'liters');
