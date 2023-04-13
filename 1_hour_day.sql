SELECT strftime('%H', pickup_datetime) AS hour, COUNT(*) AS frequency
FROM TAXI_TRIPS
WHERE datetime_column BETWEEN '2009-01-01 00:00:00 UTC' AND '2015-06-30 23:59:59 UTC'
GROUP BY hour
ORDER BY hour;