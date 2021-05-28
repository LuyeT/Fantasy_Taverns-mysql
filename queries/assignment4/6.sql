-- 6. Write a query that returns guests with 2 or more classes with levels higher than 5

SELECT DISTINCT
	gc.guestID,
	sq.c
FROM
	(SELECT
		guestID,
		COUNT(*) c
	FROM GuestClass
	WHERE level > 5
	GROUP BY guestID) as sq
INNER JOIN GuestClass as gc on gc.guestID = sq.guestID
WHERE sq.c >1;

SELECT * FROM GuestClass gc WHERE `level` >5;
