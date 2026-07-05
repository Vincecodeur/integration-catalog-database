CREATE TABLE endpoint_type (

    endpoint_type_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    name VARCHAR(100)
        NOT NULL
        UNIQUE,

    description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);