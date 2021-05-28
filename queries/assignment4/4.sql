-- 4. Write a query that returns the top 10 sales in terms of sales price and what the services were
SELECT serviceName,guestname,totalCost FROM ServiceSales
JOIN ServiceCatalogue ON ServiceSales.serviceID = ServiceCatalogue.ServiceID
ORDER BY totalCost DESC
LIMIT 5;
