SELECT AVG(duration) AS average_assistance_request_duration
FROM (
  SELECT(assistance_requests.completed_at - assistance_requests.started_at) AS duration
  FROM assistance_requests
) as duration_table