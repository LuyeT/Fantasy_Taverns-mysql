CREATE TABLE IF NOT EXISTS `Services` (
  tavernID INT,
  serviceID INT,
  statusID INT,

  CONSTRAINT `fk_services_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (`TavernID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT `fk_services_service`
    FOREIGN KEY (serviceID) REFERENCES ServiceCatalogue (`ServiceID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  CONSTRAINT `fk_services_status`
    FOREIGN KEY (statusID) REFERENCES ServiceStatus (`StatusID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Services (tavernID,serviceID,statusID) VALUES
(1,3,1),
(3,2,2),
(5,4,1),
(2,5,2),
(4,3,1),
(2,4,2),
(3,5,1),
(4,2,2),
(1,3,1),
(1,1,2);
