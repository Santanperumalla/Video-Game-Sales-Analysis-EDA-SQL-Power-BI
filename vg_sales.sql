-- Creating a Database
CREATE DATABASE vgsales;
USE vgsales;

-- Table Creation
CREATE TABLE vgsales (
    rank_id INT,
    name VARCHAR(255),
    platform VARCHAR(50),
    year INT,
    genre VARCHAR(100),
    publisher VARCHAR(255),
    na_sales DECIMAL(10,2),
    eu_sales DECIMAL(10,2),
    jp_sales DECIMAL(10,2),
    other_sales DECIMAL(10,2),
    global_sales DECIMAL(10,2)
);

-- How many games are present in the dataset?
SELECT COUNT(*) AS total_games
FROM vgsales;

-- How many unique gaming platforms exist?
SELECT COUNT(DISTINCT Platform) AS total_platforms
FROM vgsales;

-- Which are the top 10 games by global sales?
SELECT Name, Global_Sales
FROM vgsales
ORDER BY Global_Sales DESC LIMIT 10;

-- Which publishers released the most games?
SELECT Publisher, COUNT(*) AS total_games
FROM vgsales
GROUP BY Publisher
ORDER BY total_games DESC LIMIT 10;

-- Which genres generated the highest global sales?
SELECT Genre, ROUND(SUM(Global_Sales),2) AS total_sales
FROM vgsales
GROUP BY Genre
ORDER BY total_sales DESC;

-- What is the average global sales for each platform?
SELECT Platform, ROUND(AVG(Global_Sales),2) AS avg_sales
FROM vgsales
GROUP BY Platform
ORDER BY avg_sales DESC;

-- Which years had the highest number of game releases?
SELECT Year, COUNT(*) AS games_released
FROM vgsales
GROUP BY Year
ORDER BY games_released DESC
LIMIT 5;

-- Which genre sold the most units in North America?
SELECT Genre, ROUND(SUM(NA_Sales),2) AS na_sales
FROM vgsales
GROUP BY Genre
ORDER BY na_sales DESC;

-- Which games had the highest sales in Japan?
SELECT Name, JP_Sales
FROM vgsales
ORDER BY JP_Sales DESC
LIMIT 10;

-- Which publishers generated the highest global sales?
SELECT Publisher, ROUND(SUM(Global_Sales),2) AS total_sales
FROM vgsales
GROUP BY Publisher
ORDER BY total_sales DESC
LIMIT 10;

-- Find games whose global sales are above the average global sales?
SELECT Name, Global_Sales
FROM vgsales
WHERE Global_Sales >
(
    SELECT AVG(Global_Sales)
    FROM vgsales
)
ORDER BY Global_Sales DESC;

-- What is the highest-selling game within each genre?
SELECT Genre, Name, Global_Sales
FROM vgsales v1
WHERE Global_Sales =
(
    SELECT MAX(Global_Sales)
    FROM vgsales v2
    WHERE v1.Genre = v2.Genre
);

-- Calculate total sales contribution of each region?
SELECT 
    ROUND(SUM(NA_Sales),2) AS North_America,
    ROUND(SUM(EU_Sales),2) AS Europe,
    ROUND(SUM(JP_Sales),2) AS Japan,
    ROUND(SUM(Other_Sales),2) AS Other_Regions
FROM vgsales;

-- Which platforms generated the highest total global sales?
SELECT Platform, ROUND(SUM(Global_Sales),2) AS total_sales
FROM vgsales
GROUP BY Platform
ORDER BY total_sales DESC LIMIT 10;

-- Rank publishers according to total global sales.
SELECT Publisher,
       ROUND(SUM(Global_Sales),2) AS total_sales,
       RANK() OVER (
           ORDER BY SUM(Global_Sales) DESC
       ) AS publisher_rank
FROM vgsales
GROUP BY Publisher;

-- Find the top 3 best-selling games within each genre.
WITH ranked_games AS
(
    SELECT Genre, Name, Global_Sales,
           ROW_NUMBER() OVER(
               PARTITION BY Genre
               ORDER BY Global_Sales DESC
           ) AS rn
    FROM vgsales
)
SELECT *
FROM ranked_games
WHERE rn <= 3;

-- How did global sales change over time?
SELECT Year, ROUND(SUM(Global_Sales),1) AS yearly_sales
FROM vgsales
GROUP BY Year
ORDER BY Year;

-- Identify the highest-selling game for every platform?
WITH ranked_games AS
(
    SELECT Platform, Name, Global_Sales,
           ROW_NUMBER() OVER(
               PARTITION BY Platform
               ORDER BY Global_Sales DESC
           ) AS rn
    FROM vgsales
)
SELECT Platform, Name, Global_Sales
FROM ranked_games
WHERE rn = 1;

-- Calculate cumulative global sales over the years.
WITH yearly_sales AS
(
    SELECT Year, SUM(Global_Sales) AS total_sales
    FROM vgsales
    GROUP BY Year
)
SELECT Year, total_sales, SUM(total_sales) OVER(
           ORDER BY Year
       ) AS cumulative_sales
FROM yearly_sales;

-- Determine the region where each game sold the most.
SELECT Name,
       CASE
           WHEN NA_Sales >= EU_Sales
                AND NA_Sales >= JP_Sales
                AND NA_Sales >= Other_Sales
           THEN 'North America'

           WHEN EU_Sales >= JP_Sales
                AND EU_Sales >= Other_Sales
           THEN 'Europe'

           WHEN JP_Sales >= Other_Sales
           THEN 'Japan'

           ELSE 'Other Regions'
       END AS dominant_market
FROM vgsales;