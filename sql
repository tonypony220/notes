SELECT date, cash_flow, 
SUM(cash_flow) OVER (ORDER BY date ASC) AS cumulative_cf 
FROM transactions;


2. Как, используя CTE, найти пятый по величине оклад в таблице?

Declare @N int
set @N = 5;
WITH CTE AS
(
    SELECT Name, Salary, EmpID, RN = ROW_NUMBER() 
	OVER (ORDER BY Salary DESC)
    FROM Employee
)
SELECT Name, Salary, EmpID
FROM CTE
WHERE RN = @N

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

5. Учитывая данные из таблицы A:
 x
------
  2
 -2
  4
 -4
 -3    
  0
  2
Напишите один запрос для вычисления суммы всех положительных и отрицательных значений x.

select sum(case when x>0 then x else 0 end)
       sum_pos,sum(case when x<0 then x else 0 end)
       sum_neg from a;


