# Integration Dependency Catalog

## Status

Draft

---

# Purpose

This document defines the initial dependency patterns supported by the Integration Catalog Database.

Its objectives are:

- establish common dependency examples
- support future dependency modeling
- improve architecture visibility
- support impact analysis
- avoid inconsistent dependency definitions

This catalog complements:

- dependency-framework.md
- dependency-domain-model.md

---

# Dependency Governance Rules

A dependency must represent:

- a business reliance
- an operational reliance
- an architectural reliance

A dependency must not represent:

- a capability
- a feature
- an endpoint
- an API method

---

# Reference Dependency Patterns

## Commerce Fulfillment Chain

### Description

Common e-commerce execution chain.

### Pattern

```text
Marketplace
    ↓
OMS
    ↓
WMS
    ↓
Carrier
```

### Example

```text
Amazon
    ↓
Anchanto OMS
    ↓
Anchanto WMS
    ↓
DHL
```

---

## Shopify Commerce Chain

### Description

Typical Shopify fulfillment architecture.

### Pattern

```text
Shopify
    ↓
OMS
    ↓
WMS
    ↓
Carrier
```

### Example

```text
Shopify
    ↓
Anchanto OMS
    ↓
Anchanto WMS
    ↓
Colissimo
```

---

## Tracking Visibility Chain

### Description

Tracking data propagation.

### Pattern

```text
Carrier
    ↓
Tracking Provider
    ↓
Marketplace
```

### Example

```text
DHL
    ↓
AfterShip
    ↓
Amazon
```

---

## Direct Tracking Chain

### Description

Tracking data sent directly.

### Pattern

```text
Carrier
    ↓
Marketplace
```

### Example

```text
Colissimo
    ↓
Mirakl Marketplace
```

---

## Payment Processing Chain

### Description

Payment lifecycle execution.

### Pattern

```text
Marketplace
    ↓
Payment Provider
    ↓
ERP
```

### Example

```text
Shopify
    ↓
Stripe
    ↓
NetSuite
```

---

## Customer Synchronization Chain

### Description

Customer data propagation.

### Pattern

```text
CMS
    ↓
CRM
```

### Example

```text
Shopify
    ↓
Salesforce
```

---

## Product Distribution Chain

### Description

Product information publication.

### Pattern

```text
PIM
    ↓
OMS
    ↓
Marketplace
```

### Example

```text
Akeneo
    ↓
Anchanto OMS
    ↓
Amazon
```

---

## Inventory Synchronization Chain

### Description

Inventory publication process.

### Pattern

```text
WMS
    ↓
OMS
    ↓
Marketplace
```

### Example

```text
Anchanto WMS
    ↓
Anchanto OMS
    ↓
Backmarket
```

---

# Impact Analysis Examples

## Carrier Change

If DHL changes:

Potential Impact

```text
Shipment Creation Flow

Tracking Flow

Returns Flow
```

---

## Marketplace Change

If Shopify changes:

Potential Impact

```text
Order Import Flow

Inventory Synchronization Flow

Customer Synchronization Flow
```

---

## Payment Provider Change

If Stripe changes:

Potential Impact

```text
Payment Authorization

Capture

Refund Processing
```

---

# Architectural Value

Dependency Mapping enables:

- upstream analysis
- downstream analysis
- change impact analysis
- outage impact analysis
- architecture documentation

---

# Initial Scope

The V3 implementation focuses only on:

```text
Integration
    ↓
Dependency
    ↓
Integration
```

No additional dependency classifications are required.

---

# Future Evolution

Potential future enhancements:

- dependency criticality
- dependency ownership
- dependency risk level

These concepts are intentionally postponed.

---

# Outcome

Dependencies become the final architectural layer of the Integration Catalog Database.

The repository can now describe:

Capability

```text
What can be done?
```

Feature

```text
What specialized functionality exists?
```

Flow

```text
How information moves?
```

Dependency

```text
What depends on what?
```
