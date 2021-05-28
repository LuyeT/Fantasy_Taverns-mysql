-- 4. Write a function that takes a level and returns a “grouping” from question 3 (e.g. 1-5, 5-10, 10+, etc)

DELIMITER //
CREATE OR REPLACE FUNCTION getLevelLabel ( levelParam INT )
RETURNS VARCHAR(15) DETERMINISTIC
BEGIN
  RETURN CASE
    WHEN levelParam <= 10 THEN
      'beginner'
    WHEN levelParam > 10 AND levelParam <= 20 THEN
      'intermediate'
    WHEN levelParam > 20 AND levelParam <= 40 THEN
      'journeyman'
    ELSE
      'expert'
  END;
END; //

DELIMITER ;

SELECT CalcValue(20);
