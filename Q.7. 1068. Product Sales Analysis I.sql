# Write a solution to report the product_name, year, and price for each sale_id in the Sales table. 


select Product.product_name, Sales.year, Sales.price 
from Product join Sales
on Product.product_id = Sales.product_id

