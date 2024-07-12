SELECT * FROM assignment.article;

-- 1. Write an SQL statement to select all articles with their author’s email.
SELECT email FROM user
join article 
on user.id = article.user_id; 

-- 2. Write another SQL statement to select articles from 7th to 12th sorted by id.
select * from article 
order by id
limit 6,6;