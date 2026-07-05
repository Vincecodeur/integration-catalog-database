ALTER TABLE integration
ADD COLUMN status_id INTEGER;

ALTER TABLE integration
ADD CONSTRAINT fk_integration_status
FOREIGN KEY (status_id)
REFERENCES integration_status(status_id);