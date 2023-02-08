/*  What is the Average duration of tracks, measured in minutes, for each genre? */

SELECT G.Name AS Genre, 
       ROUND(AVG(T.Milliseconds/60000.0), 2) AS AvgLengthInMinutes
FROM Track T
JOIN Genre G ON T.GenreId = G.GenreID
GROUP BY 1
HAVING T.MediaTypeId != 3
ORDER BY 2;