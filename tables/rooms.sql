CREATE TABLE IF NOT EXISTS `Rooms` (
  RoomID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tavernID INT NOT NULL,
  roomStatusID INT NOT NULL,
  dailyRate DECIMAL(5,2),
  CONSTRAINT `fk_room_tavern`
    FOREIGN KEY (tavernID) REFERENCES Taverns (TavernID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_room_roomstatus`
    FOREIGN KEY (roomStatusID) REFERENCES RoomStatus (StatusID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

INSERT INTO `Rooms` (tavernID,roomStatusID,dailyRate) VALUES
(1,1,100.00),
(1,1,50.00),
(1,1,80.00),
(2,1,40.00),
(2,1,80.00),
(2,2,160.00),
(2,3,240.00),
(3,1,80.00),
(3,1,120.00);
