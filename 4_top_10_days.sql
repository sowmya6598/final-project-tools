SELECT pickup_date, COUNT(*) AS frequency, AVG(distance) AS avg_distance
FROM (
  SELECT date(pickup_datetime) AS pickup_date, distance
  FROM UBER_TRIPS
  WHERE pickup_datetime BETWEEN '2009-01-01' AND '2009-12-31'
  UNION ALL
  SELECT date(pickup_datetime) AS pickup_date, distance
  FROM TAXI_TRIPS
  WHERE pickup_datetime BETWEEN '2009-01-01' AND '2009-12-31'
)
GROUP BY pickup_date
ORDER BY frequency DESC
LIMIT 10;