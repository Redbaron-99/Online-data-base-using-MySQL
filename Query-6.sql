/* Details of customer according to customer number*/
SELECT CUSTOMER.CustomerNumber, CUSTOMER.Firstname, CUSTOMER.Lastname, CUSTOMER.Street, CUSTOMER.City, CUSTOMER.State, CUSTOMER.ZIP, CUSTOMER.AREA, CUSTOMER.NUM, CUSTOMER.EMAIL, Customer_Orders.CustomerNumber
FROM  Customer_Orders LEFT JOIN CUSTOMER ON Customer_Orders.CustomerNumber=CUSTOMER.CustomerNumber
WHERE Customer_Orders.CustomerNumber='C935'
;
