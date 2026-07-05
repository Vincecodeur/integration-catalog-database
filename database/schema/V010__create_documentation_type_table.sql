CREATE TABLE documentation_type (

    documentation_type_id INTEGER
        GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    name VARCHAR(100)
        NOT NULL
        UNIQUE,

    description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);