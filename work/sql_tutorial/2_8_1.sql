UPDATE weather
    SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
    WHERE date > '1994-11-28';

-- $ psql -U postgres mydb -f sql_tutorial/2_8_1.sql 
-- UPDATE 2
-- $ psql -U postgres mydb
-- psql (14.1 (Debian 14.1-1.pgdg110+1))
-- Type "help" for help.

-- mydb=# SELECT * FROM weather;
--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      41 |      55 |    0 | 1994-11-29
--  Hayward       |      35 |      52 |      | 1994-11-29
-- (3 rows)
