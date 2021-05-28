SELECT Users.name as owner, Taverns.location , Taverns.numberOfFloors ,Roles.roleName FROM UserRoles
JOIN Users ON Users.UserID=UserRoles.userID
JOIN Taverns ON Taverns.owner=UserRoles.userID
JOIN Roles ON Roles.RoleID=UserRoles.userRoleID
WHERE UserRoles.userRoleID = 1;
