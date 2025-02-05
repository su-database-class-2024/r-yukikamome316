INSERT INTO weather VALUES ('Berkeley', 45, 53, 0.0, '1994-11-28');

-- Result:
-- mydb=# \i ./sql_tutorial/3_3_2.sql
-- psql:./sql_tutorial/3_3_2.sql:1: ERROR:  insert or update on table "weather" violates foreign key constraint "weather_city_fkey"
-- DETAIL:  Key (city)=(Berkeley) is not present in table "cities".
