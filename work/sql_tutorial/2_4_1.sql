INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

-- change the order of the columns
INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);

-- COPY weather FROM '/home/user/weather.txt';

-- result:
-- mydb=# \d
--  public | cities  | table | postgres
--  public | weather | table | postgres

-- mydb=# SELECT * FROM cities;
--  San Francisco | (-194,53)

-- mydb=# SELECT * FROM weather;
--  San Francisco |      46 |      50 | 0.25 | 1994-11-27
--  San Francisco |      43 |      57 |    0 | 1994-11-29
--  Hayward       |      37 |      54 |      | 1994-11-29
