CREATE TABLE IF NOT EXISTS `ServiceCatalogue` (
  ServiceID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  serviceName VARCHAR(256),
  serviceDescription VARCHAR(512),
  cost FLOAT
);

INSERT INTO ServiceCatalogue (serviceName,cost) VALUES
('Single room',50.1),
('Double room',75),
('Weapon sharpening',12.5),
('Horse massage',30.0),
('Ratcare',15.25);
