SELECT * FROM sales_portfolio.sales_mysql;
alter table sales_portfolio.sales_mysql modify column Product varchar(50);
describe sales_portfolio.sales_mysql;
alter table sales_portfolio.sales_mysql drop column Type;
alter table sales_portfolio.sales_mysql drop column Price;
alter table sales_portfolio.sales_mysql add column Price varchar(50);
update sales_portfolio.sales_mysql 
set Price=Product;
select DateTime, SalesRep, Product, Units, Discount, Region,
	CASE
		when Product="Maxi MTA" then "80"
        when Product="Sunset" then "26.95"
		when Product="Yanaki" then "24.95"
		when Product="Sunbell" then "24"
		when Product="Aspen" then "25"
		when Product="Sunshine" then "26"
		when Product="Quad" then "43"
		when Product="TriFly" then "4"
		when Product="Carlota" then "27"
		when Product="Doublers" then "125"
		when Product="Distance" then "75"
		when Product="FastCatch" then "50"
	end Price
from sales_portfolio.sales_mysql;
SELECT * FROM sales_portfolio.sales_mysql;
select Units, Price, Discount,
(Units*Price*(1-Discount)) as Revenue FROM sales_portfolio.sales_mysql; 
