INSERT INTO integration_endpoint_environment
(
    endpoint_id,
    endpoint_environment_id,
    endpoint_url
)
VALUES

-- DHL Tracking API

(
    1,
    1,
    'https://sandbox-api.dhl.com/track/v1'
),

(
    1,
    3,
    'https://api.dhl.com/track/v1'
),

-- DHL Shipment API

(
    2,
    1,
    'https://sandbox-api.dhl.com/shipments/v1'
),

(
    2,
    3,
    'https://api.dhl.com/shipments/v1'
),

-- Shopify Admin GraphQL API

(
    3,
    3,
    'https://shopify.com/admin/api'
);