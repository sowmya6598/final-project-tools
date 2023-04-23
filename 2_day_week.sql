SELECT 
    CASE strftime('%w', pickup_time)
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS day_of_week, 
    COUNT(*) AS frequency
FROM UBER_TRIPS
WHERE pickup_time BETWEEN '2009-01-01 00:00:00 UTC' AND '2015-06-30 23:59:59 UTC'
GROUP BY 
    CASE strftime('%w', pickup_time)
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END
ORDER BY CAST(strftime('%w', pickup_time) AS INTEGER);