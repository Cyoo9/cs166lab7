CREATE INDEX part_nyc_color
on part_nyc
USING BTREE
(color);

CREATE INDEX part_sfo_color
on part_sfo
USING BTREE
(color);


CREATE INDEX color_color_id
on color
USING BTREE
(color_id);


CREATE INDEX supplier_supplier_name
on supplier
USING BTREE
(supplier_name);







