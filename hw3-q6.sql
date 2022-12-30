select distinct c.name as carrier
FROM carriers as c, flights as f
WHERE f.carrier_id = c.cid AND
f.origin_city IN (select f2.origin_city from flights as f2
WHERE f2.dest_city = 'San Francisco CA' AND f2.origin_city = 'Seattle WA' AND
f.carrier_id = f2.carrier_id)
ORDER BY c.name;


-- 4 Rows
-- 15 seconds

-- Top 20 Rows
/* 
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/