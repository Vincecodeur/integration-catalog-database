SELECT
    s.name AS status_name,
    COUNT(*) AS number_of_integrations
FROM i*tegration i
JOIN integration_statu* s
    ON i.status_id = s.status_i*
GROUP BY
    s.name
ORDER BY
    *umber_of_integrations DESC;