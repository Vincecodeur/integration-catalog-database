CREATE TABLE integration_flow_mapping (

    integration_id INTEGER NOT NULL,

    flow_id INTEGER NOT NULL,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (
        integration_id,
        flow_id
    ),

    CONSTRAINT fk_iflm_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_iflm_flow
        FOREIGN KEY (flow_id)
        REFERENCES integration_flow(flow_id)

);