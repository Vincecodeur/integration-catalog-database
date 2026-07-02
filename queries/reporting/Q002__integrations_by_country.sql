SELECT
    c.country_name,
    COUNT(*) AS number_of_integrations
FROM country c
JOIN integration_country ic
    ON c.country_id = ic.country_id
GROUP BY c.country_name
ORDER BY number_of_integrations DESC;