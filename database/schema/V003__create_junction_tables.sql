CREATE TABLE IF NOT EXISTS integration_capability (
    integration_id INTEGER NOT NULL,
    capability_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (integration_id, capability_id),

    CONSTRAINT fk_integration_capability_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_integration_capability_capability
        FOREIGN KEY (capability_id)
        REFERENCES capability(capability_id)
);

CREATE TABLE IF NOT EXISTS integration_country (
    integration_id INTEGER NOT NULL,
    country_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (integration_id, country_id),

    CONSTRAINT fk_integration_country_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_integration_country_country
        FOREIGN KEY (country_id)
        REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS integration_product (
    integration_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (integration_id, product_id),

    CONSTRAINT fk_integration_product_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_integration_product_product
        FOREIGN KEY (product_id)
        REFERENCES anchanto_product(product_id)
);