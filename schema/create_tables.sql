CREATE TABLE drivers (
driver_id INT PRIMARY KEY,
driver_name VARCHAR(50),
city VARCHAR(50),
join_date DATE,
rating DECIMAL(2,1)
);

CREATE TABLE riders (
rider_id INT PRIMARY KEY,
rider_name VARCHAR(50),
signup_date DATE,
city VARCHAR(50)
);

CREATE TABLE rides (
ride_id INT PRIMARY KEY,
rider_id INT,
driver_id INT,
ride_date TIMESTAMP,
pickup_location VARCHAR(50),
drop_location VARCHAR(50),
distance_km DECIMAL(5,2),
fare DECIMAL(6,2),
ride_status VARCHAR(20),
payment_method VARCHAR(20)
);