/* What is the most popular genre by Country */

WITH TopGenresPerCountry AS
  (SELECT C.Country AS Country,
          G.Name AS Genre,
          SUM(IL.Quantity) AS TotalTracksSold
   FROM Invoice I
   JOIN Customer C ON I.CustomerID = C.CustomerID
   JOIN InvoiceLine IL ON I.InvoiceID = IL.InvoiceID
   JOIN Track T ON IL.TrackID = T.TrackID
   JOIN Genre G ON T.GenreID = G.GenreID
   GROUP BY 1,
            2
   ORDER BY 1,
            3 DESC)
SELECT Country,
       Genre,
       TotalTracksSold
FROM TopGenresPerCountry
WHERE (Country,
       Genre) IN
    (SELECT Country,
            Genre
     FROM
       (SELECT C.Country AS Country,
               G.Name AS Genre,
               SUM(IL.Quantity) AS TotalTracksSold,
               RANK() OVER (PARTITION BY Country
                            ORDER BY SUM(IL.Quantity) DESC) AS Rank
        FROM Invoice I
        JOIN Customer C ON I.CustomerID = C.CustomerID
        JOIN InvoiceLine IL ON I.InvoiceID = IL.InvoiceID
        JOIN Track T ON IL.TrackID = T.TrackID
        JOIN Genre G ON T.GenreID = G.GenreID
        GROUP BY 1,
                 2)
     WHERE Rank = 1 )
ORDER BY 1,
         3 DESC;