# Feature Domain Model

## Status

Approved

---

# Purpose

This document describes how Integration Features fit into the Integration Catalog Database.

Its objective is to define:

- the role of Features
- the relationship between Features and Capabilities
- the position of Features in the overall domain model
- future database evolution

This document complements:

- ADR-006 Integration Domain Model
- capability-framework.md
- feature-framework.md

---

# Context

The V2 model introduced the concept of Capability.

Examples:

- Order Import
- Product Synchronization
- Inventory Synchronization
- Shipment Creation
- Tracking
- Payment Processing

Capabilities represent major business functions.

During V3 analysis, additional concepts were identified:

Carrier:

- DDP
- Hazmat
- PUDO
- Insurance

Marketplace:

- FBA
- FBM
- Prime

CMS:

- Markets
- Metafields
- Subscriptions

Payment:

- 3D Secure
- Tokenization
- Chargeback Management

These concepts are important but do not qualify as Capabilities.

A dedicated model is required.

---

# Domain Concepts

## Capability

A Capability represents a major business function.

It answers:

```text
What does the integration do?
```

Examples:

- Order Import
- Product Synchronization
- Tracking
- Shipment Creation

Capabilities are business-oriented and relatively stable.

---

## Integration Feature

An Integration Feature represents a specialized functional characteristic.

It answers:

```text
Which specialized functionality
is supported?
```

Examples:

Carrier:

- DDP
- Hazmat
- PUDO

Marketplace:

- FBA
- Prime

Payment:

- 3D Secure
- Tokenization

CMS:

- Markets
- Metafields

Features extend business capabilities.

---

# Feature Position in the Model

## High-Level View

```text
Partner
    ↓

Integration
    ↓

Capability
    ↓

Feature
    ↓

Technical Implementation
```

---

## Example

Carrier

```text
Capability

Shipment Creation
```

```text
Features

DDP

Hazmat

Insurance
```

```text
Implementation

Shipment API
```

---

Marketplace

```text
Capability

Order Import
```

```text
Features

FBA

Prime
```

```text
Implementation

Marketplace Order API
```

---

Payment

```text
Capability

Payment Processing
```

```text
Features

3D Secure

Tokenization
```

```text
Implementation

Payment Provider API
```

---

# Relationship with Integration

An integration may support multiple features.

A feature may be supported by multiple integrations.

Therefore:

```text
Integration
    ↔
Integration Feature
```

is a many-to-many relationship.

---

# Relationship with Capability

The repository does not currently require a direct relationship between:

```text
Capability
```

and

```text
Integration Feature
```

because:

- a feature may enhance multiple capabilities
- capability ownership can vary between integration families

Examples:

DDP may affect:

- Shipment Creation
- Returns Management

Prime may affect:

- Order Import
- Fulfillment Flows

Future analysis may introduce:

```text
capability_feature_mapping
```

if needed.

No decision has been made yet.

---

# Universal Feature Framework

Features are not expected to be universal.

Example:

```text
DDP
```

exists only in logistics.

This is acceptable.

The framework must be universal.

The values do not need to be.

---

# Integration Family Examples

## Carrier

Capabilities

- Shipment Creation
- Tracking
- Returns

Features

- DDP
- Hazmat
- PUDO
- Insurance
- Signature Required

---

## Marketplace

Capabilities

- Order Import
- Inventory Synchronization
- Returns

Features

- FBA
- FBM
- Prime

---

## CMS

Capabilities

- Product Synchronization
- Inventory Synchronization

Features

- Markets
- Metafields
- Subscriptions

---

## ERP

Capabilities

- Financial Synchronization
- Product Synchronization

Features

- Financial Posting
- Inventory Valuation

---

## Payment Provider

Capabilities

- Payment Authorization
- Refund Processing

Features

- 3D Secure
- Tokenization
- Chargeback Management

---

# Future Database Evolution

Potential Entity

```sql
integration_feature
```

Potential Structure

```text
feature_id
name
description
created_at
updated_at
```

Potential Relationship

```text
integration_feature_mapping
```

```text
integration
    ↔
integration_feature
```

This evolution is considered compatible with ADR-006.

---

# Architectural Benefits

Introducing Integration Features provides:

- stronger business modeling
- cleaner capability definitions
- better support for multiple integration families
- improved searchability
- improved reporting

Examples:

```sql
Find all integrations supporting DDP

Find all integrations supporting Prime

Find all integrations supporting 3D Secure
```

---

# Future Considerations

The following topics remain open:

- capability_feature_mapping
- feature categories
- feature hierarchies
- feature versioning

These topics are outside the scope of the current V3 phase.

---

# Outcome

The repository now distinguishes three levels of abstraction:

Business Function

```text
Capability
```

Specialized Functionality

```text
Integration Feature
```

Technical Implementation

```text
Endpoint
```

This distinction improves model clarity and supports future growth of the Enterprise Integration Catalog.
