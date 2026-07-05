SELECT
    i.name AS integration_name,
    ie.endpoint_name,
    et.name AS endpoint_type,
    am.name AS authentication_method,
    ie.endpoint_version,
    ie.endpoint_status
FROM integration_endpoint ie
JOIN integration i
    ON ie.integration_id = i.integration_id
JOIN endpoint_type et
    ON ie.endpoint_type_id = et.endpoint_type_id
LEFT JOIN authentication_method am
    ON ie.authentication_method_id = am.authentication_method_id
ORDER BY
    i.name,
    ie.endpoint_name;