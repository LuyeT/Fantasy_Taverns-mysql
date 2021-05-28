-- 8. Write a query that returns Guest Classes with Levels and Generate a new column with a label for their level grouping (lvl 1-10, 10-20, etc)
SELECT *, CASE
  WHEN level <10 THEN 'Beginner'
  WHEN level <20 THEN 'Intermediate'
  ELSE 'Expert'
END AS levelGroup
FROM GuestClass gc;
