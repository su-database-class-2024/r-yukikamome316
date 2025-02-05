SELECT
  city
FROM
  city
  LEFT JOIN address ON city.city_id = address.city_id
WHERE
  address.city_id IS NULL;

-- Result:
--   city
-- --------
--  London
-- (1 row)
