/* List of items ordered in a particular month with date-Query 5  */

SELECT  Customer_Orders.ItemNumber, ITEM.Description, Customer_Orders.OrderDate
FROM  Customer_Orders LEFT JOIN ITEM ON Customer_Orders.ItemNumber=ITEM.ItemNumber
WHERE MONTH(OrderDate) = 11
;