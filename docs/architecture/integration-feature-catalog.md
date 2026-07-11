# Integration Feature Catalog

## Status

Approved

---

# Purpose

This document defines the initial catalog of Integration Features supported by the Integration Catalog Database.

Its objectives are to:

- establish a controlled feature vocabulary
- support future seed scripts
- improve consistency across integrations
- prevent duplicate feature definitions
- support reporting and search capabilities

This catalog complements:

- ADR-006 Integration Domain Model
- feature-framework.md
- feature-domain-model.md

---

# Feature Governance Rules

A feature must:

- represent a specialized functional characteristic
- provide business value
- be understandable by non-technical users
- be reusable across one or more integrations

A feature must not:

- represent a capability
- represent an endpoint
- represent an authentication method
- represent a technical protocol

---

# Approved Features

## DDP

### Name

DDP

### Description

Delivered Duty Paid shipping support.

The shipper pays duties and taxes before delivery.

### Applicable Families

- Carrier

### Example Integrations

- DHL
- UPS
- FedEx
- Colissimo

### Status

Approved

---

## Hazmat

### Name

Hazmat

### Description

Support for hazardous materials shipments.

### Applicable Families

- Carrier

### Example Integrations

- DHL
- UPS
- FedEx

### Status

Approved

---

## PUDO

### Name

PUDO

### Description

Pick-Up and Drop-Off point delivery support.

### Applicable Families

- Carrier

### Example Integrations

- Colissimo
- Mondial Relay
- DPD Pickup

### Status

Approved

---

## Insurance

### Name

Insurance

### Description

Additional shipment insurance services.

### Applicable Families

- Carrier

### Example Integrations

- DHL
- UPS
- FedEx

### Status

Approved

---

## Signature Required

### Name

Signature Required

### Description

Proof of delivery based on recipient signature.

### Applicable Families

- Carrier

### Example Integrations

- DHL
- UPS
- Chronopost

### Status

Approved

---

## Paperless Trade

### Name

Paperless Trade

### Description

Electronic customs and shipment documentation support.

### Applicable Families

- Carrier

### Example Integrations

- DHL Express

### Status

Approved

---

## FBA

### Name

FBA

### Description

Marketplace fulfillment managed by the marketplace.

### Applicable Families

- Marketplace

### Example Integrations

- Amazon

### Status

Approved

---

## FBM

### Name

FBM

### Description

Merchant-managed order fulfillment.

### Applicable Families

- Marketplace

### Example Integrations

- Amazon

### Status

Approved

---

## Prime

### Name

Prime

### Description

Support for Prime-related marketplace operations.

### Applicable Families

- Marketplace

### Example Integrations

- Amazon

### Status

Approved

---

## Marketplace Fulfillment

### Name

Marketplace Fulfillment

### Description

Fulfillment handled by the marketplace ecosystem.

### Applicable Families

- Marketplace

### Example Integrations

- Amazon
- Backmarket

### Status

Approved

---

## Multi-Location Inventory

### Name

Multi-Location Inventory

### Description

Inventory management across multiple storage locations.

### Applicable Families

- Marketplace

### Example Integrations

- Mirakl
- Amazon

### Status

Approved

---

## Markets

### Name

Markets

### Description

Support for multi-country commerce management.

### Applicable Families

- CMS

### Example Integrations

- Shopify

### Status

Approved

---

## Metafields

### Name

Metafields

### Description

Custom product and order attributes.

### Applicable Families

- CMS

### Example Integrations

- Shopify

### Status

Approved

---

## Subscriptions

### Name

Subscriptions

### Description

Recurring purchase management.

### Applicable Families

- CMS

### Example Integrations

- Shopify

### Status

Approved

---

## Multi-Store Support

### Name

Multi-Store Support

### Description

Support for managing multiple storefronts.

### Applicable Families

- CMS

### Example Integrations

- Magento
- Shopify

### Status

Approved

---

## Financial Posting

### Name

Financial Posting

### Description

Support for automatic accounting transactions.

### Applicable Families

- ERP

### Example Integrations

- SAP
- Dynamics

### Status

Approved

---

## Inventory Valuation

### Name

Inventory Valuation

### Description

Support for inventory value calculation processes.

### Applicable Families

- ERP

### Example Integrations

- SAP
- NetSuite

### Status

Approved

---

## 3D Secure

### Name

3D Secure

### Description

Enhanced payment authentication process.

### Applicable Families

- Payment Provider

### Example Integrations

- Stripe
- Adyen

### Status

Approved

---

## Tokenization

### Name

Tokenization

### Description

Replacement of payment information with secure tokens.

### Applicable Families

- Payment Provider

### Example Integrations

- Stripe
- Adyen
- PayPal

### Status

Approved

---

## Chargeback Management

### Name

Chargeback Management

### Description

Support for chargeback handling and dispute processes.

### Applicable Families

- Payment Provider

### Example Integrations

- Stripe
- Adyen

### Status

Approved

---

## Lead Scoring

### Name

Lead Scoring

### Description

Automated lead qualification support.

### Applicable Families

- CRM

### Example Integrations

- Salesforce
- HubSpot

### Status

Approved

---

## Campaign Attribution

### Name

Campaign Attribution

### Description

Marketing attribution support for customer acquisition tracking.

### Applicable Families

- CRM

### Example Integrations

- Salesforce
- HubSpot

### Status

Approved

---

# Initial Seed Scope

The initial seed script should include only approved features from this document.

Future feature additions must be documented here before being introduced into the database.

---

# Future Evolution

Potential future improvements:

- feature status
- feature lifecycle
- feature aliases
- feature compatibility matrix

None of these concepts are currently required.

The catalog intentionally remains simple.

---

# Outcome

This catalog becomes the official governance source for Integration Features.

All future feature seeds must originate from this document.

The repository now distinguishes clearly between:

# Capability

Major business function

# Integration Feature

Specialized functional characteristic
