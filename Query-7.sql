/* 	Modify Item table by adding new coloumn which shows 5% of annual sales donation for each item - Query 7*/
alter table Item
add DonationToCharity varchar(250);
update  Item set DonationToCharity=AnnualSales*0.05
WHERE Price >= 0;

Select * FROM Item;
select * from Item ORDER BY Price; 