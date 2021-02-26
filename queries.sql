SELECT COUNT (*)
FROM part_nyc
WHERE on_hand > 70;

SELECT COUNT(part_sfo.on_hand)
FROM part_sfo, part_nyc, color
WHERE part_sfo.on_hand = part_nyc.on_hand AND part_sfo.color = part_nyc.color AND part_sfo.color = color.color_id AND color_name = 'Red';

SELECT supplier_name
FROM supplier 
WHERE (SELECT SUM(part_nyc.on_hand) FROM part_nyc WHERE part_nyc.supplier = supplier.supplier_id) > (SELECT SUM(part_sfo.on_hand) FROM part_sfo WHERE part_sfo.supplier = supplier.supplier_id); 

SELECT supplier_name
FROM supplier, part_nyc
WHERE supplier.supplier_id = part_nyc.supplier
EXCEPT
SELECT supplier_name
FROM supplier, part_sfo
WHERE supplier.supplier_id = part_sfo.supplier;

UPDATE part_nyc
SET on_hand = -10;

DELETE FROM part_nyc
WHERE on_hand < 30

