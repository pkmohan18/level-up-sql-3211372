-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

-- SELECT c.CustomerID, count(o.OrderID)
-- FROM Customers c
-- JOIN
-- Orders o ON c.CustomerID = o.CustomerID
-- GROUP BY o.CustomerID
-- ORDER BY count(*) DESC
-- LIMIT 15;

SELECT COUNT(o.orderID) as OrderCount, c.FirstName, c.LastName, c.Email
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;