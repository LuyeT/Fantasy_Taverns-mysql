-- 2. Write a query to return all classes and the count of guests that hold those classes
SELECT DISTINCT gc.classID,c.className,sq.countClass FROM GuestClass gc
JOIN(
  SELECT classID,COUNT(classID) as countClass
  FROM GuestClass
  GROUP BY classID
) sq ON gc.classID = sq.classID
JOIN Class c ON c.ClassID = gc.classID
ORDER BY sq.classID;
