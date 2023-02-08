/* Who is the best customer by total purchase from each country? */

SELECT ID,
       FirstName || ' ' || LastName AS Customer,
       Country,
       TotalSpent
FROM
  (SELECT C.CustomerId AS ID,
          C.FirstName AS FirstName,
          C.LastName AS LastName,
          C.Country AS Country,
          SUM(I.Total) AS TotalSpent,
          RANK() OVER (PARTITION BY Country
                       ORDER BY SUM(I.Total) DESC) AS Rank
   FROM Customer C
   JOIN Invoice I ON C.CustomerId = I.CustomerId
   GROUP BY 1
   ORDER BY 4 DESC)
WHERE Rank = 1
ORDER BY 4 DESC
LIMIT 10;
