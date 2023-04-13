SELECT strftime('%w', pickup_datetime) AS day_of_week, COUNT(*) AS frequency
FROM UBER_TRIPS
WHERE pickup_datetime BETWEEN '2009-01-01 00:00:00 UTC' AND '2015-06-30 23:59:59 UTC'
GROUP BY day_of_week
ORDER BY day_of_week;