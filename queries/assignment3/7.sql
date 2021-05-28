-- 7. Write a query to return all the values stored in all Lookup Tables - Lookup tables are the tables we reference typically with just an ID and a name. This should be a dynamic combining of all of the tables
SELECT * FROM Roles
JOIN ServiceCatalogue ON ServiceCatalogue.ServiceID = Roles.RoleID
JOIN StatusCatalogue sc ON sc.StatusID = Roles.RoleID