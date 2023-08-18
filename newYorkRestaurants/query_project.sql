/*
New York Restaurants project for Learn SQL course at Codecademy.

We have put together a table of restaurants called nomnom and we need your help to answer some questions. Use the SQL commands you just learned and find the best dinner spots in the city.

The schema of this table is available, nomnom.png.

Let’s begin!
*/

-- 1. Start by getting a feel for the nomnom table. What are the column names?
SELECT *
FROM nomnom;
-- name, neighborhood, cuisine, review, price, health

-- 2. What are the distinct neighborhoods?
SELECT DISTINCT neighborhood
FROM nomnom;
-- Brooklyn, Midtown, Chinatown, Uptown, Queens, Downtown

-- 3. What are the distinct cuisine types?
SELECT DISTINCT cuisine
FROM nomnom;
-- Steak, Korean, Chinese, Pizza, Ethiopian, Vegetarian, Italian, Japanese, American, Mediterranean, Indian, Soul Food, Mexican

-- 4. Suppose we would like some Chinese takeout. What are our options?
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';
-- Nom Wah Tea Parlor, Nan Xiang Xiao Long Bao, Mission Chinese Food, Baohaus, Xi'an Famous Foods, Sonnyboy's, Great NY Noodletown, Golden Unicorn, Wo Hop, Ping's Seafood, XO Kitchen

-- 5. Return all the restaurants with reviews of 4 and above.
SELECT *
FROM nomnom
WHERE review >= 4;
-- Peter Luger Steak House = 4.4, Jongro BBQ = 4.5, Pocha 32 = 4, Nom Wah Tea Parlor = 4.2, Roberta's = 4.4, ...

-- 6. Suppose Abbi and Ilana want to have a fancy dinner date. Return all the restuarants that are Italian and $$$.
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';
-- al di la Trattoria, Locanda Vini & Olii, Rao's, Carbone, I Sodi, Lilia

-- 7. Your coworker Trey can't remember the exact name of a restuart he went to but he knows it contains the word meatball in it. Can you find it for him using a query?
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';
-- The Meatball Shop

-- 8. Let's order delivery to the house! Find all the close by spots in Midtown, Downtown, or Chinatown.
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
  OR neighborhood = 'Downtown'
  OR neighborhood = 'Chinatown';
-- Jongro BBQ in Midtown, Pocha 32 in Midtown, Nom Wah Tea Parlor in Chinatown, Buddha Bodai in Chinatown, Mission Chinese Food in Downtown, ...

-- 9. Find all the health grade pending restaurants (empty values).
SELECT *
FROM nomnom
WHERE health IS NULL;
-- Massawa, Wo Hop, Jacob's Pickles, Lighthouse, Los Hermanos

-- 10. Create a Top 10 Restaurants Ranking based on reviews.
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;
-- Bunna Cafe = 4.6, Russ & Daughters = 4.6, Lighthouse = 4.6, Jongro BBQ = 4.5, Dan and John's Wings = 4.5, ...

-- 11. Use a CASE statement to change the rating system to review > 4.5 is Extraordinary, review > 4 is Excellent, review > 3 is Good, review > 2 is Fair, and everything else is Poor. Don't forget to rename the new column!
select name,
  case
    when review > 4.5 then 'Extraordinary'
    when review > 4 then 'Excellent'
    when review > 3 then 'Good'
    when review > 2 then 'Fair'
    else 'Poor'
  end as 'rating'
from nomnom;
-- Peter Luger Steak House = Excellent, Jongro BBQ = Excellent, Pocha 32 = Good, Nom Wah Tea Parlor = Excellent, Roberta's = Excellent, ...