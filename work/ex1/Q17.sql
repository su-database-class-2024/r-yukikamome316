SELECT
  category.name,
  AVG(
    DATE_PART ('day', rental.return_date - rental.rental_date)
  ) AS average_rental_days
FROM
  payment
  LEFT JOIN rental ON payment.rental_id = rental.rental_id
  LEFT JOIN inventory ON rental.inventory_id = inventory.inventory_id
  LEFT JOIN film_category ON inventory.film_id = film_category.film_id
  LEFT JOIN category ON film_category.category_id = category.category_id
GROUP BY
  category.name
ORDER BY
  average_rental_days DESC;

-- Result:
--     name     | average_rental_days
-- -------------+---------------------
--  Sports      |   4.717636022514071
--  Comedy      |   4.707838479809976
--  Games       |   4.691954022988506
--  Sci-Fi      |   4.582828282828283
--  Music       |   4.576454668470906
--  Family      |   4.567179487179487
--  Documentary |   4.552688172043011
--  Horror      |   4.549277266754271
--  New         |    4.54406580493537
--  Foreign     |   4.505307855626327
--  Action      |   4.493975903614458
--  Classics    |   4.492361927144536
--  Animation   |   4.413793103448276
--  Children    |                 4.4
--  Drama       |   4.372093023255814
--  Travel      |   4.362913907284768
-- (16 rows)
