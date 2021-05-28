/* I struggled with this assignment as I was half-asleep during the class, and was counting on recaping with the recording.
Unfortunately I was unable to find the video. I've done what I could figure out, but it was hard without context.
*/
-- 1.
-- Complete the lab to create the SELECT CREATE query!
-- Reproduce the output:
-- CREATE TABLE Taverns (
-- ID int,
-- Name varchar(100),
-- Floors int,
-- LocationID int,
-- OwnerID int
SELECT CONCAT(COLUMN_NAME, ' ', DATA_TYPE,',') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Taverns';

-- 2. Write a query that returns guests with a birthday before 2000.
-- SELECT * FROM Guests WHERE birthday<'2000-01-01';

-- 3. Write a query to return rooms that cost more than 100 gold a night
SELECT * FROM Rooms WHERE dailyRate>100;

-- 4.Write a query that returns UNIQUE guest names.
SELECT DISTINCT guestName FROM Guests;

-- 5. Write a query that returns all guests ordered by name (ascending) Use ASC or DESC after your ORDER BY [col]
SELECT * FROM Guests ORDER BY guestName ASC;

-- 6. Write a query that returns the top 10 highest price sales
-- I was lazy with the seed data so I've done TOP 2 in this case to demonstrate that it's working.
SELECT * FROM RoomStays ORDER BY totalCost DESC LIMIT 2;

-- 7. Write a query to return all the values stored in all Lookup Tables - Lookup tables are the tables we reference typically with just an ID and a name. This should be a dynamic combining of all of the tables

-- 8. Write a query that returns Guest Classes with Levels and Generate a new column with a label for their level grouping (lvl 1-10, 10-20, etc)
SELECT * FROM GuestClass;
SELECT CASE
  WHEN level <10 THEN 'Beginner'
  WHEN level <20 THEN 'Intermediate'
  ELSE 'Expert'
END AS levelGroup
FROM GuestClass;

-- 9. Write a series of INSERT commands that will insert the statuses of one table into another of your choosing using SELECT statements (See our lab in class - The INSERT commands should be generated). It’s ok if the data doesn’t match or make sense! :)
-- * Remember, INSERT Commands look like: INSERT INTO Table1 (column1, column2) VALUES (column1, column2)
