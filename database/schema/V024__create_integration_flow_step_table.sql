CREATE TABLE integration_flow_step (

    flow_step_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    flow_id INTEGER
        NOT NULL,

    step_number INTEGER
        NOT NULL,

    integration_id INTEGER
        NOT NULL,

    description TEXT,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_ifs_flow
        FOREIGN KEY (flow_id)
        REFERENCES integration_flow(flow_id),

    CONSTRAINT fk_ifs_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT uq_ifs_flow_step
        UNIQUE (
            flow_id,
            step_number
        )
);
``