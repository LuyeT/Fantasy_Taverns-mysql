CREATE TABLE IF NOT EXISTS `Roles` (
  RoleID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  roleName VARCHAR(32),
  roleDescription VARCHAR(512)
);

INSERT INTO Roles (roleName) VALUES
('Admin'),
('Bartender'),
('Chef'),
('Maid'),
('Receptionist'),
('Horse massager');
