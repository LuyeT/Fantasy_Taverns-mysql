CREATE TABLE IF NOT EXISTS `GuestStatus` (
  guestID INT,
  statusID INT,
  PRIMARY KEY (guestID,statusID),
  afflicted BINARY,
  CONSTRAINT `fk_gueststatus_guest`
    FOREIGN KEY (guestID) REFERENCES Guests (GuestID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
--  CONSTRAINT `fk_gueststatus_status`
--    FOREIGN KEY (statusID) REFERENCES StatusCatalogue (StatusID)
--    ON DELETE RESTRICT
--    ON UPDATE RESTRICT
);

ALTER TABLE IF EXISTS `GuestStatus`
ADD CONSTRAINT `fk_gueststatus_status`
  FOREIGN KEY (statusID) REFERENCES StatusCatalogue (StatusID)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT
;

INSERT INTO `GuestStatus` (guestID,statusID,afflicted) VALUES
(1,2,1),
(1,5,1),
(2,1,1),
(3,3,1),
(4,4,1),
(5,1,1);
