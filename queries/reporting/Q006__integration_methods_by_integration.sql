SELECT
    i.name AS integration_name,
    im.name AS integration_method
FROM integration i
JOIN integration_method_mapping imm
    ON i.integration_id = imm.integration_id
JOIN integration_method im
    ON imm.integration_method_id = im.integration_method_id
ORDER BY
    i.name,
    im.name;