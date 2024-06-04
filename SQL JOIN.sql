/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT p.NAME, c.NAME FROM products AS p
 INNER JOIN categories AS c
 ON p.CategoryID = c.CategoryID
WHERE c.NAME = "Computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.NAME, p.Price, r.Rating FROM products AS p
INNER JOIN reviews AS r
on p.ProductID = r.ProductID
WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, SUM(s.Quantity) AS "TOTAL" FROM sales AS S
INNER JOIN employees as e
ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
order by Total desc
LIMIT 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.NAME AS DepartmentName, c.NAME AS CategoryName FROM departments AS d
INNER JOIN categories AS c
ON d.DepartmentID = c.DepartmentID
WHERE c.NAME = "Appliances" OR c.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.NAME, SUM(s.Quantity) AS TotalSales, SUM(s.Quantity * s.PricePerUnit) AS TotalPrice
FROM sales AS s
INNER JOIN products AS p
ON s.ProductID = p.ProductID
WHERE p.NAme = "Eagles: Hotel California";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.NAME, r.Reviewer, r.Rating, r.Comment FROM reviews AS r
INNER join products AS P
ON r.ProductID = p.ProductID
WHERE p.NAME = "Visio TV" AND r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */