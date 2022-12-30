select distinct c.name as carrier
FROM carriers as c, flights as f
WHERE f.carrier_id = c.cid AND
f.origin_city = 'Seattle WA' AND f.dest_city = 'San Francisco CA'
ORDER BY c.name;

-- 4 Rows
-- 7 seconds
/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
/*