CREATE TABLE IF NOT EXISTS `Taverns` (
  TavernID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  owner INT,
  location varchar(256),
  numberOfFloors INT,
  CONSTRAINT `fk_UserID`
    FOREIGN KEY (owner) REFERENCES Users (`UserID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
);

INSERT INTO Taverns (owner, location,numberOfFloors) VALUES 
(1, 'Arizona',2),
(1, 'Wisconsin',3),
(3, 'Washington',1),
(4, 'Texas',4),
(5, 'Ohio',5);
