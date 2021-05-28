-- Create a Stored Procedure that Adds A Supply Sale and deducts from the Tavern Inventory appropriately);
-- Creates a transaction row if TRUE arg is passed

DELIMITER //

CREATE OR REPLACE PROCEDURE sellSupplies (
givenGuest INT,
givenTavern INT,
givenSupply INT,
q INT,
newTransaction BOOLEAN)
BEGIN
  IF(newTransaction=TRUE) THEN
    INSERT INTO SupplyTransactions(guestID,tavernID)
    (SELECT givenGuest,givenTavern);
  END IF;

  SET @t = (SELECT TransactionID FROM SupplyTransactions ORDER BY TransactionID DESC LIMIT 1);
  SET @price = (SELECT pricePerUnit FROM Inventories WHERE (
    tavernID = givenTavern
    AND
    supplyID = givenSupply));
  INSERT INTO SupplySale(transactionID,supplyID,quantity,pricePerUnit)
  (SELECT @t, givenSupply, q, @price);
END;

//

DELIMITER ;
