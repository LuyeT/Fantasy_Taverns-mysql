-- 8. Write a query that returns guests that stay within a date range. Please remember that guests 
-- can stay for more than one night AND not all of the dates they stay have to be in that range (just some of them)

SET @checkinQ = DATE('2021-01-19');
SET @checkoutQ = DATE('2021-05-21');
-- EXLICIT SOLUTION
SELECT *,@checkinQ,@checkoutQ FROM RoomStays
  WHERE (
  (occupancyStart < @checkinQ AND @checkinQ < occupancyEnd )
  OR
  (occupancyStart < @checkoutQ AND @checkoutQ < occupancyEnd )
  OR
  (@checkinQ < occupancyStart AND occupancyEnd < @checkoutQ)
)
;

-- IMPLICIT SOLUTION
SELECT * FROM RoomStays WHERE (
  (@checkinQ BETWEEN occupancyStart AND occupancyEnd)
  OR
  (@checkoutQ BETWEEN occupancyStart AND occupancyEnd)
  OR
  (@checkinQ < occupancyStart AND occupancyEnd < @checkoutQ)
);

-- Table PRINTOUT
SELECT * FROM RoomStays;
