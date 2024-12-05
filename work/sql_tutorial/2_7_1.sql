SELECT max(temp_lo) FROM weather;

--  max
-- -----
--   46
-- (1 row)

-- syntax error:
-- SELECT city FROM weather WHERE temp_lo = max(temp_lo);     間違い

SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city;

--      city      | max
-- ---------------+-----
--  Hayward       |  37
--  San Francisco |  46
-- (2 rows)

SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;

--   city   | max
-- ---------+-----
--  Hayward |  37
-- (1 row)

SELECT city, max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'            -- (1)
    GROUP BY city
    HAVING max(temp_lo) < 40;

--  city | max 
-- ------+-----
-- (0 rows)
