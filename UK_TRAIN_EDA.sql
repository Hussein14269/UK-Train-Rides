SELECT *
FROM railway
LIMIT 5;
-- identify the most popular routes
SELECT departure_station, arrival_destination,COUNT(*) AS total_tickets 
FROM railway
group by departure_station, arrival_destination
order by total_tickets DESC
LIMIT 5;

--Determine peak travel times
SELECT departure_time,arrival_time, COUNT(*)AS total_tickets
FROM railway
group by departure_time,arrival_time
order by total_tickets DESC
LIMIT 5;

--Analyze reveune from different ticket types & classes
SELECT ticket_class, ticket_type, SUM(price) AS total_revenue
FROM railway
GROUP BY ticket_class, ticket_type
ORDER BY total_revenue DESC;

--Diagnose on-time performance and contributing factors
SELECT journey_status, reason_for_delay, COUNT(*) AS total_travels
FROM railway
GROUP BY journey_status, reason_for_delay
ORDER BY total_travels DESC;












