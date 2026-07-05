CREATE TABLE integration_method_mapping (

    integration_id INTEGER NOT NULL,

    integration_method_id INTEGER NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (
        integration_id,
        integration_method_id
    ),

    CONSTRAINT fk_imm_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_imm_method
        FOREIGN KEY (integration_method_id)
        REFERENCES integration_method(integration_method_id)

);