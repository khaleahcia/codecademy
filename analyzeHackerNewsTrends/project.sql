/*
Analyze Hacker News Trends project for Learn SQL course on Codecademy.

Hacker News is a popular website run by Y Combinator. It’s widely known by people in the tech industry as a community site for sharing news, showing off projects, asking questions, among other things.

In this project, you will be working with a table named hacker_news that contains stories from Hacker News since its launch in 2007. It has the following columns:
    title: the title of the story
    user: the user who submitted the story
    score: the score of the story
    timestamp: the time of the story
    url: the link of the story
This data was kindly made publicly available under the MIT license.

Let’s get started!
*/

-- Understanding the dataset
-- 1. Start by getting a feel for the hacker_news table! Let's find the most popular Hacker News stories. What are the top five stories with the highest scores?
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;
-- Penny Arcade – Surface Pro 3 update = 517; Hacking The Status Game = 309; Postgres CLI with autocompletion and syntax highlighting = 304; Stephen Fry hits out at ‘infantile’ culture of trigger words and safe spaces = 282; Reversal: Australian Govt picks ODF doc standard over Microsoft = 191

-- Hacker News Moderating
-- 2. Recent studies have found that online forums tend to be dominated by a small percentage of their users (1-9-90 Rule). Is this true of Hacker News? Is a small percentage of Hacker News submitters taking the majority of the points? First, find the total score of the stories.
SELECT SUM(score)
FROM hacker_news;
-- 6366

-- 3. Next, we need to pinpoint the users who have accumulated a lot of points across their stories. Find the individual users who have gotten combined scores of more than 200, and their combined scores. GROUP BY and HAVING are needed!
