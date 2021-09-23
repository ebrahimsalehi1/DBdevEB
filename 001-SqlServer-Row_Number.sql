
Select CustomerID,
	--Row_Number() Over(Order By CustomerID) As #Row,
	--Case When Row_Number() Over(Order By CustomerID) % 2 = 0 Then 'Even' Else 'Odd' End As #Condition
	Row_Number() Over(Partition By Country,City Order BY Country,City) As #RowPartitionBy,
	Country,City
From Customers