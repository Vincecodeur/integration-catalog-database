# Domain Model

## Purpose

The purpose of this database is to manage a catalog of external integrations used by software platforms.

Examples include:

- Shipping carriers
- Ecommerce marketplaces
- CMS platforms
- ERP systems
- Transportation Management Systems

---

# Core Entity

## Integration

The central entity of the model.

Examples:

- Colissimo
- DHL
- Shopify

An Integration represents a connection between a business platform and an external system.

---

# Main Business Entities

## Partner

Represents the company owning or operating the integration.

Examples:

- La Poste
- DHL Group
- Shopify Inc.

---

## Integration Type

Classifies integrations.

Examples:

- Carrier
- Marketplace
- CMS
- ERP
- TMS

---

## Capability

Represents a business or technical feature supported by an integration.

Examples:

- Tracking
- Shipment Creation
- Label Generation
- Manifest
- DDP

---

## Country

Represents geographical availability.

Examples:

- France
- Germany
- United Kingdom

---

## Platform Product

Represents a product consuming integrations.

Examples:

- OMS
- WMS
- Tracking Platform

---

# Relationships

Partner → Integration (1:N)

Integration Type → Integration (1:N)

Integration ↔ Capability (N:N)

Integration ↔ Country (N:N)

Integration ↔ Platform Product (N:N)

---

# Design Principles

- Normalized relational model
- Surrogate keys
- Strong referential integrity
- Explicit junction tables
- PostgreSQL compatible
