WITH x AS (
  SELECT distance FROM UBER_TRIPS WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00 UTC' AND '2013-07-31 00:00:00 UTC'
  UNION 
  SELECT distance FROM TAXI_TRIPS WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00' AND '2013-07-31 00:00:00 UTC'
)
SELECT MAX(distance) AS percentile_value
FROM (
  SELECT distance, NTILE(100) OVER (ORDER BY distance) AS percentile
  FROM x
) t
WHERE percentile >= 95;