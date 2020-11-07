/*    Pick List – For customer order number ='16660133' List of item number, stock location and number of units ordered. -Query 3  */

SELECT Customer_Orders.OrderNumber, ITEM.StockLoc, Customer_Orders.ItemNumber, Customer_Orders.ItemQuantity
FROM  Customer_Orders INNER JOIN ITEM ON Customer_Orders.ItemNumber=ITEM.ItemNumber
WHERE Customer_Orders.OrderNumber='16660133'
;