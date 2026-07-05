CREATE TABLE integration_method (

    integration_method_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    name VARCHAR(100) NOT NULL UNIQUE,

    description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);