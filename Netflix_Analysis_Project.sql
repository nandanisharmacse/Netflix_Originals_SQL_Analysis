CREATE DATABASE netflix_project;
USE netflix_project;

CREATE TABLE Genre_Details (
       GenreID varchar(10),
       Genre varchar(100)
);
 
 Create table Netflix_Originals (
      Title varchar(255),
      GenreID varchar(10),
      Runtime INT,
      IMDBScore DECIMAL(3,1),
      Language varchar(50),
      Premiere_Date varchar(20)
);
SHOW TABLES;
SHOW DATABASES;
SELECT DATABASE();
SELECT * FROM Genre_Details;
SELECT * FROM netflix_originals;
SHOW CREATE TABLE netflix_originals;


drop table netflix_originals;

 Create table Netflix_Originals (
      Title varchar(255),
      GenreID varchar(10),
      Runtime INT,
      IMDBScore DECIMAL(3,1),
      Language varchar(50),
      Premiere_Date varchar(20)
);


-- What are the IMDb scores for each genre?

SELECT
   g.Genre,
   ROUND(AVG(n.IMDBScore),2) as avg_IMDB
   FROM netflix_originals n
   JOIN genre_details g
   ON n.GenreID = g.GenreID
   group by g.Genre;
   
   
   -- Which genre have an average IMDB Score higher than 7.5?
   
   SELECT 
       g.Genre,
       ROUND (AVG(n.IMDBScore), 2) AS Avg_IMDB
       FROM netflix_originals n
       JOIN genre_details g
       ON n.GenreID = g.GenreID
       group by g.Genre
       HAVING AVG(n.IMDBScore) > 7.5;
       
-- List Netflix Originals in descending order of their IDMBScores.alter

SELECT
      Title,
      IMDBScore
FROM netflix_originals
ORDER BY IMDBScore DESC;

-- Retrieve the top 10 longest Netflix Originals by runtime.

SELECT
     Runtime,
     Title
FROM netflix_Originals
ORDER BY Runtime DESC
LIMIT 10;
     
-- Retrieve the titles of Netflix Originals along with the respective genres

SELECT
    n.Title,
    g.Genre
FROM netflix_originals n 
JOIN genre_details g
ON n.GenreID = g.GenreID;

-- Rank Netflix Originals based on their IMDB Scores within each genre.

SELECT
    n.Title,
    g.Genre,
    n.IMDBScore,
    Rank() OVER(
           PARTITION BY g.Genre
           ORDER BY n.IMDBScore DESC
           ) AS Genre_Rank
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID;


-- which Netflix originals have imdb scores higher than the average IMDB Score of all titles?

-- SUBQUERY
SELECT AVG(IMDBScore)
FROM netflix_originals;

-- STRUCTURE
SELECT
   Title,
   IMDBScore
FROM netflix_originals
WHERE IMDBScore > (
    SELECT AVG(IMDBScore)
    FROM netflix_originals
);


-- How many Netflix originals are there in each genre ?

 SELECT
     g.Genre,
     COUNT(*) as Total_Titles
FROM netflix_originals n
JOIN genre_details g
ON n.GenreID = g.GenreID
GROUP BY g.Genre;

-- Which genre have more than 5 Netflix Originals with IMDBScore higher than 8?

SELECT
	g.Genre,
    COUNT(*) as Total_High_Rated
FROM netflix_originals n 
JOIN genre_details g
ON n.GenreID = g.GenreID
WHERE n.IMDBScore > 8
GROUP BY g.Genre HAVING COUNT(*) > 5;


-- What are the top 3 genres with the highest IMDBScore?

SELECT
    g.Genre,
ROUND(AVG(n.IMDBScore),2) as avg_IMDB
FROM netflix_originals n 
JOIN genre_details g
ON n.GenreID = g.GenreID
GROUP BY g.Genre
ORDER BY avg_IMDB DESC
LIMIT 3;