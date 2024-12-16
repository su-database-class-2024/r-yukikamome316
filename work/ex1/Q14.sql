SELECT
  store_id,
  address,
  city
FROM
  store
  JOIN address ON store.address_id = address.address_id
  JOIN city ON address.city_id = city.city_id;

-- Result:
--  store_id |      address       |    city
-- ----------+--------------------+------------
--         1 | 47 MySakila Drive  | Lethbridge
--         2 | 28 MySQL Boulevard | Woodridge
-- (2 rows)
