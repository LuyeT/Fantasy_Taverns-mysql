-- 5. Write a query that returns guests with 2 or more classes
-- SELECT guestID,COUNT(*) FROM GuestClass GROUP BY guestID

SELECT 
	gc.guestID,
	sq.c
FROM
	(SELECT 
		guestID,
		COUNT(*) c
	FROM GuestClass
	GROUP BY guestID) as sq
INNER JOIN GuestClass
as gc on gc.guestID = sq.guestID
WHERE sq.c >1;