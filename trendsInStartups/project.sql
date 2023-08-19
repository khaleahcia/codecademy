/*
Trends in Startups project for Learn SQL course at Codecademy.

Howdy! It’s your first day as a TechCrunch reporter. Your first task is to write an article on the rising trends in the startup world.

To get you started with your research, your boss emailed you a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.

Write queries with aggregate functions to retrieve some interesting insights about these companies.

What are you waiting for? Let’s get started!
*/

-- Write the following queries:
-- 1. Getting started, take a look at the startups table. How many columns are there?
SELECT *
FROM startups;
-- 10 columns

-- 2. Calculate the total number of companies in the table.
SELECT COUNT(*)
FROM startups;
-- 70 companies

-- 3. We want to know the total value of all companies in this table. Calculate this by getting the SUM() of the valuation column.
SELECT SUM(valuation)
FROM startups;
-- $974,455,790,000

-- 4. What is the highest amount raised by a startup? Return the maximum amount of money raised.
SELECT MAX(raised)
FROM startups;
-- $11,500,000,000

-- 5. Edit the query so that it returns the maximum amount of money raised during 'Seed' stage.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';
-- $1,800,000

-- 6. In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;
-- 1994

-- Let's find out the valuations among different sectors:
-- 7. Return the average valuation.
SELECT AVG(valuation) AS 'Average Valuation'
FROM startups;
-- $15,974,685,081.96

-- 8. Return the average valuation, in each category.
SELECT category, AVG(valuation) AS 'Average Valuation'
FROM startups
GROUP BY 1;
-- Algorithms = $7,600,000.00; Augmented Reality	= $8,000,000,000.00; Big Data Analytics = $15,000,000.00; Cloud Computing = $95,000,000.00; Customer Service = $640,000,000.00

-- 9. Return the average valuation, in each category. Round the averages to two decimal places.
SELECT category, ROUND(AVG(valuation), 2) AS 'Average Valuation'
FROM startups
GROUP BY 1;

-- 10. Return the average valuation, in each category. Round the averages to two decimal places. Lastly, order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2) AS 'Average Valuation'
FROM startups
GROUP BY 1
ORDER BY 2 DESC;
-- Health Care = $380,490,000,000.00; Enterprise = $38,508,333,333.33; Real Estate = $20,000,000,000.00; Travel = $12,501,250,000.00; Augmented Reality = $8,000,000,000.00

-- What are the most competitive markets?
-- 11. First, return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY 1;
-- NULL = 3; Algorithms = 1; Augmented Reality = 1; Big Data Analytics = 1; Cloud Computing = 2; Customer Service = 1

-- 12. Next, filter the result to only include categories that have more than three companies in them. What are the most competitive markets?
SELECT category, COUNT(*)
FROM startups
GROUP BY 1
HAVING COUNT(*) > 3
ORDER BY 2 DESC;
-- Social = 12; Mobile = 10; Education = 5

-- Let's see if there's a difference in startups sizes among different locations:
-- 13. What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY 1;
-- Atlanta = 3.0; Boulder = 3.0; Brooklyn = 502.666666666667; Chicago = 12.0; Columbus = 2.0; Denver = 12.0

-- 14. What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY 1
HAVING AVG(employees) > 500;
-- Brooklyn = 502.666666666667; New York = 702.75; San Francisco = 1920.4; Silicon Valley = 1804.6