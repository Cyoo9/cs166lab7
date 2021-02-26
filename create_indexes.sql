CREATE INDEX part_nyc_number_index
ON part_nyc
[USING BTREE]
(part_number)

CREATE INDEX part_sfo_number_index
on part_sfo
[USING BTREE]
(part_number)
