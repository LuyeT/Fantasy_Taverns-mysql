CREATE TABLE IF NOT EXISTS `ServiceStatus` (
  StatusID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  statusName VARCHAR(256),
  statusDescription VARCHAR(512)
);

INSERT INTO ServiceStatus (statusName) VALUES
('INACTIVE'),
('ACTIVE');
