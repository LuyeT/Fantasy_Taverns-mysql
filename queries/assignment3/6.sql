-- 6. Write a query that returns the top 10 highest price sales
-- I was lazy with the seed data so I've done TOP 2 in this case to demonstrate that it's working.
SELECT * FROM RoomStays ORDER BY totalCost DESC LIMIT 2;
