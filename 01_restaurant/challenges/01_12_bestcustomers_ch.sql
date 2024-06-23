-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName,
  c.LastName,
  c.Email,
  count(o.OrderID) AS NumberOrders
FROM Customers AS c
JOIN Orders AS o
  ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY NumberOrders DESC