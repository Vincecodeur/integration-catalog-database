SELECT
    i.name AS integration_name,
    s.name AS current_status,
    ish.effective_date
FROM integration_status_history ish
JOIN integration i
    ON ish.integration_id = i.integration_id
JOIN integration_status s
    ON ish.status_id = s.status_id
WHERE ish.end_date IS NULL
ORDER BY i.name;