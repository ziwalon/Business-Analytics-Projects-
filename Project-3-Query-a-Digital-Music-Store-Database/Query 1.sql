/* Who is the top-selling Artist for each year? */

WITH TopArtistsPerYear AS
  (SELECT STRFTIME('%Y', I.InvoiceDate) AS YEAR,
          A.Name AS ArtistName,
          SUM(IL.Quantity * IL.UnitPrice) AS TotalSales
   FROM InvoiceLine IL
   JOIN Track T ON IL.TrackID = T.TrackID
   JOIN Album AM ON T.AlbumID = AM.AlbumID
   JOIN Artist A ON AM.ArtistID = A.ArtistID
   JOIN Invoice I ON IL.InvoiceID = I.InvoiceID
   GROUP BY 1,
            2
   ORDER BY 1,
            3 DESC)
SELECT YEAR,
       ArtistName,
       TotalSales
FROM TopArtistsPerYear
WHERE (YEAR,
       TotalSales) in
    (SELECT YEAR,
            MAX(TotalSales)
     FROM TopArtistsPerYear
     GROUP BY YEAR);