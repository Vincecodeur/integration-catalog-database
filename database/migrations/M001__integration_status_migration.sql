
UPDATE integration
SET status_id =
(
    SELECT status_id
    FROM integration_status
    WHERE name = 'Available'
)
WHERE status = 'Active';
