
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
        pickup_datetime TEXT,
        dropoff_datetime TEXT,
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
        pickup_datetime TEXT,
        pickup_longitude REAL,
        pickup_latitude REAL,
        dropoff_longitude REAL,
        dropoff_latitude REAL,
        fare_amount REAL,
        distance REAL,
        passenger_count INTEGER,
    );
