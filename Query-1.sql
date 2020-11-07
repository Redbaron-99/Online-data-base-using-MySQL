/*  List of items ordered by a customer C935-Query 1 */
SELECT Customer_Orders.CustomerNumber ,  Customer_Orders.ItemNumber, ITEM.Description, ITEM.Price
FROM  Customer_Orders LEFT JOIN ITEM ON Customer_Orders.ItemNumber=ITEM.ItemNumber
WHERE Customer_Orders.CustomerNumber='C935'
;