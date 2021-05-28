CREATE TABLE IF NOT EXISTS `RoomStays` (
  roomID INT NOT NULL,
  guestID INT,
  saleID INT NOT NULL,
  totalCost DECIMAL(10,2),
  occupancyStart DATE,
  occupancyEnd DATE,
  CONSTRAINT `fk_roomstay_sale`
    FOREIGN KEY (saleID) REFERENCES ServiceSales (SaleID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_roomstay_room`
    FOREIGN KEY (roomID) REFERENCES Rooms (RoomID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_roomstay_guest`
    FOREIGN KEY (guestID) REFERENCES Guests (GuestID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

INSERT INTO `RoomStays` (roomID,guestID,saleID,totalCost,occupancyStart,occupancyEnd) VALUES
(1,1,1,100.00,'2021-01-20','2021-01-22'),
(2,3,2,150.00,'2021-05-20','2021-06-01'),
(3,5,4,50.00,'2001-05-20','2001-06-21');
