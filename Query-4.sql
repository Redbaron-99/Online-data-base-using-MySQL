/*  Pick List – List of orders that were shipped late- Query 4 */

SELECT DISTINCT OrderNumber 
FROM Customer_Orders WHERE  ActShipDate > ReqShipDate
;