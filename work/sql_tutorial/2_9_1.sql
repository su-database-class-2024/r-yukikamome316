DELETE FROM weather WHERE city = 'Hayward';

SELECT * FROM weather;

-- syntax:
-- DELETE FROM tablename;

-- result:
-- mydb=# \i sql_tutorial/2_9_1.sql 
-- DELETE 1
--      city      | temp_lo | temp_hi | prcp |    date    
-- ---------------+---------+---------+------+------------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      41 |      55 |    0 | 1994-11-29
-- (2 rows)
