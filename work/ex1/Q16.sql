SELECT
  category.name,
  COUNT(*) AS rental_count,
  SUM(payment.amount) AS total_sales
FROM
  payment
  LEFT JOIN rental ON payment.rental_id = rental.rental_id
  LEFT JOIN inventory ON rental.inventory_id = inventory.inventory_id
  LEFT JOIN film_category ON inventory.film_id = film_category.film_id
  LEFT JOIN category ON film_category.category_id = category.category_id
GROUP BY
  category.name
ORDER BY
  total_sales DESC;

-- Result:
--     name     | rental_count | total_sales
-- -------------+--------------+-------------
--  Sports      |         1081 |     4892.19
--  Sci-Fi      |          998 |     4336.01
--  Animation   |         1065 |     4245.31
--  Drama       |          953 |     4118.46
--  Comedy      |          851 |     4002.48
--  New         |          864 |     3966.38
--  Action      |         1013 |     3951.84
--  Foreign     |          953 |     3934.47
--  Games       |          884 |     3922.18
--  Family      |          988 |     3830.15
--  Documentary |          937 |     3749.65
--  Horror      |          773 |     3401.27
--  Classics    |          860 |     3353.38
--  Children    |          861 |     3309.39
--  Travel      |          765 |     3227.36
--  Music       |          750 |     3071.52
-- (16 rows)
