SELECT * FROM myview;

-- Result:
-- mydb=# \i ./sql_tutorial/3_2_2.sql
--      name      | temp_lo | temp_hi | prcp |    date    | location
-- ---------------+---------+---------+------+------------+-----------
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27 | (-194,53)
--  San Francisco |      43 |      57 |    0 | 1994-11-29 | (-194,53)
--  San Francisco |      37 |      54 |      | 1994-11-29 | (-194,53)
-- (3 rows)
