
# Project Description

## Kaggle's New York Stock Exchange S&P 500 dataset 

### Introduction

In this project we will analyze real life data from the New York Stock Exchange. You will be drawing a subset of a large dataset provided by **Kaggle** that contains historical financial data from S&P 500 companies. We have created a smaller subset of the data that you will be using for the project.

### what do i need to install?
You may use any spreadsheet application you like. This includes Google Sheets, Microsoft Excel, etc.

### why this project?

In this project, you will go through the process of calculating summary statistics, drawing any inference from the statistics, calculating business metrics, and using models to forecast future growth prospects for the companies. The goal is for you to perform an analysis and also create visual tools to communicate the results in informative ways.

We have provided a clean data set for this project. Although in real-life scenarios, data sets often need to be cleaned and processed before analysis can proceed. This project allows you to see what a clean data set should look like.

### What Skills will i use?
The main goal of this project is for you to demonstrate your ability to:
- interpret the measures of central tendency and spread (mean, median, standard deviation, range).
- use a combination of Excel or Google Sheets functions (e.g., IF statements, INDEX, and MATCH, calculating descriptive statistics with the IF statement, dropdowns, data validation, VLOOKUP).
- analyze and forecast financial business metrics using Excel or Google Sheets.
- create visualizations of a business metric and use Excel or Google Sheets to create a financial forecast model.

## Introduction to the project

For the final project, you will conduct three Tasks:

- Complete your own data analysis and create a presentation to share your findings,
- Develop a dashboard for a Profit and Loss Statement.
- Create a Financial Forecasting Model using three scenarios.
You should start by taking a look at your dataset and brainstorming which sub-category and company you want to focus your data analysis on - the questions leading to this page should have assisted in this process! Then you should use spreadsheets or another Excel-like software to conduct your analysis and choose a sub-category and company you are most interested in. This project is open-ended in that there is no one right answer.

### Project Detail

### Planning Ahead

These files listed here are what you will be working on in the project:

- The presentation with the visuals and summary

- A copy of the spreadsheet workbook you will use to do the analysis for your report contains the following tabs:
  - Data file
  - Summary statistics_
  - P&L Statement Dashboard
  - Forecast scenarios

Here are the three tasks that you will complete in the final project.

### Task 1:
a. Identify the question about the data that you will answer based on your data analysis and include this in your **slide presentation.**
- **Your question should include at least one categorical variable (GICS Sector or GICS Sub Industry) and one quantitative variable (one of the financial metrics) and require the use of at least one of the summary statistics.**
- **A tab within the Excel spreadsheet** that you submit should include the **summary statistics** [measures of central tendency (e.g., mean, median) and measures of spread (standard deviation and range)] you used to answer your question.
- Deliverable:
  - Slide presentation 
  - Spreadsheet with tab for Summary statistics

b. **Your slide presentation** should provide **at least one visualization to help support your answer.**
- Make a copy of the submission template to complete your project. We suggest you use the layout provided, though it is not a requirement. You can find the MS Powerpoint version of the Project Submission template under the Resources.
- Once you have finished analyzing the data, in the submission template provided, create your presentation that shares the visual and summary information.
  - The summary information paragraph clearly communicates your findings based on your analysis and provides visual or numeric values associated with your summary.
  - The visualization(s) might be a bar chart, histogram, scatterplot, box-plot, or other visual that you learned to make. Include your insights from the measures of center and spread and at least one numeric summary statistic in the summary description.
- _Deliverable:_ Slide presentation (includes visualization)
### Task 2:
- Create a **dashboard for a Profit and Loss Statement** that calculates the **Gross Profit, Operating Profit, or EBIT** for a company selected from a drop-down list. Include all companies from the raw data.
- Your drop-down list should pull historical fundamentals data to create the P&L Statement.
- The P&L statement should include the **Gross Profit, Operating Profit, or EBIT values for all the years there is historical data available for that company in the dataset.**
- _Deliverable:_ Spreadsheet with tab for Dynamic P&L statement
### Task 3:
- Create a **financial model** for a company (different from Task 2) of your choice that forecasts out the **Gross Profit, Operating Profit, or EBIT for two more years using three scenarios (Best case, Weak case, and Base case).**
- Your assumptions for revenue growth, gross margin, and operating margin should change for each scenario.
- The forecasting model should be dynamic for the selection of the case (Weak, Base, Strong). However, the forecasting model can be static for the chosen company sticker symbol.
- _Deliverable:_ Spreadsheet with tab for Forecasting Model

# My Project 
### Understanding the Data

- The data that was mostly provided was clean, but I made some changes such as updating the column titles to remove spaces by using underscores and formatting certain column data types to better align with the data.
- The data contains the following columns 
  - _**Ticker_Symbol** (Stock Symbol - Abbreciation for a Company's Stock)_
  - _**Years**_
  - _**Period Ending**_
  - _**Total_Revenue**_
  - _**Cost_of_Good_Sold**_
  - _**Sales,_General_and_Admin.**_
  - _**Reasearch_and_Development**_
  - _**Other_Operating_Items**_
  - _**GICS_Sector** (Global Industry Classification Standard)_
  - _**GICS_Sub_Industry**_

### Created the Summary Statistics

- I first had to identify a question about the data that i was interested in answering, the question i asked is, **Which GICS sector spends more in research and development YOY?**  
- After the inquiry was made, I utilized a pivot table to extract the GICS sector for each year, enabling me to examine the yearly expenditure on research and development in greater detail.

![R&D_2012-2016](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/R%26D_2012-2016.png)

- After that i calculated measures of central tendency (mean, median) and measure of spread (standard deviation and range) to get a better understanding of the data.

![Summary_Statistics](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Summary_Statistics.png)

- Furthermore, I incorporated the year-on-year growth rate of research and development expenditure to determine the GICS sectors that experienced an increase or decrease in their spending.

![Growth_Rate_R&D](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Growth_Rate_R%26D.png)

- After gathering all the relevant data, I generated a bar chart that displayed the research and development expenditure by sector from 2012 to 2016, revealing the sectors that spent more or less. Based on my comprehensive analysis, I concluded with a summary of my findings.

![Bar_Chart](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Bar_Chart.png)

- Once the Excel sheets were completed, I utilized Microsoft PowerPoint to design a slide presentation.

![Presentation 1](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Presentation%201.png)
![Presentation 2](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Presentation%202.png)
![Presentation 3](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Presentation%203.png) 

### Created Dynamic Profit and Loss Statement

- Using an INDEX function that linked to a value from the summary statistics tab and matched it to the year and ticker symbol, I developed a dynamic profit and loss statement for each year that automatically updates based on the selected ticker symbol. This approach allowed for precise calculation of profits and losses.

![Profit and Loss Statement](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Profit%20and%20Loss%20Statement%20.png) 

### Created Financial Forecast

- I adopted a bottom-up methodology to prepare the financial forecast by examining the historical profit and loss data and making assumptions about the behavior of key metrics. Based on this analysis, I projected the revenue, gross profit, and operating profit. 

![Financial Forecast](https://github.com/ziwalon/Business-Analytics-Projects-/blob/main/Project-2-Analyze-NYSE-Data/screengrabs/Financial%20Forecast.png) 