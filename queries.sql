SELECT COUNT (*)
FROM part_nyc
WHERE on_hand > 70;

SELECT COUNT(part_sfo.on_hand)
FROM part_sfo, part_nyc, color
WHERE part_sfo.on_hand = part_nyc.on_hand AND part_sfo.color = part_nyc.color AND part_sfo.color = color.color_id AND color_name = 'Red';
