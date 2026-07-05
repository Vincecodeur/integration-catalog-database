CREATE TABLE integration_status_history (

    status_history_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    integration_id INTEGER NOT NULL,

    status_id INTEGER NOT NULL,

    effective_date DATE NOT NULL,

    end_date DATE,

    notes TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_ish_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_ish_status
        FOREIGN KEY (status_id)
        REFERENCES integration_status(status_id)

);
`