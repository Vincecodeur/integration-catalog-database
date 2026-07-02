CREATE TABLE IF NOT EXISTS partner (
    partner_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    website_url VARCHAR(500),
    country_origin VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS integration (
    integration_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    type_id INTEGER NOT NULL,
    partner_id INTEGER NOT NULL,

    name VARCHAR(255) NOT NULL,
    short_description VARCHAR(500),
    long_description TEXT,

    status VARCHAR(50) NOT NULL,

    website_url VARCHAR(500),
    logo_url VARCHAR(500),

    api_base_url VARCHAR(500),
    api_version VARCHAR(50),

    sandbox_available BOOLEAN DEFAULT FALSE,
    webhook_available BOOLEAN DEFAULT FALSE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_integration_type
        FOREIGN KEY (type_id)
        REFERENCES integration_type(type_id),

    CONSTRAINT fk_integration_partner
        FOREIGN KEY (partner_id)
        REFERENCES partner(partner_id)
);