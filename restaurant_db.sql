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
