SELECT
    p.company_name,
    c.first_name,
    c.last_name,
    c.role,
    c.email
FROM partner p
JOIN contact c
    ON p.partner_id = c.partner_id
ORDER BY
    p.company_name,
    c.last_name;