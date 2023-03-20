
# Project Description

## Introduction

In this project, you will query the Chinook Database. The Chinook Database holds information about a music store. For this project, you will be assisting the Chinook team with understanding the media in their store, their customers and employees, and their invoice information. To assist you in the queries ahead, the schema for the Chinook Database is provided below. You can see the columns that **link** tables together via the arrows.

![Chinook Database ERD](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Database%20ERD.png) 

## Project Overview
All of the instructions are discussed in detail as you work through this lesson on your way to completing this project.

### Instructions

#### Step 1: Get the Chinook database up and running.

You can run the [DB Browser](https://sqlitebrowser.org/dl/) database on your own machine or you can use the provided workspace.

### Setting up Your Local Environment
It was great to get started learning SQL here in the classroom, but the way to really master your skills is to get a local setup and learn to work within your own environment.

The next few problems are going to help make sure you are comfortable working locally. Once you're set up, you'll be able to use this workspace not only for this project...but BEYOND!

The environment we'll use is pretty quick to set up, and hopefully, you'll be up and running in no time :)

All you'll need to do here is...

- Download your new database
- Download DB Browser for SQLite
As soon as you have DB Browser for SQLite connected to your new database, you're ready for the next page!

### Download DB Browser for SQLite

Many different database browsers work with different types of databases. For this course, we'll be using the DB Browser for SQLite. The other browsers you may use will likely be very similar.

DB Browser for SQLite can be downloaded from the [SQLite Browser website](https://sqlitebrowser.org/dl/). Choose the correct version (Windows/Mac) for your computer setup.

### Download Database

[Download the Chinook Database](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/chinook-db/chinook_db/chinook.db)  

### Connect the Browser to the Database
- [x]  Open up DB Browser to SQLite
- [x]  Click on _Open Database_
- [x]  Navigate to the Chinook.db file (probably in your downloads)
- [x]  Click on the _Execute SQL_
- [x]  Start querying your data

### Export Data from DB Browser into a Spreadsheet

To create the visualizations, you will need to move your data out of SQL and into Excel (or another spreadsheet application).

To export the results of your queries from DB Browser, use the _**Export to CSV**_ button below and to the right of the results window.

Select Export to CSV, and then select the settings that match the ones below. Make sure your setting on **Newline characters** is set to `Unix: LF(\n)`. Then you should be able to use open the data in your spreadsheet application.

## Project Requirements
### Presentations

You are now working on the portion of the project you will need to submit to a reviewer.

Your presentation should include:

- Four slides
- One visualization per slide
- A 1-2 sentence explanation of each slide
- The SQL query is used to create the data used in the visualization.

### Queries
Please include a text file that includes each of the queries used to create the visualizations.

- All SQL queries run without errors and produce the intended results.
- Each SQL query needs to include one or more explicit join(s). The query's `JOIN` or `JOIN`s should be necessary to answer the question. If a question does not require a `JOIN`, please change the question to be one that does.
- Each SQL query needs to include one or more aggregation(s). This could be a `COUNT`, `AVG`, `SUM`, or other aggregation.
- The project includes at least four unique SQL queries.

Then paste your code into a plain text file .txt.

### Visualizations
We suggest using a spreadsheet application, such as Excel or Google Sheets, to create your visualizations. However, you’re welcome to use whatever tool you’d like. Your visualizations could be any that you learned about in the previous lesson.

You should have four slides, but the questions you ask are up to you, and all four of your final submitted queries should contain a **JOIN** and **AGGREGATION**.

# My Project

- When presented with the Chinook Database, I initially wanted to understand the data and establish links between the tables in order to determine the appropriate method for querying the database. Following several practice queries, my interest was piqued. I sought to delve deeper by asking relevant questions that would provide valuable insights into the music store database per the project requirements.

- **Question 1: Who is the top-selling Artist for each year?**
- **Query 1:**
```
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
     GROUP BY YEAR)
```

- In order to produce a visualization, I exported the data from SQL to Excel and created the table format. 

![Excel Table Format 1](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Excel%20Table%20Format%201.png)

- **Question 2: What is the most popular genre by Country?**
- **Query 2:**
```
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
         3 DESC
```
- In order to produce a visualization, I exported the data from SQL to Excel and created the table format. 

![Excel Table Format 2](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Excel%20Table%20Format%202.png)

- **Question 3: What is the Average duration of tracks, measured in minutes, for each genre?**
- **Query 3:**
```
SELECT G.Name AS Genre, 
       ROUND(AVG(T.Milliseconds/60000.0), 2) AS AvgLengthInMinutes
FROM Track T
JOIN Genre G ON T.GenreId = G.GenreID
GROUP BY 1
HAVING T.MediaTypeId != 3
ORDER BY 2;
```
- In order to produce a visualization, I exported the data from SQL to Excel and created the table format. 

![Excel Table Format 3](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Excel%20Table%20Format%203.png)

- **Question 4: Who is the best customer by total purchase from each country?**
- **Query 4:**
```
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
```
- In order to produce a visualization, I exported the data from SQL to Excel and created the table format. 

![Excel Table Format 4](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Excel%20Table%20Format%204.png)

- After querying and gaining insights from the data, I proceeded to create visual representations for each query question to better illustrate the data.

![Presentation 1](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Presentation%201.png)

![Presentation 2](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Presentation%202.png)

![Presentation 3](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Presentation%203.png)

![Presentation 4](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Presentation%204.png)

![Presentation 5](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-3-Query-a-Digital-Music-Store-Database/Images/Presentation%205.png)
