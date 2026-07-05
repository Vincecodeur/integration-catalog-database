CREATE TABLE integration_endpoint (

    endpoint_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    integration_id INTEGER NOT NULL,

    endpoint_type_id INTEGER NOT NULL,

    authentication_method_id INTEGER,

    endpoint_name VARCHAR(255)
        NOT NULL,

    endpoint_version VARCHAR(50),

    documentation_url VARCHAR(1000),

    rate_limit VARCHAR(255),

    endpoint_status VARCHAR(50),

    last_tested_date DATE,

    notes TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_endpoint_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_endpoint_type
        FOREIGN KEY (endpoint_type_id)
        REFERENCES endpoint_type(endpoint_type_id),

    CONSTRAINT fk_endpoint_auth_method
        FOREIGN KEY (authentication_method_id)
        REFERENCES authentication_method(authentication_method_id)

);