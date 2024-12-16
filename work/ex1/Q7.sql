SELECT
  *
FROM
  actor
WHERE
  first_name IN ('Angela', 'Angelina', 'Audrey');

-- Result:
--  actor_id | first_name |  last_name  |      last_update
-- ----------+------------+-------------+------------------------
--        34 | Audrey     | Olivier     | 2013-05-26 14:47:57.62
--        65 | Angela     | Hudson      | 2013-05-26 14:47:57.62
--        76 | Angelina   | Astaire     | 2013-05-26 14:47:57.62
--       144 | Angela     | Witherspoon | 2013-05-26 14:47:57.62
--       190 | Audrey     | Bailey      | 2013-05-26 14:47:57.62
-- (5 rows)
