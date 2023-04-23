
    CREATE TABLE IF NOT EXISTS HOURLY_WEATHER (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        year INTEGER,
        month INTEGER,
        day INTEGER,
        hour INTEGER,
        precipitation REAL,
        wind REAL
);

    CREATE TABLE IF NOT EXISTS DAILY_WEATHER (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        year INTEGER,
        month INTEGER,
        day INTEGER,
        precipitation REAL,
        wind REAL
    );

    CREATE TABLE IF NOT EXISTS TAXI_TRIPS (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        pickup_datetime DATETIME,
        Trip_Dropoff_DateTime DATETIME
        Passenger_Count REAL
        Trip_Distance REAL,
        Start_Lon REAL,
        Start_Lat REAL,
        End_Lon REAL, 
        End_Lat REAL,
        Fare_Amt REAL, 
        Tip_Amt REAL, 
        Total_Amt REAL,
        distance REAL,

    );

    CREATE TABLE IF NOT EXISTS UBER_TRIPS (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fare_amount REAL,
        pickup_longitude REAL,
        pickup_latitude REAL,
        dropoff_longitude REAL,
        dropoff_latitude REAL,
        passenger_count INTEGER,
        pickup_time DATETIME,
        distance REAL,
    );
