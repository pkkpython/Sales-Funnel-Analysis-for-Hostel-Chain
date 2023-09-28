-- Calculate the total number of website/app visitors during the admission season.

SELECT COUNT(*) AS total_visitors
FROM lead_visit_table;

-- Distinct website visitors
SELECT COUNT(DISTINCT lead_id) AS total_visitors
FROM lead_visit_table;

--  Calculate the number of visitors who expressed interest (substatus_id 1)

SELECT  substatus_id, count(lead_id) AS interested_visitors
FROM lead_visit_table
GROUP BY substatus_id
HAVING substatus_id = 1;

SELECT COUNT(DISTINCT lead_id) AS interested_visitors
FROM lead_visit_table
WHERE substatus_id = 1;


SELECT  substatus_id, count(lead_id) AS visitors_by_status
FROM lead_visit_table
GROUP BY substatus_id;

SELECT COUNT(*) FROM lead_visit_table;


SELECT * FROM lead_visit_table
limit 20;



SELECT DISTINCT status FROM status_table;

-- Display the CITY names along with the count of hostels in each city. Include cities with zero hostels as well.

SELECT c.CITY, COUNT(h.hostel_id) AS hostel_count
FROM city_table c
LEFT JOIN hostel_table h ON c.city_id = h.city_id
GROUP BY c.CITY;


    
-- Calculate the average number of leads per hostel.

SELECT AVG(leads_per_hostel) AS average_leads_per_hostel
FROM (
    SELECT h.hostel_id, COUNT(lv.lead_id) AS leads_per_hostel
    FROM hostel_table h
    LEFT JOIN lead_visit_table lv ON h.hostel_id = lv.hostel_id
    GROUP BY h.hostel_id
) AS leadperhotel;


-- Average leads per hotel using distinct count

SELECT AVG(leads_per_hostel) AS average_leads_per_hostel
FROM (
    SELECT h.hostel_id, COUNT(DISTINCT lv.lead_id) AS leads_per_hostel
    FROM hostel_table h
    LEFT JOIN lead_visit_table lv ON h.hostel_id = lv.hostel_id
    GROUP BY h.hostel_id
) AS leadperhotel;


-- Find the lead with the earliest created_at timestamp from the lead_visit_table.

-- To find the lead with the earliest created_at timestamp from the lead_visit_table, you can use the following SQL query:


SELECT *
FROM lead_visit_table
ORDER BY created_at 
LIMIT 1;

-- pre verified
-- Verifed
-- connected
-- Visited
-- Agreement
-- onboarded

-- Identify the top 3 cities with the highest number of leads that have visited a hostel:
SELECT city_name, COUNT(*) AS num_leads_visited_hostel
FROM lead_visit_table
JOIN city_table ON lead_visit_table.city_id = city_table.city_id
WHERE hostel_id IS NOT NULL
GROUP BY city_name
ORDER BY num_leads_visited_hostel DESC
LIMIT 3;



SELECT  COUNT(*) 
FROM status_table
WHERE status = 'pre verified';

SELECT  (SELECT  COUNT(*) 
FROM status_table
WHERE status = 'Verifed')* 100 AS pre_verified_to_verified
FROM status_table
WHERE status = 'pre verified';

SELECT  COUNT(*) 
FROM status_table
WHERE status = 'Verifed';

SELECT
    (COUNT(*) / (SELECT COUNT(*) FROM status_table WHERE status = 'Verifed')) * 100 AS pre_verified_to_verified
FROM status_table
WHERE status = 'pre verified';


SELECT
    COUNT(*) / (SELECT COUNT(*) FROM status_table 
    WHERE status = 'Verifed')
FROM status_table
WHERE status = 'pre verified';




select * from lead_visit_table;
SELECT * FROM status_table;
SELECT * FROM city_table;
SELECT * FROM hostel_table;
SELECT * FROM status_table;

WITH countstatus as 
(SELECT  status, count(lead_id) AS lead_count
FROM lead_visit_table l
JOIN status_table s
ON l.substatus_id = s.substatus_id
GROUP BY status)
SELECT *, 
ROW_NUMBER() OVER( ORDER BY lead_count DESC) as rnk
FROM countstatus;

WITH countstatus AS 
(
    SELECT status, COUNT(lead_id) AS lead_count
    FROM lead_visit_table l
    JOIN status_table s ON l.substatus_id = s.substatus_id
    GROUP BY status
)

SELECT
    from_status,
    to_status,
    lead_count,
    (LEAD(lead_count) OVER (ORDER BY lead_count DESC) / lead_count) * 100 AS conversion_rate
FROM (
    SELECT
        status AS from_status,
        LEAD(status) OVER (ORDER BY lead_count DESC) AS to_status,
        lead_count
    FROM countstatus
) AS status_counts
WHERE to_status IS NOT NULL;


WITH countstatus AS
 (
     SELECT status, COUNT(DISTINCT lead_id) AS lead_count
     FROM lead_visit_table l
     JOIN status_table s ON l.substatus_id = s.substatus_id
     GROUP BY status
 )
 
 SELECT
     from_status,
     to_status,
     lead_count,
     CASE
         WHEN COALESCE(LEAD(lead_count) OVER (ORDER BY lead_count DESC), 1) = 0 THEN NULL
         ELSE (LEAD(lead_count) OVER (ORDER BY lead_count DESC) / COALESCE(lead_count, 1)) * 100
     END AS conversion_rate
 FROM (
     SELECT
         status AS from_status,
         LEAD(status) OVER (ORDER BY lead_count DESC) AS to_status,
         lead_count
     FROM countstatus
 ) AS status_counts
 WHERE to_status IS NOT NULL;


SELECT city, status, count(DISTINCT lead_id)
 FROM city_table c
join lead_visit_table l
on  c.city_id = l.city_id
join status_table s on l.substatus_id = s.substatus_id
GROUP BY city, status;


SELECT
    city,
    MAX(CASE WHEN status = 'pre verified' THEN count_distinct_lead_id ELSE 0 END) AS pre_verified,
    MAX(CASE WHEN status = 'Verifed' THEN count_distinct_lead_id ELSE 0 END) AS Verifed,
    MAX(CASE WHEN status = 'connected' THEN count_distinct_lead_id ELSE 0 END) AS connected,
    MAX(CASE WHEN status = 'Visited' THEN count_distinct_lead_id ELSE 0 END) AS Visited,
    MAX(CASE WHEN status = 'Agreement' THEN count_distinct_lead_id ELSE 0 END) AS Agreement,
    MAX(CASE WHEN status = 'onboarded' THEN count_distinct_lead_id ELSE 0 END) AS onboarded
FROM (
    SELECT
        c.city,
        s.status,
        count(DISTINCT l.lead_id) AS count_distinct_lead_id
    FROM
        city_table c
    JOIN
        lead_visit_table l ON c.city_id = l.city_id
    JOIN
        status_table s ON l.substatus_id = s.substatus_id
    GROUP BY
        c.city, s.status
) AS subquery
GROUP BY
    city
ORDER BY
    max(DISTINCT subquery.count_distinct_lead_id) DESC;
    
    
 SELECT
    city,
    MAX(CASE WHEN status = 'pre verified' THEN count_distinct_lead_id ELSE 0 END) AS pre_verified,
    MAX(CASE WHEN status = 'Verifed' THEN count_distinct_lead_id ELSE 0 END) AS Verifed,
    MAX(CASE WHEN status = 'connected' THEN count_distinct_lead_id ELSE 0 END) AS connected,
    MAX(CASE WHEN status = 'Visited' THEN count_distinct_lead_id ELSE 0 END) AS Visited,
    MAX(CASE WHEN status = 'Agreement' THEN count_distinct_lead_id ELSE 0 END) AS Agreement,
    MAX(CASE WHEN status = 'onboarded' THEN count_distinct_lead_id ELSE 0 END) AS onboarded,
    MAX(CASE WHEN status = 'onboarded' THEN count_distinct_lead_id ELSE 0 END) / MAX(CASE WHEN status = 'pre verified' THEN count_distinct_lead_id ELSE 1 END) * 100 AS pre_verified_to_Verifed_conversion_rate
FROM (
    SELECT
        c.city,
        s.status,
        count(DISTINCT l.lead_id) AS count_distinct_lead_id
    FROM
        city_table c
    JOIN
        lead_visit_table l ON c.city_id = l.city_id
    JOIN
        status_table s ON l.substatus_id = s.substatus_id
    GROUP BY
        c.city, s.status
) AS subquery
GROUP BY
    city
ORDER BY
    max(DISTINCT subquery.count_distinct_lead_id) DESC;
   
