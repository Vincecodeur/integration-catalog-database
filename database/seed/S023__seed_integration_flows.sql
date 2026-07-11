INSERT INTO integration_flow (
    name,
    description
)
VALUES

(
    'Order Import Flow',
    'Flow used to import customer orders from a sales channel into an order management or downstream business system'
),

(
    'Order Update Flow',
    'Flow used to synchronize order status or order changes between systems'
),

(
    'Product Synchronization Flow',
    'Flow used to synchronize product information between product, commerce, ERP or marketplace systems'
),

(
    'Inventory Synchronization Flow',
    'Flow used to synchronize stock availability and inventory quantities between systems'
),

(
    'Shipment Creation Flow',
    'Flow used to create shipments with a carrier, TMS or logistics system'
),

(
    'Shipment Cancellation Flow',
    'Flow used to cancel an existing shipment with a carrier, TMS or logistics system'
),

(
    'Label Generation Flow',
    'Flow used to generate shipping labels through a carrier, TMS or logistics system'
),

(
    'Manifest Generation Flow',
    'Flow used to generate or transmit shipment manifests'
),

(
    'Tracking Flow',
    'Flow used to retrieve, receive or distribute shipment tracking information between systems'
),

(
    'Returns Management Flow',
    'Flow used to manage product returns and reverse logistics processes'
),

(
    'Payment Authorization Flow',
    'Flow used to authorize customer payments through a payment provider or financial system'
),

(
    'Payment Capture Flow',
    'Flow used to capture an authorized payment'
),

(
    'Refund Processing Flow',
    'Flow used to initiate or synchronize refunds between commerce, ERP and payment systems'
),

(
    'Customer Synchronization Flow',
    'Flow used to synchronize customer information between commerce, CRM, ERP or other business systems'
),

(
    'Lead Synchronization Flow',
    'Flow used to synchronize lead information between CRM, marketing or business systems'
);