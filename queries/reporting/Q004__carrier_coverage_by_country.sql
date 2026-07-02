SELECT
    i.name AS carrier_name,
    c.country_name
FROM integration i
JOIN integration_type it
    ON i.type_id = it.type_id
JOIN integration_country ic
    ON i.integration_id = ic.integration_id
JOIN country c
    ON ic.country_id = c.country_id
WHERE it.name = 'Carrier'
ORDER BY
    i.name,
    c.country_name;