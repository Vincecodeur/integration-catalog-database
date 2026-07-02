SELECT
    i.name AS integration_name,
    c.name AS capability_name
FROM integration i
JOIN integration_capability ic
    ON i.integration_id = ic.integration_id
JOIN capability c
    ON ic.capability_id = c.capability_id
ORDER BY
    i.name,
    c.name;