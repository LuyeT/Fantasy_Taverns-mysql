-- DROP DATABASE IF EXISTS `Fantasy_Taverns$passwdHash`;
CREATE DATABASE IF NOT EXISTS Fantasy_Taverns;
USE Fantasy_Taverns;
/*
2 DEP
  1 DEP
    0 DEP
    0 DEP
  1 DEP
2 DEP
*/
-- 3 DEP
DROP TABLE IF EXISTS `RoomStays`;
  -- 2 DEP
  DROP TABLE IF EXISTS `ServiceSales`;
  DROP TABLE IF EXISTS `Services`;
  DROP TABLE IF EXISTS `UserRoles`;
  DROP TABLE IF EXISTS `Deliveries`;
  DROP TABLE IF EXISTS `Inventories`;
  DROP TABLE IF EXISTS `GuestStatus`;
  DROP TABLE IF EXISTS `GuestClass`;
  DROP TABLE IF EXISTS `SupplySale`;
  DROP TABLE IF EXISTS `SupplyTransactions`;
  DROP TABLE IF EXISTS `Rooms`;
    -- 1 DEP
    DROP TABLE IF EXISTS `Orders`;
    DROP TABLE IF EXISTS `Guests`;
    DROP TABLE IF EXISTS `Taverns`;
      -- 0 DEP
      DROP TABLE IF EXISTS `StatusCatalogue`;
      DROP TABLE IF EXISTS `Class`;
      DROP TABLE IF EXISTS `Users`;
      DROP TABLE IF EXISTS `Roles`;
      DROP TABLE IF EXISTS `ServiceCatalogue`;
      DROP TABLE IF EXISTS `ServiceStatus`;
      DROP TABLE IF EXISTS `SupplyCatalogue`;
      DROP TABLE IF EXISTS `RoomStatus`;

      -- 0 DEP
      source ./tables/roomstatus.sql;
      source ./tables/statuscatalogue.sql;
      source ./tables/class.sql;
      source ./tables/supplycatalogue.sql;
      source ./tables/servicestatus.sql;
      source ./tables/servicecatalogue.sql;
      source ./tables/roles.sql;
      source ./tables/users.sql;
    -- 1 DEP
    source ./tables/taverns.sql;
    source ./tables/guests.sql;
    source ./tables/orders.sql;
  -- 2 DEP
  source ./tables/rooms.sql;
  source ./tables/supplytransactions.sql
  source ./tables/supplysale.sql;
  source ./tables/inventories.sql;
  source ./tables/deliveries.sql;
  source ./tables/userroles.sql;
  source ./tables/services.sql;
  source ./tables/servicesales.sql;
  source ./tables/gueststatus.sql;
  source ./tables/guestclass.sql;
-- 3 DEP
source ./tables/roomstays.sql;

-- Procedures
source ./storedprocedures/lab/1.sql;
source ./storedprocedures/lab/2.sql;
source ./storedprocedures/lab/3.sql;
/*
NEEDS SEED
----------------
supplytransactions
supplysale
*/
