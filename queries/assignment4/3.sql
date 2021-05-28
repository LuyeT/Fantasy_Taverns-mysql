USE Taverns;
SELECT guestName,className,level FROM GuestClass gc
JOIN Guests ON (gc.guestID = Guests.GuestID)
JOIN Class c ON (gc.classID = c.ClassID)
ORDER BY Guests.guestName ASC;
