CREATE TABLE IF NOT EXISTS `Class` (
  ClassID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  className VARCHAR(32)
);


INSERT INTO `Class` (className) VALUES
('Fighter'),
('Cleric'),
('Sorceress'),
('Wizard'),
('Druid'),
('Rogue');
