SELECT 
    c.[Country/Region], 
    c.[City], 
    COUNT(o.[Order ID]) AS OrderCount
FROM 
    [Customers] AS c
INNER JOIN 
    [Orders] AS o 
    ON c.[ID] = o.[Customer ID]
WHERE 
    c.[Country/Region] LIKE '%a%'
GROUP BY 
    c.[Country/Region], 
    c.[City]
HAVING 
    COUNT(o.[Order ID]) > 5;
