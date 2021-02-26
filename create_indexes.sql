CREATE INDEX part_nyc_on_hand
ON part_nyc
USING BTREE
(on_hand);

CREATE INDEX part_sfo_on_hand
on part_sfo
USING BTREE
(on_hand);

CREATE INDEX part_nyc_color
on part_nyc
USING BTREE
(color);

CREATE INDEX part_sfo_color
on part_sfo
USING BTREE
(color);

CREATE INDEX part_nyc_supplier
on part_nyc
USING BTREE
(supplier);

CREATE INDEX part_sfo_supplier
on part_sfo
USING BTREE
(supplier);

CREATE INDEX color_color_id
on color
USING BTREE
(color_id);

CREATE INDEX supplier_supplier_id
on supplier
USING BTREE
(supplier_id);

CREATE INDEX supplier_supplier_name
on supplier
USING BTREE
(supplier_name);

CREATE INDEX color_color_name
on color
USING BTREE 
(color_name);


