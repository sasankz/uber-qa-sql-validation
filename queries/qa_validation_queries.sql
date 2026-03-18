--QA Data Validation Queries
-- Project: Uber Ride Marketplace Testing

-- Test: Cancelled rides should not have fare

SELECT ride_id, ride_status, fare
FROM rides
WHERE ride_status LIKE 'cancelled%'
AND fare > 0;

-- Test: rides referencing non-existent drivers

SELECT r.ride_id, r.driver_id
FROM rides r
LEFT JOIN drivers d
ON r.driver_id = d.driver_id
WHERE d.driver_id IS NULL;

-- Test: invalid ride distance

SELECT ride_id, distance_km
FROM rides
WHERE distance_km <= 0;

-- Test: invalid driver ratings

SELECT driver_id, rating
FROM drivers
WHERE rating < 1 OR rating > 5;

-- Test: duplicate ride IDs

SELECT ride_id, COUNT(*)
FROM rides
GROUP BY ride_id
HAVING COUNT(*) > 1;

-- Test: invalid payment method

SELECT ride_id, payment_method
FROM rides
WHERE payment_method NOT IN ('Cash','Card','UPI');

-- Test: future ride timestamps

SELECT ride_id, ride_date
FROM rides
WHERE ride_date > CURRENT_TIMESTAMP;

-- Test: completed rides missing fare

SELECT ride_id
FROM rides
WHERE ride_status = 'completed'
AND fare IS NULL;

-- Test: invalid driver join date

SELECT driver_id, join_date
FROM drivers
WHERE join_date > CURRENT_DATE;

-- Test: rides referencing non-existent riders

SELECT r.ride_id, r.rider_id
FROM rides r
LEFT JOIN riders u
ON r.rider_id = u.rider_id
WHERE u.rider_id IS NULL;