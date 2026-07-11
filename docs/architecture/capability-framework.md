# Capability Framework

## Status

Draft

---

# Purpose

This document defines what a capability is within the Integration Catalog Database.

The goal is to establish a consistent and reusable classification framework across all supported integration families.

This framework acts as a guardrail for future model evolution and supports ADR-006 Integration Domain Model.

---

# Problem Statement

During the V2 phase, the repository introduced a capability concept.

Examples included:

- Tracking
- Shipment Creation
- Label Generation
- Manifest

While these are valid capabilities, they are primarily associated with carrier integrations.

As the repository evolves into an Enterprise Integration Catalog, a clear distinction is required between:

- Business capabilities
- Family-specific features
- Technical implementation details

Without a common framework, capabilities may be defined inconsistently across integration families.

---

# Definition

A capability is a major business function that an integration can perform.

A capability represents an outcome delivered by the integration.

Capabilities describe WHAT the integration does.

Capabilities do not describe:

- how it is implemented
- which endpoint is used
- which option is enabled
- which provider offers it

---

# Capability Rules

A capability must:

1. Represent a business function.
2. Be understandable without technical knowledge.
3. Apply to one or more integration families.
4. Remain stable over time.

A capability must not:

1. Represent a configuration parameter.
2. Represent a transport option.
3. Represent a commercial product.
4. Represent a provider-specific feature.

---

# Capability Hierarchy

Capability
↓
Feature
↓
Technical Implementation

Example:

Tracking
↓
Real-Time Tracking Events
↓
Webhook Tracking API

The capability remains independent from implementation details.

---

# Universal Capability Categories

## Order Management

Business functions related to order lifecycle management.

Examples:

- Order Import
- Order Update
- Order Cancellation
- Order Status Synchronization

Supported Families:

- Marketplace
- CMS
- ERP

---

## Product Management

Business functions related to product information.

Examples:

- Product Import
- Product Export
- Product Synchronization

Supported Families:

- CMS
- ERP
- PIM
- Marketplace

---

## Inventory Management

Business functions related to stock information.

Examples:

- Inventory Sync
- Stock Availability Update
- Warehouse Stock Query

Supported Families:

- CMS
- ERP
- WMS
- Marketplace

---

## Shipment Management

Business functions related to shipping operations.

Examples:

- Shipment Creation
- Label Generation
- Manifest Generation
- Shipment Cancellation

Supported Families:

- Carrier
- TMS
- WMS

---

## Tracking Management

Business functions related to shipment monitoring.

Examples:

- Tracking Events
- Delivery Status Update
- Tracking Synchronization

Supported Families:

- Carrier
- Tracking Provider
- Marketplace
- CMS

---

## Returns Management

Business functions related to reverse logistics.

Examples:

- Return Creation
- Return Status Update
- Return Label Generation

Supported Families:

- Marketplace
- Carrier
- CMS

---

## Financial Management

Business functions related to financial information.

Examples:

- Payment Authorization
- Capture
- Refund
- Settlement

Supported Families:

- ERP
- Payment Provider

---

## Customer Management

Business functions related to customer data.

Examples:

- Customer Synchronization
- Customer Import
- Lead Synchronization

Supported Families:

- CRM
- CMS
- ERP

---

# What Is NOT a Capability

The following concepts are not considered capabilities.

---

## Carrier Examples

Not Capabilities:

- DDP
- Hazmat
- PUDO
- Insurance
- Signature Required

Reason:

These concepts modify how a shipment is processed.

They are not business functions.

---

## Marketplace Examples

Not Capabilities:

- FBA
- FBM
- Prime

Reason:

These are operational models or programs.

They are not business functions.

---

## CMS Examples

Not Capabilities:

- Markets
- Metafields
- Subscriptions

Reason:

These are platform-specific features.

They are not major integration functions.

---

# Preliminary Classification

The project currently classifies the following items as capabilities.

## Approved

- Order Import
- Product Synchronization
- Inventory Synchronization
- Shipment Creation
- Label Generation
- Manifest Generation
- Tracking
- Returns Management
- Payment Processing
- Customer Synchronization

---

## Under Review

The following concepts require additional analysis:

- DDP
- Hazmat
- PUDO
- FBA
- Prime
- Markets
- Metafields

These concepts are not currently considered capabilities.

Their future classification remains open.

---

# Relationship with ADR-006

ADR-006 defines universal concepts.

This framework defines one of those concepts:

Capability.

A capability must remain:

- reusable
- business-oriented
- independent of a specific integration family

Future capability additions must comply with ADR-006.

---

# Future Evolution

The repository may later introduce an additional concept.

Example names:

- Service Option
- Feature
- Integration Feature

No decision has been made yet.

This topic will be addressed during a later V3 phase after additional model analysis.

---

# Outcome

Capabilities become a stable business-oriented classification system shared across:

- Marketplace
- CMS
- ERP
- WMS
- TMS
- Carrier
- Tracking Provider
- Payment Provider
- CRM
- PIM

This framework prevents carrier-specific concepts from being incorrectly promoted to universal capabilities.
