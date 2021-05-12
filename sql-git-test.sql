--Sales by customer after 1/1/2018
Select
c.Name CustomerName
,sum(ol.price) ItemSales
from
Orders o
join Customers c on o.CustomerId = c.Id
join OrderLines ol on o.Id = ol.OrdersId
where o.Date > '1-1-2018'
group by
c.Name
order by sum(ol.Price) descenhancement made
Bug fix
