-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT r.ReservationID,
  r.CustomerID,
  r.Date
FROM Reservations AS r
JOIN Customers AS c
  ON r.CustomerID = c.CustomerID
  AND c.FirstName = 'Norby'
WHERE DATE(Date) = '2022-07-29'

DELETE FROM Reservations
WHERE ReservationID = 2000