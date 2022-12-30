WITH sea AS (select distinct f1.dest_city as dest
from flights as f1
WHERE f1.origin_city = 'Seattle WA')
SELECT DISTINCT f3.dest_city as city
FROM flights as f3
WHERE f3.dest_city NOT IN (select dest from sea) 
AND f3.dest_city NOT IN (select distinct f2.dest_city as city
from flights as f2, sea as s
WHERE s.dest = f2.origin_city
AND f2.dest_city != 'Seattle WA') AND f3.dest_city != 'Seattle WA'
ORDER BY f3.dest_city;

-- 3 Rows
-- 10 seconds

-- Top 3 rows:
/*
Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL
*/