WITH hours AS (
    SELECT hour AS hour_of_day
    FROM (
        SELECT 0 AS hour UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION
        SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION
        SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION
        SELECT 18 UNION SELECT 19 UNION SELECT 20 UNION SELECT 21 UNION SELECT 22 UNION SELECT 23
    )
), dates AS (
    SELECT DISTINCT date(pickup_datetime) AS date
    FROM TAXI_TRIPS
    WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-07'
    UNION
    SELECT DISTINCT date(pickup_time) AS date
    FROM UBER_TRIPS
    WHERE pickup_time BETWEEN '2012-10-22' AND '2012-11-07'
), combined AS (
    SELECT date, hour_of_day, HourlyPrecipitation, HourlyWindSpeed, COUNT(t.pickup_datetime) AS taxi_trips, COUNT(u.pickup_time) AS uber_trips
    FROM dates
    CROSS JOIN hours
    LEFT JOIN HOURLY_WEATHER h ON strftime('%Y-%m-%d %H:00:00', h.year || '-' || h.month || '-' || h.day || ' ' || hours.hour_of_day || ':00:00') = datetime(dates.date || ' ' || hours.hour_of_day || ':00:00')
    LEFT JOIN TAXI_TRIPS t ON t.pickup_datetime BETWEEN datetime(dates.date || ' ' || hours.hour_of_day || ':00:00') AND datetime(dates.date || ' ' || hours.hour_of_day || ':59:59')
    LEFT JOIN UBER_TRIPS u ON u.pickup_time BETWEEN datetime(dates.date || ' ' || hours.hour_of_day || ':00:00') AND datetime(dates.date || ' ' || hours.hour_of_day || ':59:59')
    GROUP BY date, hour_of_day, HourlyPrecipitation, HourlyWindSpeed
)
SELECT date, hour_of_day AS hour, HourlyPrecipitation AS hourly_precipitation, HourlyWindSpeed AS hourly_wind_speed, (taxi_trips +uber_trips) as total_trips
FROM combined
ORDER BY date, hour;
