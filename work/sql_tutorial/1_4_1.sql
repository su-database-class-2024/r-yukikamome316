SELECT version();
SELECT current_date;
SELECT 2 + 2;

-- $ psql -U postgres mydb -f ./sql_tutorial/1_4_1.sql 
--                                                            version                                                           
-- -----------------------------------------------------------------------------------------------------------------------------
--  PostgreSQL 14.1 (Debian 14.1-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
-- (1 row)

--  current_date 
-- --------------
--  2024-12-05
-- (1 row)

--  ?column? 
-- ----------
--         4
-- (1 row)
