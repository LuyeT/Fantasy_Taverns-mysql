CREATE TABLE IF NOT EXISTS `StatusCatalogue` (
  StatusID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32),
  description VARCHAR(512)
);

INSERT INTO `StatusCatalogue` VALUES
(1,'Hungry','Character needs to eat or he/she will become irritable.'),
(2,'Very Hungry','Character needs to eat or he/she will die.'),
(3,'Sick','Character has reduced stamina until cured.'),
(4,'Poisoned','Character will suffer HP loss until cured or dead.'),
(5,'Dead','Character will remain dead until ressurected.');
