# Integration Domain Map

## Status

Approved

---

# Purpose

This document defines the functional scope covered by the Integration Catalog Database.

Its objective is to provide a common understanding of:

- supported integration families
- universal concepts
- family-specific concepts
- model boundaries

This document complements ADR-006.

---

# Enterprise Integration Catalog

The repository models integrations across multiple business domains.

The objective is not to represent a specific category of integration.

The objective is to represent integration patterns that are reusable across multiple ecosystems.

---

# Supported Integration Families

Enterprise Integration Catalog

```text
Enterprise Integration Catalog

├── Marketplace
│
├── CMS
│
├── ERP
│
├── WMS
│
├── TMS
│
├── Carrier
│
├── Payment Provider
│
├── Tracking Provider
│
├── CRM
│
└── PIM
```

---

# Marketplace

## Description

Platforms allowing merchants to sell products through a shared ecosystem.

## Examples

- Amazon
- Mirakl
- Backmarket
- Cdiscount

## Typical Flows

- Order Import
- Order Status Update
- Inventory Export
- Tracking Update

---

# CMS

## Description

E-commerce platforms used to manage online stores.

## Examples

- Shopify
- Magento
- WooCommerce
- BigCommerce

## Typical Flows

- Product Synchronization
- Inventory Synchronization
- Order Import

---

# ERP

## Description

Enterprise resource planning systems.

## Examples

- SAP
- Microsoft Dynamics
- NetSuite
- Odoo

## Typical Flows

- Product Master Data
- Purchase Orders
- Financial Information

---

# WMS

## Description

Warehouse management systems.

## Examples

- Anchanto WMS
- Manhattan
- Körber

## Typical Flows

- Receiving
- Inventory Management
- Shipment Preparation

---

# TMS

## Description

Transport management systems.

## Examples

- Metapack
- ShipStation
- Shippingbo

## Typical Flows

- Carrier Selection
- Shipment Planning
- Manifest Generation

---

# Carrier

## Description

Delivery service providers.

## Examples

- DHL
- UPS
- Colissimo
- Chronopost

## Typical Flows

- Shipment Creation
- Label Generation
- Tracking

---

# Payment Provider

## Description

Payment processing systems.

## Examples

- Stripe
- Adyen
- PayPal

## Typical Flows

- Authorization
- Capture
- Refund

---

# Tracking Provider

## Description

Platforms specializing in shipment visibility.

## Examples

- Aftership
- Parcel Tracking
- Shipup

## Typical Flows

- Tracking Events
- Delivery Monitoring

---

# CRM

## Description

Customer relationship management platforms.

## Examples

- Salesforce
- HubSpot

## Typical Flows

- Customer Synchronization
- Lead Synchronization

---

# PIM

## Description

Product information management platforms.

## Examples

- Akeneo
- Pimcore

## Typical Flows

- Product Enrichment
- Product Distribution

---

# Universal Concepts

The following concepts apply across multiple integration families.

```text
Partner

Integration

Documentation

Contact

Country

Authentication

Endpoint

Status

Capability
```

These concepts form the core of the Integration Catalog Database.

---

# Family-Specific Concepts

Some concepts only apply to particular families.

Examples:

Carrier

- DDP
- Hazmat
- PUDO
- Manifest

Marketplace

- FBA
- FBM
- Prime

CMS

- Markets
- Metafields
- Subscriptions

ERP

- General Ledger
- Financial Posting

These concepts are not automatically promoted to first-class entities.

ADR-006 governance rules apply.

---

# Architectural Boundary

The repository models:

- integrations
- integration capabilities
- endpoints
- documentation
- governance

The repository does not attempt to model:

- complete carrier products
- complete ERP structures
- complete marketplace business models
- complete CMS feature sets

The objective remains integration architecture.

---

# Outcome

The repository officially supports a multi-domain enterprise integration model.

Future V3 developments must remain compatible with this map.
