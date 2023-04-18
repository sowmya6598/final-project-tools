
    CREATE TABLE HOURLY_WEATHER (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        year INTEGER,
        month INTEGER,
        day INTEGER,
        hour INTEGER,
        precipitation REAL,
        wind REAL
);

    CREATE TABLE DAILY_WEATHER (
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
        pickup_longitude REAL,
        pickup_latitude REAL,
        dropoff_longitude REAL,
        dropoff_latitude REAL,
        fare_amount REAL,
        distance REAL,
        passenger_count INTEGER,
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
