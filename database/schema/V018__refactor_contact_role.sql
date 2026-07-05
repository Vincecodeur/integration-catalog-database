ALTER TABLE contact
ADD COLUMN contact_role_id INTEGER;

ALTER TABLE contact
ADD CONSTRAINT fk_contact_role
FOREIGN KEY (contact_role_id)
REFERENCES contact_role(contact_role_id);