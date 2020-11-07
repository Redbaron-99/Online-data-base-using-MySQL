/* Stock location by ItemNumber*/
SELECT Item.ItemNumber, Item.Price, Item.Description, Customer_Orders.OrderNumber
FROM customer_orders
INNER JOIN Item
ON Customer_Orders.ItemNumber=Item.ItemNumber
Where Customer_Orders.OrderNumber='16658443'