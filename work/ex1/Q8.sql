SELECT
  *
FROM
  city
ORDER BY
  country_id ASC
LIMIT
  10;

-- Result:
--  city_id |      city       | country_id |     last_update
-- ---------+-----------------+------------+---------------------
--      251 | Kabul           |          1 | 2006-02-15 09:45:25
--       59 | Batna           |          2 | 2006-02-15 09:45:25
--       63 | Bchar           |          2 | 2006-02-15 09:45:25
--      483 | Skikda          |          2 | 2006-02-15 09:45:25
--      516 | Tafuna          |          3 | 2006-02-15 09:45:25
--       67 | Benguela        |          4 | 2006-02-15 09:45:25
--      360 | Namibe          |          4 | 2006-02-15 09:45:25
--      493 | South Hill      |          5 | 2006-02-15 09:45:25
--       20 | Almirante Brown |          6 | 2006-02-15 09:45:25
--       43 | Avellaneda      |          6 | 2006-02-15 09:45:25
-- (10 rows)
