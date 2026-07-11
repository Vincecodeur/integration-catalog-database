CREATE TABLE integration_feature_mapping (

    integration_id INTEGER NOT NULL,

    feature_id INTEGER NOT NULL,

    created_at TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (
        integration_id,
        feature_id
    ),

    CONSTRAINT fk_ifm_integration
        FOREIGN KEY (integration_id)
        REFERENCES integration(integration_id),

    CONSTRAINT fk_ifm_feature
        FOREIGN KEY (feature_id)
        REFERENCES integration_feature(feature_id)

);