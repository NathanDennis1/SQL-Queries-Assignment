WITH sea AS (select distinct f1.dest_city as dest
from flights as f1
WHERE f1.origin_city = 'Seattle WA')
select distinct f2.dest_city as city
from flights as f2, sea as s
WHERE s.dest = f2.origin_city
AND f2.dest_city != 'Seattle WA' AND f2.dest_city NOT IN
(select * from sea)
ORDER BY f2.dest_city;

-- 256 Rows
-- 3 seconds

-- Top 20 Rows
/* 
Aberdeen SD
Abilene TX
Adak Island AK
Aguadilla PR
Akron OH
Albany GA
Albany NY
Alexandria LA
Allentown/Bethlehem/Easton PA
Alpena MI
Amarillo TX
Appleton WI
Arcata/Eureka CA
Asheville NC
Ashland WV
Aspen CO
Atlantic City NJ
Augusta GA
Bakersfield CA
Bangor ME
*/
