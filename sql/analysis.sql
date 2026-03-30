-- Total Calls
SELECT COUNT(*) AS total_calls 
FROM call_center;

-- Average CSAT
SELECT AVG(csat_score) AS avg_csat 
FROM call_center;

-- Average Call Duration
SELECT AVG(call_duration) AS avg_call_duration 
FROM call_center;

-- CSAT by Issue Type
SELECT issue_type, AVG(csat_score) AS avg_csat
FROM call_center
GROUP BY issue_type
ORDER BY avg_csat ASC;

-- Sentiment Distribution
SELECT sentiment, COUNT(*) AS count
FROM call_center
GROUP BY sentiment;

-- Calls by Channel
SELECT channel, COUNT(*) AS total_calls
FROM call_center
GROUP BY channel;

-- Calls by State
SELECT state, COUNT(*) AS total_calls
FROM call_center
GROUP BY state;
