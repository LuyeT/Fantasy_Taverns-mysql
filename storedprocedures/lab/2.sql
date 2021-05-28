-- 2. Recalculate transaction cost after update

DELIMITER //
CREATE OR REPLACE TRIGGER updateTransactionCost
  AFTER INSERT ON SupplySale FOR EACH ROW
BEGIN
  UPDATE SupplyTransactions SET
    totalCost = (SELECT SUM(pricePerUnit*quantity) FROM SupplySale
    WHERE
    transactionID=NEW.transactionID);
END;

//

DELIMITER ;
