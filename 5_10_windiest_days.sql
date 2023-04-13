SELECT t.pickup_date, COUNT(*) AS frequency, AVG(w.wind) AS avg_wind
FROM (
  SELECT date(pickup_datetime) AS pickup_date
  FROM UBER_TRIPS
  WHERE pickup_datetime BETWEEN '2014-01-01' AND '2014-12-31'
  UNION ALL
  SELECT date(pickup_datetime) AS pickup_date
  FROM TAXI_TRIPS
  WHERE pickup_datetime BETWEEN '2014-01-01' AND '2014-12-31'
) t
JOIN DAILY_WEATHER w
ON t.pickup_date = date(w.year || '-' || w.month || '-' || w.day)
GROUP BY t.pickup_date
ORDER BY avg_wind DESC
LIMIT 10;