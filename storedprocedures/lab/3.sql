-- --defaults-group-suffix=Fantasy_Taverns
-- -t
--
-- 3. Create a Trigger to “order” more supply in the form a Supply Received entry. Remember to update supplies.

DELIMITER //

CREATE OR REPLACE  TRIGGER restockInventory
  AFTER INSERT ON SupplySale FOR EACH ROW
BEGIN
  SET @tID=(SELECT tavernID FROM SupplyTransactions WHERE TransactionID=NEW.transactionID);
  SET @dQ = 100;

  UPDATE Inventories SET quantity = (
    SELECT quantity - NEW.quantity FROM Inventories WHERE supplyID=NEW.supplyID)
    WHERE (Inventories.tavernID=@tID AND supplyID=NEW.supplyID);

  IF(NEW.quantity > (SELECT quantity FROM Inventories
  WHERE tavernID=@tID AND supplyID = NEW.supplyID)) THEN
    INSERT INTO Orders (tavernID)
      VALUES (@tID);
      SET @oID = (SELECT OrderID FROM Orders ORDER BY OrderID DESC LIMIT 1);

    INSERT Deliveries (orderID, supplyID,quantity) VALUES
      (@oID,NEW.supplyID,@dQ);

    UPDATE Inventories SET
      quantity = (SELECT quantity + @dQ FROM Inventories
        WHERE Inventories.tavernID=@tID AND supplyID=NEW.supplyID)
      WHERE (Inventories.tavernID=@tID AND supplyID=NEW.supplyID);
  END IF;

  UPDATE Inventories SET
  quantity = (SELECT quantity - NEW.quantity FROM Inventories WHERE supplyID=NEW.supplyID)
  WHERE (Inventories.tavernID=@tID AND supplyID=NEW.supplyID);

END;

//

DELIMITER ;
