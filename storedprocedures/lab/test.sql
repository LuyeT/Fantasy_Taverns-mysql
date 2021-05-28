-- --defaults-group-suffix=Fantasy_Taverns
-- -t
-- 

-- contains test calls to stored procedures

CALL sellSupplies(1,1,2,40,TRUE);
CALL sellSupplies(1,1,3,30,FALSE);
CALL sellSupplies(1,1,1,20,FALSE);
CALL sellSupplies(1,1,3,10,FALSE);

CALL sellSupplies(5,3,1,75,TRUE);
CALL sellSupplies(6,4,5,10,TRUE);
CALL sellSupplies(7,4,5,10,TRUE);
SELECT * FROM Inventories i;
SELECT * FROM SupplySale;
SELECT * FROM SupplyTransactions;
SELECT * FROM Orders;
SELECT * FROM Deliveries d ;
SELECT DISTINCT * FROM SupplyTransactions,SupplySale;

SELECT * FROM Guests g ;
SELECT * FROM SupplySale
    WHERE
    transactionID=(SELECT MAX(transactionID) FROM SupplySale as t);

SELECT SUM(pricePerUnit*quantity) FROM SupplySale
    WHERE
    transactionID=(SELECT MAX(transactionID) FROM SupplySale as t);
