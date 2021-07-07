-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select p.ProductName, c.CategoryName
from Product as p join Category as c on p.CategoryId=c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id, s.CompanyName
FROM [Order] as o join Shipper as s on o.ShipVia = s.Id and o.OrderDate<"2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, o.Quantity
FROM [OrderDetail] as o join [Product] as p on o.ProductId=p.Id and o.OrderId=10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM [Order] as o join [Employee] as e on o.EmployeeId=e.Id
  join [Customer] as c on o.CustomerId =c.Id;