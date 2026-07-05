CREATE TABLE integration_endpoint_environment (

    endpoint_environment_mapping_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    endpoint_id INTEGER NOT NULL,

    endpoint_environment_id INTEGER NOT NULL,

    endpoint_url VARCHAR(1000)
        NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT uq_endpoint_environment
        UNIQUE (
            endpoint_id,
            endpoint_environment_id
        ),

    CONSTRAINT fk_iee_endpoint
        FOREIGN KEY (endpoint_id)
        REFERENCES integration_endpoint(endpoint_id),

    CONSTRAINT fk_iee_environment
        FOREIGN KEY (endpoint_environment_id)
        REFERENCES endpoint_environment(endpoint_environment_id)

);