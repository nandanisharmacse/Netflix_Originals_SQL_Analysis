# Netflix Originals SQL Analysis

## Project Overview

This project analyzes Netflix Originals data using SQL to uncover trends and insights related to genres, IMDb scores, runtime, and content distribution. The analysis was performed using MySQL and focuses on real-world data exploration techniques commonly used in Data Analytics.

## Dataset

The project uses two datasets:

* Netflix_Originals
* Genre_Details

These datasets contain information about Netflix Original titles, genres, IMDb ratings, runtime, language, and premiere dates.

## SQL Concepts Used

* Joins
* Aggregate Functions (AVG, COUNT)
* GROUP BY
* HAVING
* ORDER BY
* LIMIT
* Subqueries
* Window Functions (RANK)
* Data Filtering

## Business Questions Solved

1. Average IMDb score for each genre.
2. Genres with average IMDb score greater than 7.5.
3. Netflix Originals sorted by IMDb score.
4. Top 10 longest Netflix Originals by runtime.
5. Titles along with their respective genres.
6. Ranking Netflix Originals within each genre based on IMDb score.
7. Titles with IMDb score higher than the overall average.
8. Number of Netflix Originals in each genre.
9. Genres having more than 5 Netflix Originals with IMDb score above 8.
10. Top 3 genres with the highest average IMDb scores.

## Key Insights

* Identified the highest-rated genres based on average IMDb scores.
* Analyzed content distribution across genres.
* Ranked titles within genres using SQL Window Functions.
* Explored high-performing Netflix Originals based on IMDb ratings.

## Tools Used

* MySQL
* MySQL Workbench
* GitHub

## Project Structure

Netflix-Originals-SQL-Analysis

├── Dataset
├── SQL_Queries.sql
├── Screenshots
└── README.md

## Question 1 - Average IMDb Score by Genre
This query calculates the average IMDb score for each genre using JOIN, GROUP BY, and AVG() functions.
<img width="907" height="600" alt="image" src="https://github.com/user-attachments/assets/20eaedd3-4e45-48e7-9114-b282bea87107" />

## Question 6: Rank Netflix Originals Within Each Genre
This query ranks Netflix Originals based on their IMDb scores within each genre using the SQL Window Function `RANK()`. 
The `PARTITION BY` clause creates separate rankings for each genre, while `ORDER BY IMDBScore DESC` ensures that titles with higher IMDb scores receive better ranks. 
### SQL Concepts Used 
- JOIN
- Window Functions
- RANK()
- PARTITION BY
- ORDER BY
<img width="812" height="880" alt="image" src="https://github.com/user-attachments/assets/9467786d-2ea8-4936-95e3-ed3ed985f016" />

## Question 10: Top 3 Genres with the Highest Average IMDb Score 
This query identifies the top 3 genres with the highest average IMDb ratings. It uses the `AVG()` function to calculate the average IMDb score for each genre, `GROUP BY` to organize records genre-wise, and `ORDER BY DESC` to sort genres from highest to lowest average rating. The `LIMIT 3` clause is used to display only the top three genres. 
### SQL Concepts Used 
- JOIN
- AVG()
- GROUP BY
- ORDER BY
-  LIMIT
 <img width="822" height="651" alt="image" src="https://github.com/user-attachments/assets/ad7dc884-6544-4a97-82ce-2ef9b5d4dfa6" />

## Author
Nandani Sharma
Aspiring Data Analyst | SQL | Python | Pandas | NumPy | Data Visualization
