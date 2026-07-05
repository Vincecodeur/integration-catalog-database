CREATE TABLE documentation (

    documentation_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    integration_id INTEGER NOT NULL,

    title VARCHAR(255) NOT NULL,

    document_type VARCHAR(100) NOT NULL,

    document_url VARCHAR(1000),

    version VARCHAR(50),

    publication_date DATE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_documentation_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id)

);