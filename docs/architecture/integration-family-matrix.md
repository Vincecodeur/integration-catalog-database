# Integration Family Matrix

## Status

Approved

---

# Purpose

This document maps business capabilities across all supported integration families.

Its objective is to:

- identify universal capabilities
- identify family-specific capabilities
- support ADR-006 decisions
- support future model evolution

This matrix is a validation tool.

Any new capability proposed for the Integration Catalog Database should be evaluated against this document.

---

# Supported Integration Families

| Family            |
| ----------------- |
| Marketplace       |
| CMS               |
| ERP               |
| WMS               |
| TMS               |
| Carrier           |
| Payment Provider  |
| Tracking Provider |
| CRM               |
| PIM               |

---

# Capability Matrix

| Capability                | Marketplace | CMS | ERP | WMS | TMS | Carrier | Payment | Tracking | CRM | PIM |
| ------------------------- | ----------- | --- | --- | --- | --- | ------- | ------- | -------- | --- | --- |
| Order Import              | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ❌  | ❌  |
| Order Update              | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ❌  | ❌  |
| Product Import            | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ❌  | ✅  |
| Product Export            | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ❌  | ✅  |
| Product Synchronization   | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ❌  | ✅  |
| Inventory Synchronization | ✅          | ✅  | ✅  | ✅  | ❌  | ❌      | ❌      | ❌       | ❌  | ✅  |
| Shipment Creation         | ❌          | ❌  | ❌  | ✅  | ✅  | ✅      | ❌      | ❌       | ❌  | ❌  |
| Shipment Cancellation     | ❌          | ❌  | ❌  | ✅  | ✅  | ✅      | ❌      | ❌       | ❌  | ❌  |
| Label Generation          | ❌          | ❌  | ❌  | ✅  | ✅  | ✅      | ❌      | ❌       | ❌  | ❌  |
| Manifest Generation       | ❌          | ❌  | ❌  | ✅  | ✅  | ✅      | ❌      | ❌       | ❌  | ❌  |
| Tracking                  | ✅          | ✅  | ❌  | ❌  | ✅  | ✅      | ❌      | ✅       | ❌  | ❌  |
| Returns Management        | ✅          | ✅  | ✅  | ✅  | ✅  | ✅      | ❌      | ❌       | ❌  | ❌  |
| Payment Authorization     | ❌          | ✅  | ✅  | ❌  | ❌  | ❌      | ✅      | ❌       | ❌  | ❌  |
| Payment Capture           | ❌          | ✅  | ✅  | ❌  | ❌  | ❌      | ✅      | ❌       | ❌  | ❌  |
| Refund Processing         | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ✅      | ❌       | ❌  | ❌  |
| Customer Synchronization  | ✅          | ✅  | ✅  | ❌  | ❌  | ❌      | ❌      | ❌       | ✅  | ❌  |
| Lead Synchronization      | ❌          | ❌  | ❌  | ❌  | ❌  | ❌      | ❌      | ❌       | ✅  | ❌  |

---

# Universal Capability Candidates

The following capabilities appear across multiple integration families and qualify as strong core-model candidates.

## Tier 1

- Order Import
- Order Update
- Product Synchronization
- Inventory Synchronization
- Tracking
- Returns Management
- Customer Synchronization

These capabilities support multiple families and align with ADR-006.

---

## Tier 2

- Shipment Creation
- Shipment Cancellation
- Label Generation
- Manifest Generation

These capabilities are reusable but remain logistics-oriented.

They are still considered valid capabilities.

---

## Tier 3

- Payment Authorization
- Capture
- Refund

These capabilities are centered around financial integrations.

Further analysis may be required.

---

# Non-Capabilities

The following concepts are NOT considered capabilities.

---

## Carrier

- DDP
- Hazmat
- PUDO
- Insurance
- Signature Required

---

## Marketplace

- FBA
- FBM
- Prime

---

## CMS

- Markets
- Metafields
- Subscriptions

---

## ERP

- Financial Posting Rules
- GL Mapping

---

These concepts describe:

- features
- options
- configurations
- programs

They do not represent major business functions.

---

# Architectural Implications

The existence of multiple families confirms that:

Capability and Feature are different concepts.

Examples:

Capability

```text
Shipment Creation
```

Feature

```text
DDP
```

Capability

```text
Payment Processing
```

Feature

```text
3D Secure
```

Capability

```text
Product Synchronization
```

Feature

```text
Metafields
```

---

# Future Evolution

The repository may later introduce:

```text
Feature

or

Service Option
```

as a separate concept.

No decision is made yet.

Further analysis is required.

---

# Outcome

The capability model is validated.

The repository can continue using:

Capability

as a universal business concept across all supported integration families.

ADR-006 remains the governing rule for future additions.
