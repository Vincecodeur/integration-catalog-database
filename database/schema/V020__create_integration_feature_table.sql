CREATE TABLE integration_feature (

    feature_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    name VARCHAR(255)
        NOT NULL
        UNIQUE,

    description TEXT,

    is_active BOOLEAN
        DEFAULT TRUE,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP

);