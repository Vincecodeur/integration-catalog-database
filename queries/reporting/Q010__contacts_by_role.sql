SELECT
    cr.name AS contact_role,
    COUNT(*) AS number_of_contacts
FROM contact c
JOIN contact_role cr
    ON c.contact_role_id = cr.contact_role_id
GROUP BY
    cr.name
ORDER BY
    number_of_contacts DESC;