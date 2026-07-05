UPDATE documentation
SET documentation_type_id =
(
    SELECT documentation_type_id
    FROM documentation_type
    WHERE name = 'API Documentation'
)
WHERE document_type = 'API Guide';

UPDATE documentation
SET documentation_type_id =
(
    SELECT documentation_type_id
    FROM documentation_type
    WHERE name = 'Business Guide'
)
WHERE document_type = 'Business Guide';