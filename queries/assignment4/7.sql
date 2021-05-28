-- 7. Write a query that returns guests with ONLY their highest level class

-- GENERALISED SOLUTION
SELECT DISTINCT gc.guestID,guestName,gc.classID,className,sq.maxlvl
FROM GuestClass as gc
JOIN
(
  SELECT guestID,MAX(level) as maxlvl
  FROM GuestClass
  GROUP BY guestID
) sq
ON gc.guestID =sq.guestID AND gc.level =sq.maxlvl
JOIN Class c ON gc.classID =c.ClassID 
JOIN Guests g ON gc.guestID=g.GuestID ;

-- PRINTOUT TABLE
SELECT guestID,gc.classID,className,level FROM GuestClass gc
JOIN Class c ON c.ClassID =gc.classID 
ORDER BY guestID;