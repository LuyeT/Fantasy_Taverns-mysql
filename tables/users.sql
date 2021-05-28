CREATE TABLE IF NOT EXISTS `Users` (
  `UserID` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256),
  `dateOfBirth` VARCHAR(8)
);

INSERT INTO Users (name,password,dateOfBirth) VALUES
('Mark','password','25101988'),
('Phil','password','19011921'),
('Harry','password','01122001'),
('Lisa','password','08151970'),
('Mark','password','25101988');
