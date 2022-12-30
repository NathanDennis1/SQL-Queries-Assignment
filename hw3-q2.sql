SELECT DISTINCT f.origin_city as city
FROM flights as f
WHERE NOT EXISTS (Select * from flights as f1
WHERE f.origin_city = f1.origin_city AND f1.actual_time >= 180 AND f1.canceled != 1)
ORDER BY f.origin_city;

-- 109 Rows
-- 33 seconds

-- Top 20 rows:
-- Aberdeen SD
-- Abilene TX
-- Alpena MI
-- Ashland WV
-- Augusta GA
-- Barrow AK
-- Beaumont/Port Arthur TX
-- Bemidji MN
-- Bethel AK
-- Binghamton NY
-- Brainerd MN
-- Bristol/Johnson City/Kingsport TN
-- Butte MT
-- Carlsbad CA
-- Casper WY
-- Cedar City UT
-- Chico CA
-- College Station/Bryan TX
-- Columbia MO
-- Columbus GA