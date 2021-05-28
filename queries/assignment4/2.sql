USE Taverns;
SELECT Users.name , Taverns.location , Taverns.numberOfFloors ,Roles.roleName FROM UserRoles
JOIN Taverns.Users ON Taverns.Users.UserID=UserRoles.userID
JOIN Taverns.Taverns ON Taverns.Taverns.owner=UserRoles.userID
JOIN Taverns.Roles ON Taverns.Roles.RoleID=UserRoles.userRoleID
WHERE UserRoles.userRoleID = 1;
