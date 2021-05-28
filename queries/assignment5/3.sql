-- 3. Write a query that returns all guests ordered by name (ascending) and their classes and corresponding level. Add a column that labels them beginner (lvl 1-5), intermediate (5-10) and expert (10+) for their classes (Don’t alter the table for this)
SELECT gc.guestID,g.guestName,c.className,gc.level,CASE
  WHEN gc.level <= 10 THEN
    'beginner'
  WHEN gc.level > 10 AND gc.level <= 20 THEN
    'intermediate'
  WHEN gc.level > 20 AND gc.level <= 40 THEN
    'journeyman'
  ELSE
    'expert'
END as label
FROM GuestClass gc
JOIN Guests g ON g.GuestID = gc.guestID
JOIN Class c ON c.ClassID = gc.classID
ORDER BY g.guestName ASC
