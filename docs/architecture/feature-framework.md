# Integration Feature Framework

## Status

Approved

---

# Purpose

This document defines the concept of Integration Feature within the Integration Catalog Database.

The objective is to establish a consistent distinction between:

- Capability
- Integration Feature
- Technical Implementation

This framework complements:

- ADR-006 Integration Domain Model
- capability-framework.md

---

# Problem Statement

During the V2 phase, multiple concepts were identified that did not fit the definition of a Capability.

Examples:

Carrier:

- DDP
- Hazmat
- PUDO
- Insurance
- Signature Required

Marketplace:

- FBA
- FBM
- Prime

CMS:

- Markets
- Subscriptions
- Metafields

Payment:

- 3D Secure
- Tokenization
- Chargeback

These concepts are important but they do not describe primary business functions.

As a result, they cannot be modeled as Capabilities.

A separate classification system is required.

---

# Definition

An Integration Feature is a specialized functional characteristic supported by an integration.

Features describe:

```text
What specific behavior
or functionality
is available.
```

Features do not describe:

- a primary business function
- an endpoint
- an authentication mechanism
- a technical implementation

---

# Capability vs Feature

## Capability

Answers:

```text
What does the integration do?
```

Examples:

- Order Import
- Product Synchronization
- Inventory Synchronization
- Shipment Creation
- Tracking
- Payment Processing

Capabilities represent major business functions.

---

## Integration Feature

Answers:

```text
What specialized functionality
is supported?
```

Examples:

Carrier:

- DDP
- Hazmat
- PUDO

Marketplace:

- FBA
- FBM
- Prime

CMS:

- Markets
- Metafields

Payment:

- 3D Secure
- Tokenization

Features extend a capability.

---

# Conceptual Hierarchy

```text
Capability
    ↓
Integration Feature
    ↓
Technical Implementation
```

Example:

Capability

Tracking

Integration Feature

Real-Time Events

Technical Implementation

Tracking Webhook Endpoint

---

Capability

Shipment Creation

Integration Feature

DDP

Technical Implementation

Carrier Shipment API

---

Capability

Payment Processing

Integration Feature

3D Secure

Technical Implementation

Payment Provider API

````

---

# Integration Feature Rules

A feature must:

1. Represent a specialized functionality.
2. Add value to one or more capabilities.
3. Remain understandable from a business perspective.
4. Be independent from technical implementation details.

A feature must not:

1. Represent a primary capability.
2. Represent an endpoint.
3. Represent a protocol.
4. Represent a technology stack.

---

# Carrier Features

Examples:

- DDP
- Hazmat
- PUDO
- Insurance
- Signature Required
- Saturday Delivery
- Paperless Trade

Associated Capabilities:

- Shipment Creation
- Label Generation
- Returns Management

---

# Marketplace Features

Examples:

- FBA
- FBM
- Prime
- Multi-Location Inventory
- Marketplace Fulfillment

Associated Capabilities:

- Order Import
- Inventory Synchronization
- Returns Management

---

# CMS Features

Examples:

- Markets
- Metafields
- Subscriptions
- Multi-Store Support

Associated Capabilities:

- Product Synchronization
- Inventory Synchronization
- Customer Synchronization

---

# ERP Features

Examples:

- Financial Posting
- Inventory Valuation
- Procurement Workflows

Associated Capabilities:

- Financial Synchronization
- Inventory Synchronization

---

# Payment Provider Features

Examples:

- 3D Secure
- Tokenization
- Chargeback Management
- Fraud Screening

Associated Capabilities:

- Payment Authorization
- Refund Processing

---

# CRM Features

Examples:

- Lead Scoring
- Opportunity Synchronization
- Campaign Attribution

Associated Capabilities:

- Customer Synchronization
- Lead Synchronization

---

# Universal Characteristics

Unlike capabilities, features are not expected to be universal.

A feature may exist within only one integration family.

This does not invalidate the concept.

What must be universal is the feature framework itself.

---

# Relationship with ADR-006

ADR-006 requires core concepts to be reusable across multiple integration families.

Integration Feature satisfies this requirement because:

- Carrier integrations have features.
- Marketplace integrations have features.
- CMS integrations have features.
- ERP integrations have features.
- Payment integrations have features.

The framework is universal even when individual features are not.

---

# Future Data Model Considerations

The repository may later introduce:

```text
integration_feature
````

as a first-class entity.

Potential relationship:

Integration
↔
Integration Feature

This decision has not yet been approved.

Additional model analysis is required.

---

# Examples

## DHL

Capabilities

- Shipment Creation
- Tracking
- Returns Management

Features

- DDP
- Hazmat
- PUDO
- Insurance

---

## Shopify

Capabilities

- Product Synchronization
- Inventory Synchronization
- Order Import

Features

- Markets
- Metafields
- Subscriptions

---

## Amazon

Capabilities

- Order Import
- Returns Management
- Inventory Synchronization

Features

- FBA
- FBM
- Prime

---

## Stripe

Capabilities

- Payment Authorization
- Capture
- Refund Processing

Features

- 3D Secure
- Tokenization
- Chargeback Management

---

# Outcome

The repository now distinguishes clearly between:

Capability

```text
Primary business function
```

and

Integration Feature

```text
Specialized functional characteristic
```

This distinction prevents domain-specific functionality from being incorrectly modeled as a capability and strengthens the universal architecture defined by ADR-006.
