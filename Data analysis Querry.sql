select * FROM movies;

SELECT distinct(industry) FROM movies ;

SELECT count(*) FROM movies where industry = 'Hollywood';

SELECT * FROM movies where title like '%america%';

SELECT* FROM movies WHERE studio like "";

SELECT* FROM movies WHERE imdb_rating>= 9;

SELECT* FROM movies WHERE imdb_rating between 6 and 8;

select * FROM movies WHERE release_year = 2022 or release_year = 2018 or release_year = 2019;

select * FROM movies WHERE release_year in (2022 , 2018 ,2019);

select * FROM movies WHERE studio in ('Marvel Studios', 'Zee Studios');

select * from movies where imdb_rating is not null;

select * From movies where industry = "Hollywood" 
order by imdb_rating desc limit 5;

select * From movies where industry = "Hollywood" 
order by imdb_rating desc limit 5 offset 1;

SELECT max(imdb_rating) FROM movies where industry = "Bollywood";

SELECT round(avg(imdb_rating),2) FROM movies where studio = "Marvel Studios" ;

SELECT max(imdb_rating) as Max , min(imdb_rating) as Min,avg(imdb_rating) as Avg FROM movies ;

SELECT industry , count(*) FROM movies group by industry;

SELECT studio , count(*) AS CNT FROM movies group by STUDIO order by CNT DESC;


SELECT release_year , count(*) as movies_count FROM MOVIES 
group by release_year 
having movies_count > 2
order by movies_count desc ;


SELECT * , (revenue-budget) as profits from financials;

SELECT * ,  
case 
when unit = "Billions" then revenue * 1000
when unit = "thousand" then revenue /1000
else revenue
end
as revenue_mln from financials;