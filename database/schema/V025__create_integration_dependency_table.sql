CREATE TABLE integration_dependency (

    dependency_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    source_integration_id INTEGER
        NOT NULL,

    target_integration_id INTEGER
        NOT NULL,

    description TEXT,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_id_source
        FOREIGN KEY (source_integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_id_target
        FOREIGN KEY (target_integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT chk_dependency_self_reference
        CHECK (
            source_integration_id <> target_integration_id
        ),

    CONSTRAINT uq_integration_dependency
        UNIQUE (
            source_integration_id,
            target_integration_id
        )
);