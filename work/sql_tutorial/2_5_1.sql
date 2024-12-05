SELECT * FROM weather;

--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      43 |      57 |    0 | 1994-11-29
--  Hayward       |      37 |      54 |      | 1994-11-29
-- (3 rows)

SELECT city, temp_lo, temp_hi, prcp, date FROM weather;

--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      43 |      57 |    0 | 1994-11-29
--  Hayward       |      37 |      54 |      | 1994-11-29
-- (3 rows)

SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;

--      city      | temp_avg |    date    
-- ---------------+----------+------------
--  San Francisco |       48 | 1994-11-27
--  San Francisco |       50 | 1994-11-29
--  Hayward       |       45 | 1994-11-29
-- (3 rows)

SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;

--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
-- (1 row)

SELECT * FROM weather
    ORDER BY city;

--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  Hayward       |      37 |      54 |      | 1994-11-29
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      43 |      57 |    0 | 1994-11-29
-- (3 rows)

SELECT * FROM weather
    ORDER BY city, temp_lo;

--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  Hayward       |      37 |      54 |      | 1994-11-29
--  San Francisco |      43 |      57 |    0 | 1994-11-29
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
-- (3 rows)

SELECT DISTINCT city
    FROM weather;

--      city      
-- ---------------
--  Hayward
--  San Francisco
-- (2 rows)

SELECT DISTINCT city
    FROM weather
    ORDER BY city;

--      city      
-- ---------------
--  Hayward
--  San Francisco
-- (2 rows)
