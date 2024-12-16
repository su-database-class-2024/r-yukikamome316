SELECT
  *
FROM
  store
  JOIN address ON store.address_id = address.address_id;

-- Result:
--  store_id | manager_staff_id | address_id |     last_update     | address_id |      address       | address2 | district | city_id | postal_code | phone |     last_update
-- ----------+------------------+------------+---------------------+------------+--------------------+----------+----------+---------+-------------+-------+---------------------
--         1 |                1 |          1 | 2006-02-15 09:57:12 |          1 | 47 MySakila Drive  |          | Alberta  |     300 |             |       | 2006-02-15 09:45:30
--         2 |                2 |          2 | 2006-02-15 09:57:12 |          2 | 28 MySQL Boulevard |          | QLD      |     576 |             |       | 2006-02-15 09:45:30
