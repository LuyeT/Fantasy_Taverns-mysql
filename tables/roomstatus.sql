CREATE TABLE IF NOT EXISTS `RoomStatus` (
  StatusID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20),
  description VARCHAR(512)
);

INSERT INTO `RoomStatus` (name,description) VALUES
(1,'Available'),
(2,'Occupied'),
(3,'Trashed'),
(4,'Under repair');
