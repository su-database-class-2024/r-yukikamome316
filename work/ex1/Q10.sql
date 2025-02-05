SELECT
  country_id,
  COUNT(*) AS count
FROM
  city
GROUP BY
  country_id
ORDER BY
  count DESC;

-- Result:
--  country_id | count
-- ------------+-------
--          44 |    60
--          23 |    53
--         103 |    35
--          50 |    31
--          60 |    30
--          15 |    28
--          80 |    28
--          75 |    20
--          97 |    15
--          45 |    14
--          69 |    13
--           6 |    13
--          85 |    11
--          92 |    10
--          76 |     8
--         102 |     8
--          46 |     8
--         104 |     7
--          38 |     7
--          49 |     7
--          20 |     7
--         105 |     6
--          24 |     6
--          29 |     6
--         100 |     6
--          72 |     5
--          87 |     5
--          67 |     5
--          86 |     5
--          82 |     5
--          48 |     4
--          74 |     4
--          34 |     4
--         107 |     4
--           2 |     3
--          22 |     3
--          73 |     3
--          94 |     3
--          91 |     3
--          93 |     3
--          27 |     3
--         101 |     3
--          12 |     3
--          63 |     3
--          59 |     3
--           9 |     3
--          28 |     3
--          62 |     3
--          52 |     2
--          18 |     2
--          64 |     2
--          54 |     2
--          71 |     2
--           4 |     2
--          51 |     2
--          10 |     2
--          39 |     2
--          89 |     2
--          36 |     2
--          14 |     2
--         108 |     2
--          13 |     2
--          78 |     2
--          19 |     2
--          77 |     2
--          25 |     2
--          17 |     2
--          66 |     1
--          31 |     1
--          42 |     1
--          99 |     1
--          88 |     1
--          84 |     1
--          41 |     1
--          40 |     1
--          35 |     1
--          43 |     1
--          32 |     1
--          53 |     1
--           7 |     1
--          90 |     1
--          83 |     1
--          33 |     1
--          70 |     1
--          79 |     1
--          26 |     1
--          96 |     1
--          68 |     1
--           8 |     1
--          58 |     1
--          95 |     1
--           3 |     1
--          57 |     1
--          56 |     1
--          81 |     1
--          61 |     1
--          37 |     1
--           5 |     1
--           1 |     1
--          55 |     1
--          30 |     1
--          21 |     1
--         106 |     1
--          47 |     1
--          16 |     1
--          65 |     1
--          98 |     1
--         109 |     1
--          11 |     1
-- (109 rows)
