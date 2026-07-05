INSERT INTO endpoint_type
(
    name,
    description
)
VALUES

(
    'Authentication',
    'Endpoint used for authentication and token generation'
),

(
    'Shipment Creation',
    'Endpoint used to create shipments'
),

(
    'Tracking',
    'Endpoint used to retrieve tracking information'
),

(
    'Label Generation',
    'Endpoint used to generate shipping labels'
),

(
    'Manifest',
    'Endpoint used to create or retrieve manifests'
),

(
    'Pickup',
    'Endpoint used to schedule pickups'
),

(
    'Relay Point',
    'Endpoint used to retrieve relay point information'
),

(
    'Rate Quote',
    'Endpoint used to retrieve shipping rates'
),

(
    'Webhook',
    'Endpoint used to receive asynchronous events'
);