
# Project Description

## Introduction

In this project, you will query the Chinook Database. The Chinook Database holds information about a music store. For this project, you will be assisting the Chinook team with understanding the media in their store, their customers and employees, and their invoice information. To assist you in the queries ahead, the schema for the Chinook Database is provided below. You can see the columns that **link** tables together via the arrows.

! [Chinook Database ERD] () 

## Project Overview
All of the instructions are discussed in detail as you work through this lesson on your way to completing this project.

### Instructions

#### Step 1: Get the Chinook database up and running.

You can run the **DB Browser** database on your own machine (See the Set Up the DB Browser Database page) or you can use the provided workspace (see the Chinook Postgres SQL Workspace page).

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

Database **(chinook.db)** is found on the **Project-3 Query a Digital Music Store Database** folder  

### Connect the Browser to the Database
- [x] Open up DB Browser to SQLite
- [x] Click on _Open Database_
- [x] Navigate to the Chinook.db file (probably in your downloads)
- [x] Click on the _Execute SQL_
- [x] Start querying your data

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