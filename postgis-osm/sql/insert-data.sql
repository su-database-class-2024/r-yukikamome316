INSERT INTO test_table (gid, geom)
VALUES (1, ST_GeomFromText('POINT(135 35)', 4612))
ON CONFLICT (gid) DO UPDATE
SET geom = EXCLUDED.geom;
