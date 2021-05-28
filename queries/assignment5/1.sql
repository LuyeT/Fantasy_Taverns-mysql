-- 1. Write a query to return a “report” of all users and their roles
SELECT ur.UserID,name,dateOfBirth,roleName FROM UserRoles ur
JOIN Users ON ur.userID = Users.UserID
JOIN Roles ON ur.roleID = Roles.RoleID
