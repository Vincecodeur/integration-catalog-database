SELECT
    i.name AS integration_name,
    ie.endpoint_name,
    ee.name AS environment,
    iee.endpoint_url
FROM integration_endpoint_environment iee
JOIN integration_endpoint ie
    ON iee.endpoint_id = ie.endpoint_id
JOIN integration i
    ON ie.integration_id = i.integration_id
JOIN endpoint_environment ee
    ON iee.endpoint_environment_id = ee.endpoint_environment_id
ORDER BY
    i.name,
    ie.endpoint_name,
    ee.name;