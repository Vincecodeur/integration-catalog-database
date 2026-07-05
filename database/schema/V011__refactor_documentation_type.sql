ALTER TABLE documentation
ADD COLUMN documentation_type_id INTEGER;

ALTER TABLE documentation
ADD CONSTRAINT fk_documentation_type
FOREIGN KEY (documentation_type_id)
REFERENCES documentation_type(documentation_type_id);