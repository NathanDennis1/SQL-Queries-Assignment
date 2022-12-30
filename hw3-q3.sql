WITH cities AS (SELECT f2.origin_city as city, count(c.cit) as ct -- Count for num actual time < 180 as ct.
FROM (Select distinct f5.origin_city as origin_city
FROM flights as f5) as f2
LEFT JOIN (select f3.origin_city as cit
FROM flights as f3
WHERE f3.actual_time < 180 AND f3.canceled != 1) as c
ON f2.origin_city = c.cit
GROUP BY f2.origin_city)

SELECT f.origin_city as origin_city, c.ct * 100.0/ count(f.origin_city) as percentage
FROM flights as f, cities as c
WHERE f.origin_city = c.city AND f.canceled != 1
GROUP BY f.origin_city, c.ct
ORDER BY percentage, origin_city;


-- 327 Rows
-- 15 seconds

/*
Guam TT 0.000000000000
Pago Pago TT 0.000000000000
Aguadilla PR 28.897338403041
Anchorage AK 31.812080536912
San Juan PR 33.660531697341
Charlotte Amalie VI 39.558823529411
Ponce PR 40.983606557377
Fairbanks AK 50.116550116550
Kahului HI 53.514471352628
Honolulu HI 54.739028823682
San Francisco CA 55.828864537188
Los Angeles CA 56.080890822987
Seattle WA 57.609387792231
Long Beach CA 62.176439513998
New York NY 62.371834136728
Kona HI 63.160792951541
Las Vegas NV 64.920256372037
Christiansted VI 65.100671140939
Newark NJ 65.849971096980
Plattsburgh NY 66.666666666666
*/