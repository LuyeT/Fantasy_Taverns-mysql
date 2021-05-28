CREATE TABLE IF NOT EXISTS `UserRoles` (
  roleID INT,
  userID INT,
  CONSTRAINT `fk_userrole_role`
    FOREIGN KEY (roleID) REFERENCES `Roles` (RoleID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_userrole_User`
    FOREIGN KEY (userID) REFERENCES `Users` (UserID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO `UserRoles` (roleID,userID) VALUES
(2,1),
(1,1),
(3,1),
(4,1),
(2,3),
(4,5),
(3,4),
(2,5),
(1,4);
