/*      List of customers who ordered a particular item=Shirts - Query-2  */
SELECT  Customer_Orders.ItemNumber,Customer_Orders.CustomerNumber, ITEM.Description, ITEM.Price
FROM  Customer_Orders RIGHT JOIN ITEM ON Customer_Orders.ItemNumber=ITEM.ItemNumber
WHERE ITEM.Description='Shirts'
;