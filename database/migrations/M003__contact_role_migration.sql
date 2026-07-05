UPDATE contact
SET contact_role_id =
(
    SELECT contact_role_id
    FROM contact_role
    WHERE name = 'Technical Account Manager'
)
WHERE role = 'Technical Account Manager';

UPDATE contact
SET contact_role_id =
(
    SELECT contact_role_id
    FROM contact_role
    WHERE name = 'Business Contact'
)
WHERE role = 'Business Contact';

UPDATE contact
SET contact_role_id =
(
    SELECT contact_role_id
    FROM contact_role
    WHERE name = 'Partner Manager'
)
WHERE role = 'Partner Manager';