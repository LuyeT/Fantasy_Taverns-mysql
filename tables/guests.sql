CREATE TABLE IF NOT EXISTS `Guests` (
  GuestID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tavernID INT,
  guestName VARCHAR(64),
  password VARCHAR(256),
  birthday DATE,
  CONSTRAINT `fk_guest_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (`TavernID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


INSERT INTO `Guests` (tavernID, password, guestName,birthday) VALUES
(1,'Phil','password','1988-10-25'),
(1,'Phil','password','1975-10-25'),
(1,'Amanda','password','2000-12-01'),
(2,'Chris','password','1994-05-11'),
(3,'Sean','password','1975-03-08'),
(4,'Marcus','password','2001-08-19'),
(5,'Maria','password','2010-07-05');
