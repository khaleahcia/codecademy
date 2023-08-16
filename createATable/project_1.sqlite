/*
Create a Table project for Learn SQL course on Codecademy.

In this project, you will create your own friends table and add/delete data from it!

The instructions provided are a general guideline. Feel free to add more columns, insert more data, and create more tables.

After completing the instructions for each Task below, click the “Save” button to check your progress. If nothing populates in the “Query Results” tab to the right, double-check your work for syntax errors.
*/

-- 1. Create a table named friends with three columns: id that stores INTEGER, name that stores TEXT, and birthday that stores DATE
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE);

-- 2. Beneath your current code, add Ororo Munroe to friends. Her birthday is May 30th, 1940.
insert into friends (id, name, birthday)
values (0, 'Ororo Munroe', '05/30/1940');

-- 3. Let's make sure that Ororo has been added to the database. Check for two things: Is the friends table created? Is Ororo Munroe added to it?
select * from friends;

-- 4. Let's move on! Add two of your friends to the table. Insert an id, name, and birthday for each of them.
insert into friends (id, name, birthday)
values
  (1, 'Harry Potter', '07/31/1980'),
  (2, 'Severus Snape', '01/09/1960');

-- 5. Ororo Munroe just realized that she can control the weather and decided to change her name. Her new name is "Storm". Update her record in friends.
update friends
set name = 'Storm'
where name = 'Ororo Munroe';

-- 6. Add a new column named email.
alter table friends
add column email TEXT;

-- 7. Update the email address for everyone in your table. Storm's email is storm@codecademy.com.
update friends
set email = 'storm@codecademy.com'
where name = 'Storm';

update friends
set email = 'harry.potter@hogwarts.edu'
where name = 'Harry Potter';

update friends
set email = 'severus.snape@hogwarts.edu'
where name = 'Severus Snape';

-- 8. Wait, Storm is fictional... Remove her from friends.
delete from friends
where name = 'Storm';

-- 9. Great job! Let's take a look at the results one last time.
select * from friends;