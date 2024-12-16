SELECT
  country_id,
  COUNT(*) as city_count
FROM
  city
GROUP BY
  country_id
HAVING
  COUNT(*) >= 20;

-- Result:
--  country_id | city_count
-- ------------+------------
--          23 |         53
--          80 |         28
--          50 |         31
--          60 |         30
--          75 |         20
--         103 |         35
--          44 |         60
--          15 |         28
-- (8 rows)
