SELECT
    p.name AS product_name,
    COUNT(*) AS number_of_integrations
FROM anchanto_product p
JOIN integration_product ip
    ON p.product_id = ip.product_id
GROUP BY p.name
ORDER BY number_of_integrations DESC;