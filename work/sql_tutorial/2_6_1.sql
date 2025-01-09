SELECT * FROM weather JOIN cities ON city = name;

--      city      | temp_lo | temp_hi | prcp |    date    |     name      | location
-- ---------------+---------+---------+------+------------+---------------+-----------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,53)
--  San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,53)
-- (2 rows)

SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather JOIN cities ON city = name;

-- explicit join
SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather JOIN cities ON weather.city = cities.name;

-- SQL-92 syntax
SELECT *
    FROM weather, cities
    WHERE city = name;

SELECT *
    FROM weather LEFT OUTER JOIN cities ON weather.city = cities.name;

--      city      | temp_lo | temp_hi | prcp |    date    |     name      | location
-- ---------------+---------+---------+------+------------+---------------+-----------
--  Hayward       |      37 |      54 |      | 1994-11-29 |               |
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,53)
--  San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,53)
-- (3 rows)

SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
       w2.city, w2.temp_lo AS low, w2.temp_hi AS high
    FROM weather w1 JOIN weather w2
        ON w1.temp_lo < w2.temp_lo AND w1.temp_hi > w2.temp_hi;

-- e.g.) 43 < 46 and 50 < 57
--      city      | low | high |     city      | low | high
-- ---------------+-----+------+---------------+-----+------
--  San Francisco |  43 |   57 | San Francisco |  46 |   50
--  Hayward       |  37 |   54 | San Francisco |  46 |   50
-- (2 rows)

SELECT *
    FROM weather w JOIN cities c ON w.city = c.name;

--      city      | temp_lo | temp_hi | prcp |    date    |     name      | location  
-- ---------------+---------+---------+------+------------+---------------+-----------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,53)
--  San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,53)
-- (2 rows)
