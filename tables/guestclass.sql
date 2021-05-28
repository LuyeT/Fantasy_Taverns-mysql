CREATE TABLE IF NOT EXISTS `GuestClass` (
  guestID INT,
  classID INT,
  PRIMARY KEY (guestID,classID),
  level INT,
  CONSTRAINT `fk_guest-class_guest`
    FOREIGN KEY (guestID) REFERENCES Guests (GuestID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_guest-class_class`
    FOREIGN KEY (classID) REFERENCES Class (ClassID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);


INSERT INTO `GuestClass` VALUES
(1,1,7),
(1,4,7),
(2,5,51),
(2,3,13),
(3,2,2),
(4,1,9),
(4,6,2),
(5,5,31);
