CREATE TABLE integration_status_history (

    integration_status_history_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    integration_id INTEGER NOT NULL,

    integration_status_id INTEGER NOT NULL,

    status_change_date TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    notes TEXT,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_ish_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_ish_status
        FOREIGN KEY (integration_status_id)
        REFERENCES integration_status(integration_status_id)

);