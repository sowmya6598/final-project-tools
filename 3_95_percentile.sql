SELECT PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY distance) AS percentile_95
FROM (
  SELECT distance FROM UBER_TRIPS WHERE final_uber_data BETWEEN '2013-07-01' AND '2013-07-31'
  UNION ALL
  SELECT distance FROM TAXI_TRIPS WHERE final_uber_data BETWEEN '2013-07-01' AND '2013-07-31'
);