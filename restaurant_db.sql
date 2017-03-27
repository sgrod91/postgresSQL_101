CREATE TABLE restaurant (
  id serial PRIMARY KEY,
  name varchar,
  distance integer,
  stars integer,
  category varchar,
  favorite_dish varchar,
  does_takeout boolean,
  last_time_you_ate_there date
);

insert into restaurant values
  (default, 'Taste of Thai', 214, 5, 'Thai', 'Massaman Curry', TRUE, '2017-01-27'),
  (default, 'Monterrey', 15, 4, 'Mexican', 'Chorri Pollo', TRUE, '2017-01-03'),
  (default, 'Fox Bros.', 9, 5, 'BBQ', 'Fox Bros. Burger', TRUE, '2017-03-15'),
  (default, 'Mary Mac''s Tea Room', 13, 5, 'Southern', 'Chicken Pot Pie', TRUE, '2017-02-02'),
  (default, 'Peking Garden', 70, 4, 'Chinese', 'Sizzling Rice Soup', TRUE, '2016-11-15'),
  (default, 'Roxx Tavern', 16, 4, 'American', 'Black Angus Burger', TRUE, '2017-03-02'),
  (default, 'The Collenade', 16, 4, 'Southern', 'Chicken Tender Salad', TRUE, '2017-03-25'),
  (default, 'Gu''s Dumplings', 10, 4, 'Chinese', 'Chicken Fried Rice', TRUE, '2017-03-26'),
  (default, 'Community', 6, 4, 'BBQ', 'Brisket Sandwich', TRUE, '2017-02-27');

--list restaurants by closest distance--
select * from restaurant order by distance;

--list top 2 restaurants by distance--
select * from restaurant order by distance limit 2;

--list top 2 restaurants by stars--
select * from restaurant order by stars limit 2;

--list the top two restaurants where the distance is less than 2 miles
select * from restaurant where distance <= 2 order by stars desc limit 2;

--count the number of restaurants--
select count(*) from restaurant;

--count the number of restaurants by category--
select category, count(*) from restaurant group by category;

--get avg stars per restaurant by category--
  select category,
  	avg(stars) as total_stars
  from restaurant group by category;

--get max stars per restaurant by category--
  select category,
  	max(stars) as total_stars
  from restaurant group by category;
